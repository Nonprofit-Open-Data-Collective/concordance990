# Fix 22: make every table's number agree with its cardinality and with the
# filings. A -T00- table is built one row per filing and a T01+ table one row
# per repeating group (ef2 picks the builder from the name), so a MANY table
# named T00 loses all but one value of each repeated field, and a ONE table
# named T01+ is mislabelled. Each case was checked against filing evidence:
# 990 evidence (evidence/, TY2009-2024) and the 990-PF builds
# (evidence/pf and data-raw/pf-table-cardinality.R, TY2009-2024; TY2023-2024
# measured directly in the PF DuckDBs). A field that repeats only because it
# is a list (multi_value, collapsed into one cell) does not make a table MANY.
# New rule R13 keeps the name and the cardinality in step.
#   Rscript data-raw/fixes/22-table-cardinality.R

source("data-raw/fixes/_helpers.R")

rename_table <- function(s, from, to) {
  stopifnot(from %in% s$tables$table_id, !to %in% s$tables$table_id)
  s$tables[table_id == from, table_id := to]
  s$variables[table_id == from, table_id := to]
  s
}
merge_table <- function(s, from, into) {
  stopifnot(from %in% s$tables$table_id, into %in% s$tables$table_id,
            s$tables[table_id == from]$cardinality == s$tables[table_id == into]$cardinality)
  s$variables[table_id == from, table_id := into]
  s$tables <- s$tables[table_id != from]
  s
}

# ---- 1. repeating group named as a T00 table ------------------------------------------------------
fix_step(function(s) {
  stopifnot(s$tables[table_id == "SH-P99-T00-FAP-COMMUNITY-BENEFIT-POLICY"]$cardinality == "MANY")
  rename_table(s, "SH-P99-T00-FAP-COMMUNITY-BENEFIT-POLICY", "SH-P99-T01-FAP-COMMUNITY-BENEFIT-POLICY")
}, reason = "Rename SH-P99-T00-FAP-COMMUNITY-BENEFIT-POLICY to SH-P99-T01-FAP-COMMUNITY-BENEFIT-POLICY: the table is MANY (the hospital-facility policy group repeats, up to 60 per filing in 718 of 5,925 filings), but the T00 name made ef2 build it one row per filing and keep one value of each field.",
   evidence = "evidence/xpath_stats.csv (n_filings_repeat, max_per_filing), TY2009-2024; tables.csv cardinality MANY (C24134)", type = "move_table", affects = TRUE)

# ---- 2. one-row tables named as repeating groups --------------------------------------------------
fix_step(function(s) {
  s <- rename_table(s, "SD-P07-T01-INVESTMENTS-OTH-DERIVATIVES", "SD-P07-T00-INVESTMENTS-OTH-DERIVATIVES")
  s <- rename_table(s, "SD-P07-T01-INVESTMENTS-OTH-EQUITY", "SD-P07-T00-INVESTMENTS-OTH-EQUITY")
  s <- rename_table(s, "PF-P09-T01-CHARITABLE-ACTIVITIES", "PF-P09-T00-CHARITABLE-ACTIVITIES")
  s
}, reason = "Rename three ONE tables named as repeating groups to T00: SD-P07-T01-INVESTMENTS-OTH-DERIVATIVES and SD-P07-T01-INVESTMENTS-OTH-EQUITY (Schedule D Part VII lines 1-2, one value per filing) and PF-P09-T01-CHARITABLE-ACTIVITIES (990-PF Part IX-A, numbered line slots). No field in any of them repeats within a filing in TY2009-2024.",
   evidence = "evidence/xpath_stats.csv (6,690 and 14,315 filings, max 1 per filing); PF-XPATH-REPORT.csv (303,401 filings, max 1); data-raw/proposals/pf-table-cardinality-summary.csv", type = "move_table", affects = TRUE)

fix_step(function(s) {
  s <- merge_table(s, "SG-P02-T01-FUNDRAISING-EVENTS", "SG-P02-T00-FUNDRAISING-EVENTS")
  s <- merge_table(s, "PF-P09-T02-PROG-RELATED-INVESTMENTS", "PF-P09-T00-PROG-RELATED-INVESTMENTS")
  s
}, reason = "Merge two ONE tables named as repeating groups into the T00 table of the same part: SG-P02-T01-FUNDRAISING-EVENTS (Schedule G Part II columns for event 1, event 2 and other events) into SG-P02-T00-FUNDRAISING-EVENTS, and PF-P09-T02-PROG-RELATED-INVESTMENTS (990-PF Part IX-B investment line slots 1-3) into PF-P09-T00-PROG-RELATED-INVESTMENTS (their total). They are fixed columns of one row per filing, not repeating groups; renaming to T00 would collide with the existing table.",
   evidence = "evidence/xpath_stats.csv (max 1 per filing); PF-XPATH-REPORT.csv (237,984 filings, max 1)", type = "move_table", affects = TRUE)

# ---- 3. repeating auxiliary schedule declared ONE --------------------------------------------------
fix_step(function(s) {
  stopifnot(s$tables[table_id == "PF-P99-T25-INVEST-GOVT-SEC"]$cardinality == "ONE")
  s$tables[table_id == "PF-P99-T25-INVEST-GOVT-SEC", cardinality := "MANY"]
  s
}, reason = "Set PF-P99-T25-INVEST-GOVT-SEC (990-PF investments in government obligations schedule) back to MANY: the schedule is attached more than once in some returns (52 filings, up to 52 copies), like every other 990-PF auxiliary schedule table (all MANY). Fix 14 had made it ONE from TY2023 evidence alone.",
   evidence = "PF-XPATH-REPORT.csv, TY2013-2024 (filings_repeat 52, max_per_filing 52); data-raw/proposals/pf-table-cardinality-summary.csv", type = "retype", affects = TRUE)

# ---- 4. list-valued explanations in a ONE table -------------------------------------------------------
fix_step(function(s) {
  v <- c("PF_AX02_ACT_NEW_EXPLANATION", "PF_AX44_CAUSE_EXPLANATION", "PF_AX45_REDUCT_EXPLANATION")
  stopifnot(all(v %in% s$variables$variable_name))
  s$variables[variable_name %in% v, multi_value := "TRUE"]
  s
}, reason = "Mark three 990-PF auxiliary explanation texts as list-valued (multi_value): a few returns attach the explanation more than once (PF_AX02_ACT_NEW_EXPLANATION up to 5 times, PF_AX44 and PF_AX45 twice). Collapsed into one cell they fit the one-row PF-P99-T00-AUXILLIARY table, which stays ONE.",
   evidence = "PF-XPATH-REPORT.csv (filings_repeat 1-6, max_per_filing 2-5)", type = "retype", affects = TRUE)
