# Fix 09: follow-up on the cases raised when the checks were re-run on the
# fixed tables (see "New cases" in reports/issues-resolved.html).
#   Rscript data-raw/fixes/09-follow-up.R

source("data-raw/fixes/_helpers.R")

# ONE_REPEATS: the agricultural research college/university group added in
# fix 07 repeats (up to 5 per filing), so it needs its own MANY table
fix_step(function(s) {
  s$tables <- rbind(s$tables, data.table(table_id = "SA-P01-T03-AGRI-RESEARCH-UNIV", part_id = "SA-P01", form_id = "SCHED-A",
                                         cardinality = "MANY", title = "Schedule A Part I line 9: college or university of an agricultural research organization (one row per institution)",
                                         sort_order = as.character(max(as.integer(s$tables$sort_order)) + 1L)))
  v <- c("SA_01_PCSTAT_AGRI_UNIV_CITY", "SA_01_PCSTAT_AGRI_UNIV_CNTR", "SA_01_PCSTAT_AGRI_UNIV_NAME_L1",
         "SA_01_PCSTAT_AGRI_UNIV_NAME_L2", "SA_01_PCSTAT_AGRI_UNIV_STATE")
  stopifnot(all(v %in% s$variables$variable_name))
  s$variables[variable_name %in% v, table_id := "SA-P01-T03-AGRI-RESEARCH-UNIV"]
  s
}, reason = "Move the Schedule A agricultural research college/university name and address (added in fix 07) to a new MANY table SA-P01-T03-AGRI-RESEARCH-UNIV; the group repeats in 5.2% of filings (up to 5 per filing).",
   evidence = "ONE_REPEATS (re-run after fix 07)", type = "move_table", affects = TRUE)

# ---- validation log: new cases reviewed -------------------------------------------------
reviewer <- "Claude Code, for review by Jesse Lecy"; today <- "2026-09-26"
cc <- build_concordance(format = "v1")
fl <- flag_xpaths(cc, "evidence")
now <- collect_issues(read_src(), flags = fl, validation_log = read_validation_log())
before <- fread("reports/issues.csv", colClasses = "character", na.strings = "")
key3 <- function(d) paste(d$check, fifelse(is.na(d$variable_name), "", d$variable_name), d$key)
nw <- now[!key3(now) %in% key3(before) & !check %like% "^R[0-9]"]
nw[is.na(variable_name), variable_name := ""]
new_many <- c("SH-P05-T03-FACILITY-POLICIES-PRACTICES", "SA-P01-T02-HOSPITAL-NAME-ADDRESS", "SA-P01-T03-AGRI-RESEARCH-UNIV",
              "SH-P99-T00-FAP-COMMUNITY-BENEFIT-POLICY", "SC-P02-T01-AFFILIATED-GROUP", "F9-P00-T01-AFFILIATE-LISTING")
note <- nw[, fcase(
  check == "POLARITY", "False positive: 'NotReported' is the line's meaning (revenue not reported on the financial statements), as for the other xpaths of this variable; accepted for its old variable in issues.html.",
  check == "TYPE_NUMERIC" & grepl("^SB_01_", variable_name), "Schedule B contributor amounts and numbers are redacted in the public e-file data (every value is RESTRICTED); numeric is the IRS element type.",
  check == "GAP" & grepl("^SC_02_AFFIL", variable_name), "New variable (fix 07): 990-EZ filers rarely complete Schedule C Part II-A for an affiliated group; the gaps are years with no such filer, not a missing xpath.",
  check == "GAP" & variable_name == "F9_04_SCHED_B_NOT_REQ_X", "Gap only among filings with a blank return type (a handful per year from 2017).",
  check == "INCIDENCE_BREAK" & grepl("^F9_00_IRS_SEC_", variable_name), "The IRS stopped publishing FilingSecurityInformation in TY2020 (as for the other header security fields accepted in issues.html).",
  check == "INCIDENCE_BREAK" & variable_name == "F9_07_COMP_DTK_EXPL_NAME_ORG_L1", "Fix 07 added the 2013 transitional xpath, so 2013 is now filled; the jump to 2014 reflects the few 990-EZ filers using this attachment.",
  check == "INCIDENCE_BREAK" & variable_name == "SA_02_PCT_10_FACTS_CIRC_EXPL", "New variable (fix 07): the 2013 schema change (FactsAndCircumstancesTest -> ...Txt) shifts who fills the explanation; both xpaths are mapped.",
  check == "INCIDENCE_BREAK" & variable_name == "SA_05_ASSET_MINIM_INDEPTED_PY", "Partial final year TY2024 (and zero-filled Schedule A Part V in 2024), as accepted for the sibling variables.",
  check == "INCIDENCE_BREAK" & variable_name == "SH_05_CHNA_DESC_RESOURCES_X", "Renamed from SH_01_CHNA_DESC_RESOURCES_X (fix 04); Schedule H Part V phase-in 2011-2012, as accepted for its siblings in issues.html.",
  check == "MANY_NOT_REPEATING" & rdb_table %in% c(new_many, grep("-T99-", rdb_table, value = TRUE)), "Table made MANY or created in fixes 05/07/09: the group repeats (ONE_REPEATS evidence); most filings have one instance, so the value usually sits outside an indexed element.",
  check == "MANY_NOT_REPEATING", "Xpath remapped or added in fixes 03/07 into a repeating group (compensation explanations, hospital facilities, bond issues); most filings have one instance, so the value usually sits outside an indexed element.",
  check == "UNMAPPED" & key == "/Return/ReturnData/EmployeeCompensationExpln", "Ignored: container of the 990-EZ compensation explanation; its name and explanation children are mapped (fix 07).",
  check == "UNOBSERVED", "Kept (never observed in TY2009-2024 filings; revisit with the XSD metadata).",
  default = NA_character_)]
nw[, note := note]
add <- nw[!is.na(note)]
add <- rbind(add[, .(check, variable_name, key, note)],
             as.data.table(list(check = "GAP", variable_name = "F9_07_COMP_DTK_EXPL_NAME_ORG_L2", key = "F9_07_COMP_DTK_EXPL_NAME_ORG_L2",
                        note = "Fix 07 added the 2013 transitional xpath; the remaining 990-EZ years (2014, 2015, 2020) have no such filer (line 2 of a business name is rare).")),
             as.data.table(list(check = "V_POOLED_SCALE", variable_name = c("SD_12_RECO_EXP_ADD_L4AB", "SD_11_RECO_REV_ADD_L4AB"),
                        key = c("SD_12_RECO_EXP_ADD_L4AB", "SD_11_RECO_REV_ADD_L4AB"),
                        note = "After fix 03 the remaining difference is between the pre-2013 and 2013+ xpaths of the same line; yearly medians are 0 in most years for both, so the ratio of medians is driven by zero-filling, not a different quantity.")))
vl <- rbind(read_validation_log(), add[, .(check, variable_name, key, status = "accepted", reviewer = reviewer, date = today, note)])
vl <- unique(vl, by = c("check", "variable_name", "key"), fromLast = TRUE)
retry(function() write_cc_csv(vl, validation_log_path(), eol = "\n"))
message(nrow(add), " validation-log rows added; still unreviewed new cases:")
print(nw[is.na(note), .N, by = .(severity, check)])
