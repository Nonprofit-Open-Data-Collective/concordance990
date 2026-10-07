# Fix 21: the 990-PF value checks on the multi-year evidence (evidence/pf,
# TY2009-2024), reviewed after fixes 19-20. No mapping change: each case is
# logged in the validation log with the reason it is kept.
#   Rscript data-raw/fixes/21-pf-value-checks.R

source("data-raw/fixes/_helpers.R")

cpf <- build_concordance(format = "v1", form = "F990PF")
now <- collect_issues(read_src(), flags_pf = flag_xpaths(cpf, "evidence/pf"),
                      value_checks_pf = run_value_checks(cpf, load_evidence("evidence/pf")),
                      pf_concordance = cpf, validation_log = read_validation_log())
open <- drop_accepted(now[grepl("PF", source)])

note <- c(
  V_MEDIAN_JUMP = "Kept: year-to-year median changes follow the filer population (e-file growth, the 2020 e-file mandate for the 990-PF) and zero amounts reported by e-file software from 2017-2018 on; same element and line, no mapping change.",
  V_POOLED_SCALE = "Kept: the pooled xpaths are the older and newer names of one line (2009-2012 vs 2013+ schemas); medians differ with the filer population and zero reporting, not with units.",
  V_NUMBER_SCALE = "False positive: filer-entered ratios or rates. PF_05_4940E_DIST_RATIO_TOT has the same quantiles under both element names (median about 0.27, every year); depreciation rates are written as fractions by some filers and percents by others.",
  V_ID_PLACEHOLDER = "Kept: placeholder ZIP codes (000000000) as filed, in a handful of filings; values are reproduced as filed.",
  V_CODE_LIST = "Address state/province or country fields: US state codes plus free-text foreign provinces and countries; no mapping change.",
  V_TEXT_NUMERIC = "Kept: identifier stored as text (61% of values numeric); text type is correct for identifiers.",
  MANY_NOT_REPEATING = "Genuine repeating group: compensation explanation rows repeat in other filings; many filings explain one person only.")
stopifnot(all(open$check %in% names(note)))
vl <- read_validation_log()
add <- open[, .(check, variable_name, key, status = "accepted", reviewer = "Claude Code, for review by Jesse Lecy",
                date = "2026-10-06", note = note[check])]
add <- add[!vl, on = .(check, variable_name, key)]
retry(function() write_cc_csv(rbind(vl, add, fill = TRUE), validation_log_path(), eol = "\n"))
message(nrow(add), " validation-log entries added")
