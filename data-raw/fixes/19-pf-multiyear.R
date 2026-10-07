# Fix 19: 990-PF fixes from the multi-year PF evidence (evidence/pf, TY2009-2024,
# 1.25M filings) and the first efilepf_v2_3 table build (TY2009), which counts
# the cells the pivot drops. Evidence and decisions:
# data-raw/proposals/pf-multiyear-unmapped.csv.
#   Rscript data-raw/fixes/19-pf-multiyear.R

source("data-raw/fixes/_helpers.R")
p <- fread("data-raw/proposals/pf-multiyear-unmapped.csv", colClasses = "character")

# ---- 1. pre-2014 Schedule B elements of the public 990-PF Schedule B -------------------------
fix_step(function(s) {
  a <- p[decision == "add_to_variable"]
  stopifnot(!any(a$key %in% s$xpaths$xpath), all(a$target_variable %in% s$variables$variable_name))
  rows <- rbindlist(lapply(seq_len(nrow(a)), function(i) {
    r <- copy(s$xpaths[variable_name == a$target_variable[i]][1])
    for (cl in c("location_code_xsd", "data_type_xsd", "required", "versions", "latest_version", "duplicated",
                 "current_version", "production_rule", "validated")) set(r, j = cl, value = "")
    r[, xpath := a$key[i]]
    r
  }))
  rows[, v1_order := as.character(max(as.integer(s$xpaths$v1_order)) + seq_len(.N))]
  s$xpaths <- rbind(s$xpaths, rows)
  s
}, reason = "Add the 2009-2013 schema names of the public (unredacted) 990-PF Schedule B elements to the Schedule B variables mapped for the current schema in fix 14: organization type and General Rule checkboxes, contributor person name, contribution-type checkboxes, foreign addresses, noncash property, and the Part III exclusively religious gifts and transferees.",
   evidence = "UNMAPPED (evidence/pf, TY2009-2013); data-raw/proposals/pf-multiyear-unmapped.csv", type = "add", affects = TRUE)

# ---- 2. Part XIII line 6b pooled with line 2b ---------------------------------------------------
fix_step(function(s) {
  xp <- s$xpaths[variable_name == "PF_13_UNDIST_INCOME_PYZ_TOT" & grepl("/PriorYearUndistributedInc(ome|mAmt)$", xpath), xpath]
  stopifnot(length(xp) == 2)
  s <- add_variable(s, "PF_13_UNDIST_INCOME_PYZ_REMAIN", like = "PF_13_UNDIST_INCOME_PYZ_TOT",
                    label = "Prior years' undistributed income (line 2b minus line 4b)",
                    description = "Undistributed income: enter the net total, prior years' undistributed income; subtract line 4b from line 2b",
                    location_code_family = "F990-PF-PART-13-LINE-06B-COL-B")
  s <- remap_xpaths(s, xp, "PF_13_UNDIST_INCOME_PYZ_REMAIN")
  s$xpaths[xpath %in% xp, form_line_number := "Line 06b Column (B)"]
  s
}, reason = "Split 990-PF Part XIII line 6b (prior years' undistributed income, PriorYearUndistributedIncome / PriorYearUndistributedIncmAmt) from line 2b (total for prior years, TotalForPriorYears / TotalForPriorYearsAmt) into a new variable PF_13_UNDIST_INCOME_PYZ_REMAIN: both lines were mapped to PF_13_UNDIST_INCOME_PYZ_TOT and co-occur in most filings, so the table kept one of two different amounts.",
   evidence = "efilepf_v2_3 TY2009 pivot collisions (1,422 of 2,345 filings); form_line_number of the xpaths (Line 02b vs Line 06b)", type = "split", affects = TRUE)

# ---- 3. grant application table: repeating group named as a T00 table ----------------------------
fix_step(function(s) {
  from <- "PF-P15-T00-SUPPLEMENTARY-INFO-GRANT-APP"; to <- "PF-P15-T03-SUPPLEMENTARY-INFO-GRANT-APP"
  stopifnot(s$tables[table_id == from]$cardinality == "MANY", !to %in% s$tables$table_id)
  s$tables[table_id == from, table_id := to]
  s$variables[table_id == from, table_id := to]
  s
}, reason = "Rename PF-P15-T00-SUPPLEMENTARY-INFO-GRANT-APP to PF-P15-T03-SUPPLEMENTARY-INFO-GRANT-APP: the table is MANY (application submission information repeats, one row per set of instructions), but the T00 name made ef2 build it one row per filing, keeping one value of each field.",
   evidence = "efilepf_v2_3 TY2009 pivot collisions (PF_15_G_APP_* in 17-19 filings); tables.csv cardinality MANY", type = "move_table", affects = TRUE)

# ---- validation log: the ignored xpaths ---------------------------------------------------------------
vl <- read_validation_log()
add <- p[decision == "ignore", .(check = "UNMAPPED", variable_name = "", key, status = "accepted",
                                 reviewer = "Claude Code, for review by Jesse Lecy", date = "2026-10-06",
                                 note = paste("Ignored:", rationale))]
add <- add[!vl, on = .(check, variable_name, key)]   # header fields logged 2026-09-26 keep their notes
vl <- rbind(vl, add, fill = TRUE)
retry(function() write_cc_csv(vl, validation_log_path(), eol = "\n"))
