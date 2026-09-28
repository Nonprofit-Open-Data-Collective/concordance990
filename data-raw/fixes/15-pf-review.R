# Fix 15: close the 990-PF review. The 990-PF cases of issues.html were
# 'deferred' until the PF merge; after fixes 11-14 the PF checks are re-run on
# the merged mapping (evidence/pf, TY2023) and each remaining case is logged.
#   Rscript data-raw/fixes/15-pf-review.R

source("data-raw/fixes/_helpers.R")

fix_step(function(s) {
  v <- c("SB_02_NONCASH_CONTRIBUTOR_NUM", "SB_03_CONTRIBUTOR_NUM")
  stopifnot(all(v %in% s$variables$variable_name))
  s$variables[variable_name %in% v, data_type_simple := "numeric"]
  s
}, reason = "Type the Schedule B Part II and III contributor numbers numeric (100% numeric values), like the Part I contributor number.",
   evidence = "V_TEXT_NUMERIC (evidence/pf)", type = "retype", affects = TRUE)

# ---- validation log ---------------------------------------------------------------------
reviewer <- "Claude Code, for review by Jesse Lecy"; today <- "2026-09-28"
cpf <- build_concordance(format = "v1", form = "F990PF")
fl <- flag_xpaths(cpf, "evidence/pf")
vc <- run_value_checks(cpf, load_evidence("evidence/pf"))
now <- collect_issues(read_src(), flags_pf = fl, value_checks_pf = vc, pf_concordance = cpf,
                      validation_log = read_validation_log()[0])[grepl("PF", source)]
now[is.na(variable_name), variable_name := ""]
p <- fread("data-raw/proposals/pf-unmapped-cardinality.csv", colClasses = "character")
multi <- read_src()$variables[multi_value == "TRUE", variable_name]
note <- now[, fcase(
  check == "POLARITY" & grepl("NoDonorRstr", key), "False positive: 'NoDonorRstr...' means net assets without donor restrictions, the same line as the other xpaths of the variable.",
  check == "POLARITY", "False positive: NotApplicableCd holds the literal N/A, like the other xpaths of the variable.",
  check == "ONE_REPEATS" & variable_name %in% multi, "List-valued field (multi_value = TRUE): repeated values are joined into one cell (decision: J. Lecy, fix 10; PF fields in fixes 13-14).",
  check == "UNMAPPED" & key %in% p[decision == "ignore", key], "Ignored: container or attachment wrapper with no value of its own; its children are mapped (data-raw/proposals/pf-unmapped-cardinality.csv).",
  check == "MANY_NOT_REPEATING", "Genuine repeating group (XSD maxOccurs > 1; repeat_root is the group when a filing has several rows); most filings have one instance.",
  check == "UNOBSERVED", "Kept: the 990-PF evidence covers one tax year (TY2023), so xpaths of earlier schema versions are expected to be unobserved.",
  check == "V_ID_FORMAT" & grepl("SSN", variable_name), "SSNs are masked in the public data (XXX-XX-XXXX).",
  check == "V_ID_FORMAT", "Foreign postal codes and ZIP+4 without a hyphen account for the values outside the US ZIP pattern.",
  check == "V_ID_PLACEHOLDER", "Placeholder values (000000000) entered by filers; no mapping change, treat as missing downstream.",
  check %in% c("V_CODE_LIST", "V_CODE_FORMAT"), "Address state/province fields: US state codes plus free-text foreign provinces (many distinct values, not all two-letter); no mapping change.",
  check == "V_TEXT_NUMERIC" & grepl("IRS_TRUST", variable_name), "Assurance-level codes (0-3, 00/11) are numeric-looking codes; text is correct.",
  check == "V_TEXT_NUMERIC", "Line references such as 1, 2a, 3b: mostly numeric but text by design.",
  default = NA_character_)]
now[, note := note]
cat("PF cases still flagged:", nrow(now), "; logged:", now[!is.na(note), .N], "; left without a note:\n")
print(now[is.na(note), .(check, variable_name, key)])

vl <- read_validation_log()
vl <- vl[!(status == "deferred")]           # the pre-merge PF entries (old PF names)
add <- now[!is.na(note), .(check, variable_name, key, status = "accepted", reviewer = reviewer, date = today, note)]
# two design questions stay open
q <- rbind(
  as.data.table(list(check = "COLLISION", variable_name = c("PF_09_CHARIT_ACT_DESC", "PF_09_CHARIT_ACT_EXP"), key = "",
                     status = "needs_input", reviewer = reviewer, date = today,
                     note = "Part IX-A lists up to four direct charitable activities in fixed slots (Description1Txt..4Txt, Expenses1Amt..4Amt), all mapped to one variable in one table, so a filing's four values compete for one cell. Options: variables _1.._4, or a MANY table with a slot column. See the memo.")),
  as.data.table(list(check = "R04", variable_name = "SB_01_CONTRIBUTOR_TYPE", key = "SB_01_CONTRIBUTOR_TYPE",
                     status = "needs_input", reviewer = reviewer, date = today,
                     note = "The variable holds the contributor number (ContributorNum), not a type; rename to SB_01_CONTRIBUTOR_NUM? A rename changes a column name downstream.")))
vl <- unique(rbind(vl, add, q), by = c("check", "variable_name", "key"), fromLast = TRUE)
retry(function() write_cc_csv(vl, validation_log_path(), eol = "\n"))
print(vl[, .N, by = status])
