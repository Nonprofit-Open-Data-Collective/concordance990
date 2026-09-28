# Fix 07: xpaths observed in filings but not mapped (issues UNMAPPED, GAP).
# Evidence and case-by-case decisions: data-raw/proposals/gaps-unmapped.csv
# (decisions add_xpath, add_to_variable and new_variable; 'ignore' cases
# are recorded in the validation log instead).
#   Rscript data-raw/fixes/07-coverage.R

source("data-raw/fixes/_helpers.R")

p <- fread("data-raw/proposals/gaps-unmapped.csv", colClasses = "character")
p[, xpath := fifelse(check == "UNMAPPED", key, target_xpath)]
adds <- unique(p[decision %in% c("add_xpath", "add_to_variable"), .(xpath, variable_name = target_variable)])
news <- p[decision == "new_variable", .(xpath, variable_name = target_variable, table_id = new_table_id,
                                        data_type = new_data_type, label = new_label)]
stopifnot(!anyDuplicated(adds$xpath), !anyDuplicated(news$xpath))

root_of <- function(x) ifelse(grepl("^/Return/ReturnHeader", x), "ReturnHeader", sub("^/Return/ReturnData/([^/]+).*", "\\1", x))
form_type_of <- function(root) fcase(root == "IRS990EZ", "EZ", grepl("^IRS990Schedule", root), "SZ",
                                     root %in% c("AffiliatedGroupSchedule", "AffiliatedGroupAttachment", "AveragingAttachment"), "SZ",
                                     root %in% c("CompensationExplanation", "EmployeeCompensationExpln"), "EZ",
                                     default = "PC")
part_code <- function(x) sub("-(LINE|COL|SECTION|X)[-A-Z0-9]*$", "", x)

# New xpath rows copy form and part from a like xpath of the same variable
# (or a sibling variable), and leave line-level and version metadata empty.
new_xpath_rows <- function(s, xps, vars, like_vars) {
  rows <- lapply(seq_along(xps), function(i) {
    lk <- s$xpaths[variable_name == like_vars[i]]
    lk <- lk[order(root_of(xpath) != root_of(xps[i]))][1]
    r <- copy(lk)
    for (cl in setdiff(names(r), c("form", "form_part"))) set(r, j = cl, value = "")
    r[, `:=`(xpath = xps[i], variable_name = vars[i], location_code = part_code(lk$location_code),
             form_type = form_type_of(root_of(xps[i])))]
    r
  })
  r <- rbindlist(rows)
  r[, v1_order := as.character(max(as.integer(s$xpaths$v1_order)) + seq_len(.N))]
  r
}

# Roots of the new xpaths must be declared on their form (rule R08)
fix_step(function(s) {
  s$forms[form_id == "F990", xml_roots := paste(sort(c(strsplit(xml_roots, ";")[[1]], "AffiliateListing")), collapse = ";")]
  s$forms[form_id == "SCHED-C", xml_roots := paste(sort(c(strsplit(xml_roots, ";")[[1]], "AffiliatedGroupAttachment",
                                                           "AffiliatedGroupSchedule", "AveragingAttachment")), collapse = ";")]
  s
}, reason = "Declare the attachment roots AffiliateListing (990 group returns) and AffiliatedGroupSchedule, AffiliatedGroupAttachment, AveragingAttachment (Schedule C Part II-A) as xml roots of their forms.",
   evidence = "UNMAPPED; data-raw/proposals/gaps-unmapped.csv", type = "edit", affects = FALSE)

# Predecessor and successor xpaths of existing variables
fix_step(function(s) {
  stopifnot(!any(adds$xpath %in% s$xpaths$xpath), all(adds$variable_name %in% s$variables$variable_name))
  s$xpaths <- rbind(s$xpaths, new_xpath_rows(s, adds$xpath, adds$variable_name, adds$variable_name))
  # the 990-EZ compensation explanation container was mapped as a leaf; its
  # name and explanation children are now mapped instead
  s$xpaths <- s$xpaths[xpath != "/Return/ReturnData/EmployeeCompensationExpln"]
  s
}, reason = "Add observed xpaths that are the missing predecessor or successor of an existing variable (e.g. the 2013+ Schedule M RealEstateOtherGrp amount, the 2009-2012 ReturnHeader/DisasterRelief, 2013 compensation-explanation names), and replace the EmployeeCompensationExpln container mapping with its children.",
   evidence = "UNMAPPED; GAP; data-raw/proposals/gaps-unmapped.csv", type = "add", affects = TRUE)

# New repeating tables for lists that had no table
fix_step(function(s) {
  add <- function(s, id, pid, title) {
    s$tables <- rbind(s$tables, data.table(table_id = id, part_id = pid, form_id = s$parts$form_id[match(pid, s$parts$part_id)],
                                           cardinality = "MANY", title = title,
                                           sort_order = as.character(max(as.integer(s$tables$sort_order)) + 1L)))
    s
  }
  s <- add(s, "F9-P00-T01-AFFILIATE-LISTING", "F9-P00", "Group return: list of subordinate organizations (AffiliateListing attachment)")
  add(s, "SC-P02-T01-AFFILIATED-GROUP", "SC-P02", "Schedule C Part II-A: affiliated group members (AffiliatedGroupSchedule)")
}, reason = "Add two MANY tables for observed repeating lists that had no table: group-return subordinates (F9-P00-T01-AFFILIATE-LISTING) and Schedule C affiliated group members (SC-P02-T01-AFFILIATED-GROUP).",
   evidence = "UNMAPPED; data-raw/proposals/gaps-unmapped.csv", type = "add", affects = TRUE)

# New variables and their xpaths
fix_step(function(s) {
  nv <- news[, .(table_id = table_id[1], data_type = data_type[1], label = label[1]), by = variable_name]
  stopifnot(!any(nv$variable_name %in% s$variables$variable_name), all(nv$table_id %in% s$tables$table_id),
            all(grepl("^[A-Z0-9]{2}_[0-9]{2}_[A-Z0-9_]+$", nv$variable_name)), all(nchar(nv$variable_name) <= 32))
  # a like variable per new variable: a variable in the same part
  like <- vapply(seq_len(nrow(nv)), function(i) {
    pt <- s$tables[table_id == nv$table_id[i]]$part_id
    cand <- s$variables[table_id %in% s$tables[part_id == pt]$table_id]
    cand$variable_name[1]
  }, "")
  for (i in seq_len(nrow(nv))) {
    lv <- s$variables[variable_name == like[i]]
    s$variables <- rbind(s$variables, data.table(
      variable_name = nv$variable_name[i], family_id = nv$variable_name[i], table_id = nv$table_id[i],
      label = nv$label[i], description = nv$label[i], location_code_family = part_code(lv$location_code_family),
      variable_scope = lv$variable_scope, data_type_simple = nv$data_type[i]))
  }
  lk <- like[match(news$variable_name, nv$variable_name)]
  s$xpaths <- rbind(s$xpaths, new_xpath_rows(s, news$xpath, news$variable_name, lk))
  s
}, reason = "Add variables for observed but unmapped fields: Schedule A agricultural research organizations (2016+), distribution carryover not applied, the 10% facts-and-circumstances explanation; 12 Schedule H Part V Section B lines added in 2016; Schedule C affiliated group members and averaging/affiliation statements; group-return subordinates.",
   evidence = "UNMAPPED; data-raw/proposals/gaps-unmapped.csv", type = "add", affects = TRUE)
