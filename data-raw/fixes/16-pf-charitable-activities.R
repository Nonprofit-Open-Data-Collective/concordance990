# Fix 16: 990-PF Part IX-A (Part VIII-A from 2023), Summary of Direct
# Charitable Activities, as a wide one-row table (decision J. Lecy, 2026-09-28).
# The schemas allow at most four activities, each slot its own element
# (Description1..4 / Expenses1..4 in 2009-2012; Description1Txt..4Txt /
# Expenses1Amt..4Amt from 2013), with no repeating "other" group.
#   Rscript data-raw/fixes/16-pf-charitable-activities.R

source("data-raw/fixes/_helpers.R")

fix_step(function(s) {
  tb <- "PF-P09-T01-CHARITABLE-ACTIVITIES"
  s$tables[table_id == tb, cardinality := "ONE"]
  xp <- s$xpaths[variable_name %in% c("PF_09_CHARIT_ACT_DESC", "PF_09_CHARIT_ACT_EXP"), xpath]
  stopifnot(length(xp) == 16)
  for (k in 1:4) {
    d <- paste0("PF_09_CHARIT_ACT_DESC_", k); e <- paste0("PF_09_CHARIT_ACT_EXP_", k)
    s <- add_variable(s, d, like = "PF_09_CHARIT_ACT_DESC", label = sprintf("Direct charitable activity %d: description", k),
                      description = sprintf("Summary of direct charitable activities, line %d: description", k),
                      location_code_family = sprintf("F990-PF-PART-09-A-LINE-%02d-COL-01", k))
    s <- add_variable(s, e, like = "PF_09_CHARIT_ACT_EXP", label = sprintf("Direct charitable activity %d: expenses", k),
                      description = sprintf("Summary of direct charitable activities, line %d: expenses", k),
                      location_code_family = sprintf("F990-PF-PART-09-A-LINE-%02d-COL-02", k))
    s <- remap_xpaths(s, xp[grepl(paste0("/Description", k, "(Txt)?$"), xp)], d)
    s <- remap_xpaths(s, xp[grepl(paste0("/Expenses", k, "(Amt)?$"), xp)], e)
  }
  s <- drop_variable(s, "PF_09_CHARIT_ACT_DESC")
  drop_variable(s, "PF_09_CHARIT_ACT_EXP")
}, reason = "Map the four fixed slots of 990-PF Part IX-A (Summary of Direct Charitable Activities) to their own variables PF_09_CHARIT_ACT_DESC_1..4 and PF_09_CHARIT_ACT_EXP_1..4 in the one-row table PF-P09-T01-CHARITABLE-ACTIVITIES (wide format), replacing one description and one expense variable that received up to four values per filing (decision: J. Lecy).",
   evidence = "schemas 2009v1.0 and 2023v5.0 IRS990PF.xsd; evidence/pf/xpath_stats.csv", type = "split", affects = TRUE)

vl <- read_validation_log()
i <- which(vl$variable_name %in% c("PF_09_CHARIT_ACT_DESC", "PF_09_CHARIT_ACT_EXP") & vl$status == "needs_input")
set(vl, i = i, j = c("status", "reviewer", "date", "note"),
    value = list("accepted", "Jesse Lecy (decision); logged by Claude Code", "2026-09-28",
                 "Fixed in fix 16: the four slots are PF_09_CHARIT_ACT_DESC_1..4 and PF_09_CHARIT_ACT_EXP_1..4 in the one-row table PF-P09-T01 (wide format)."))
retry(function() write_cc_csv(vl, validation_log_path(), eol = "\n"))

# the 2009-2012 slot xpaths are unobserved in the TY2023 PF evidence; their
# "kept" decision was logged under the old pooled variable names
vl <- read_validation_log()
x <- read_src()$xpaths[grepl("/SummaryOfDirectCharitableActy/", xpath), .(key = xpath, variable_name)]
add <- x[, .(check = "UNOBSERVED", variable_name, key, status = "accepted",
             reviewer = "Claude Code, for review by Jesse Lecy", date = "2026-09-28",
             note = "Kept: 2009-2012 element of the Part IX-A slot; the 990-PF evidence covers TY2023 only, so earlier schema versions are expected to be unobserved.")]
vl <- unique(rbind(vl, add), by = c("check", "variable_name", "key"), fromLast = TRUE)
retry(function() write_cc_csv(vl, validation_log_path(), eol = "\n"))
