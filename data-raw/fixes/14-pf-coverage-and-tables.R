# Fix 14: 990-PF coverage and table structure, from the PF checks re-run on the
# merged mapping (evidence/pf, TY2023; 2023v5.0 XSDs). Evidence and decisions:
# data-raw/proposals/pf-unmapped-cardinality.csv.
#   Rscript data-raw/fixes/14-pf-coverage-and-tables.R

source("data-raw/fixes/_helpers.R")
p <- fread("data-raw/proposals/pf-unmapped-cardinality.csv", colClasses = "character")

form_of <- function(x) fcase(grepl("^/Return/ReturnHeader/", x), "F990",
                             grepl("^/Return/ReturnData/IRS990ScheduleB/", x), "SCHED-B",
                             default = "F990PF")
new_rows <- function(s, xps, vars, like_vars, lines = "") {
  rows <- rbindlist(lapply(seq_along(xps), function(i) {
    lk <- s$xpaths[variable_name == like_vars[i]][1]
    if (!nrow(lk)) lk <- s$xpaths[form == form_of(xps[i])][1]
    r <- copy(lk)
    for (cl in c("location_code_xsd", "data_type_xsd", "required", "versions", "latest_version", "duplicated",
                 "current_version", "production_rule", "validated")) set(r, j = cl, value = "")
    r[, `:=`(xpath = xps[i], variable_name = vars[i], form = form_of(xps[i]),
             form_line_number = if (length(lines) >= i && nzchar(lines[i])) lines[i] else form_line_number)]
    r
  }))
  rows[, v1_order := as.character(max(as.integer(s$xpaths$v1_order)) + seq_len(.N))]
  s$xpaths <- rbind(s$xpaths, rows)
  s
}

# ---- 1. observed PF (and PF Schedule B) xpaths added to existing variables ----------------
fix_step(function(s) {
  a <- p[check == "UNMAPPED" & decision == "add_to_variable" & target_variable %in% s$variables$variable_name]
  stopifnot(!any(a$key %in% s$xpaths$xpath), all(a$target_variable %in% s$variables$variable_name))
  new_rows(s, a$key, a$target_variable, a$target_variable)
}, reason = "Add observed 990-PF xpaths that are renamed or re-grouped elements of existing variables: 2023 qualifying distributions (PFQualifyingDistributionsGrp), FASB 117 and net-asset lines of the balance sheet, Part V credits, the Part XV-A Dtl/Grp elements, and the current Schedule B contributor name and address elements.",
   evidence = "UNMAPPED (evidence/pf); data-raw/proposals/pf-unmapped-cardinality.csv", type = "add", affects = TRUE)

# ---- 2. new parts, tables and variables ------------------------------------------------------
fix_step(function(s) {
  n <- p[check == "UNMAPPED" & decision == "new_variable"]
  for (pid in c("SB-P00", "SB-P02", "SB-P03")) if (!pid %in% s$parts$part_id)
    s$parts <- rbind(s$parts, data.table(part_id = pid, form_id = "SCHED-B", part = substr(pid, 5, 6), title = "",
                                         filed_by = "", filer_condition = "",
                                         sort_order = as.character(max(as.integer(s$parts$sort_order)) + 1L)))
  nt <- unique(n[new_table_id != "" & !new_table_id %in% s$tables$table_id, .(new_table_id, new_table_cardinality)])
  for (i in seq_len(nrow(nt))) {
    tb <- nt$new_table_id[i]; pid <- substr(tb, 1, 6)
    s$tables <- rbind(s$tables, data.table(table_id = tb, part_id = pid, form_id = s$parts[part_id == pid]$form_id[1],
                                           cardinality = nt$new_table_cardinality[i], title = "",
                                           sort_order = as.character(max(as.integer(s$tables$sort_order)) + 1L)))
  }
  nv <- n[, .SD[1], by = new_variable]
  stopifnot(!any(nv$new_variable %in% s$variables$variable_name), all(nv$new_table_id %in% s$tables$table_id),
            all(nchar(nv$new_variable) <= 32))
  for (i in seq_len(nrow(nv))) {
    tb <- nv$new_table_id[i]
    sib <- s$variables[table_id == tb]
    if (!nrow(sib)) sib <- s$variables[table_id %in% s$tables[part_id == substr(tb, 1, 6)]$table_id]
    if (!nrow(sib)) sib <- s$variables[substr(table_id, 1, 2) == substr(tb, 1, 2)]
    lv <- sib[1]
    s$variables <- rbind(s$variables, data.table(
      variable_name = nv$new_variable[i], family_id = nv$new_variable[i], table_id = tb, label = nv$new_label[i],
      description = nv$new_label[i], location_code_family = sub("-(LINE|COL|SECTION)[-A-Z0-9]*$", "", lv$location_code_family),
      variable_scope = lv$variable_scope, data_type_simple = nv$new_data_type[i], multi_value = ""))
  }
  like <- vapply(n$new_variable, function(v) {
    tb <- nv[new_variable == v]$new_table_id
    o <- s$xpaths[variable_name %in% s$variables[table_id == tb & variable_name != v]$variable_name]$variable_name
    if (length(o)) o[1] else ""
  }, "")
  s <- new_rows(s, n$key, n$new_variable, like, n$form_line)
  # xpaths that join a variable created here (foreign address of Part III transferees)
  a <- p[check == "UNMAPPED" & decision == "add_to_variable" & !key %in% s$xpaths$xpath]
  stopifnot(all(a$target_variable %in% s$variables$variable_name))
  new_rows(s, a$key, a$target_variable, a$target_variable)
}, reason = "Add variables for observed but unmapped 990-PF fields: section 4960 tax (Part VI-B line 8), foreign-organization tax withheld (Part V line 6b), net assets with donor restrictions, heading items C, D1, D2, F and G; and the public (unredacted) 990-PF Schedule B: organization type and General Rule (new table SB-P00-T00-HEADER), contributor person name, type checkboxes and country, noncash property (SB-P02-T01) and exclusively religious gifts (SB-P03-T00/T01).",
   evidence = "UNMAPPED (evidence/pf); schemas 2023v5.0; data-raw/proposals/pf-unmapped-cardinality.csv", type = "add", affects = TRUE)

