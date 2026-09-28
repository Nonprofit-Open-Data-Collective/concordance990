# Fix 17: rename SB_01_CONTRIBUTOR_TYPE to SB_01_CONTRIBUTOR_NUM (decision
# J. Lecy, 2026-09-28). The variable holds the Schedule B Part I contributor
# number (ContributorNumber / ContributorNum), not a contributor type; the
# type is the person/payroll/noncash checkboxes added in fix 14.
#   Rscript data-raw/fixes/17-sb-contributor-num.R

source("data-raw/fixes/_helpers.R")

fix_step(function(s) {
  s <- rename_variable(s, "SB_01_CONTRIBUTOR_TYPE", "SB_01_CONTRIBUTOR_NUM")
  set_var(s, "SB_01_CONTRIBUTOR_NUM", label = "Contributor number", description = "Schedule B Part I, column (a): contributor number")
}, reason = "Rename SB_01_CONTRIBUTOR_TYPE to SB_01_CONTRIBUTOR_NUM: it holds the Schedule B Part I contributor number (ContributorNum), matching SB_02_NONCASH_CONTRIBUTOR_NUM and SB_03_CONTRIBUTOR_NUM (decision: J. Lecy).",
   evidence = "data-raw/proposals/pf-unmapped-cardinality.csv", affects = TRUE)

# validation-log entries follow the new name
vl <- read_validation_log()
i <- which(vl$variable_name == "SB_01_CONTRIBUTOR_TYPE")
vl[i, key := ifelse(key == "SB_01_CONTRIBUTOR_TYPE", "SB_01_CONTRIBUTOR_NUM", key)]
vl[i, variable_name := "SB_01_CONTRIBUTOR_NUM"]
j <- which(vl$variable_name == "SB_01_CONTRIBUTOR_NUM" & vl$status == "needs_input")
set(vl, i = j, j = c("status", "reviewer", "date", "note"),
    value = list("accepted", "Jesse Lecy (decision); logged by Claude Code", "2026-09-28",
                 "Fixed in fix 17: renamed SB_01_CONTRIBUTOR_NUM."))
retry(function() write_cc_csv(vl, validation_log_path(), eol = "\n"))