# ---- 3. mapping errors found in the PF file ---------------------------------------------------
fix_step(function(s) {
  m <- p[decision == "move_variable" & target_variable %like% "^PF_08_COMP_KONTR_NAME"]
  s <- remap_xpaths(s, m$key, m$target_variable[1])
  for (i in seq_len(nrow(m))) s$xpaths[xpath == m$key[i], variable_name := m$target_variable[i]]
  x <- "/Return/ReturnData/CompensationExplanation/CompensationExplanationGrp/ShortExplanationTxt"
  s$xpath_forms[xpath == x & form_id == "F990PF", variable_name := "PF_AX09_COMP_EXPLANATION"]
  s
}, reason = "Correct two mappings of the PF file: the contractor business-name xpaths (CompensationOfHghstPdCntrctGrp/BusinessName) belong to PF_08_COMP_KONTR_NAME_ORG_L1/L2, not the highest-paid-employee variables; in 990-PF returns CompensationExplanationGrp/ShortExplanationTxt is the explanation text (PF_AX09_COMP_EXPLANATION), not the person name.",
   evidence = "MANY_NOT_REPEATING review; schemas 2023v5.0", type = "remap", affects = TRUE)

# ---- 4. table structure ------------------------------------------------------------------------
fix_step(function(s) {
  one <- c("PF-P08-T00-COMPENSATION-CONTRACTORS", "PF-P09-T02-PROG-RELATED-INVESTMENTS", "PF-P99-T25-INVEST-GOVT-SEC")
  many <- "PF-P15-T00-SUPPLEMENTARY-INFO-GRANT-APP"
  stopifnot(all(c(one, many) %in% s$tables$table_id))
  s$tables[table_id %in% one, cardinality := "ONE"]
  s$tables[table_id %in% many, cardinality := "MANY"]
  mv <- p[decision == "move_variable" & grepl("^PF-P", target_variable)]
  for (i in seq_len(nrow(mv))) s$variables[variable_name == mv$variable_name[i], table_id := mv$target_variable[i]]
  s$variables[variable_name %in% c("PF_15_MGR_CONTR", "PF_15_MGR_SHAREHOLDER"), multi_value := "TRUE"]
  s
}, reason = "990-PF table structure: tables holding one value per filing made ONE (the Part VII line 3 'none' text, program-related investment line slots, the government-obligations schedule totals); the Part XV grant-application table made MANY (ApplicationSubmissionInfoGrp repeats up to 28 per filing); per-filing scalars moved out of repeating tables (Part VII 'none' and contractor count, schedule totals to PF-P99-T00-AUXILLIARY); manager-name lists (Part XV line 1a/1b, up to 10 names) marked multi_value.",
   evidence = "ONE_REPEATS; MANY_NOT_REPEATING (evidence/pf); data-raw/proposals/pf-unmapped-cardinality.csv", type = "move_table", affects = TRUE)
