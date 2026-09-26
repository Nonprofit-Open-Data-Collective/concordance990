# Fix 04: variables in two tables, and a variable prefix that does not match
# its table (issues R07, R06).
#   Rscript data-raw/fixes/04-tables-and-names.R

source("data-raw/fixes/_helpers.R")

# R07: Schedule G Part II event totals. The variables live in the one-row
# totals table SG-P02-T00; v1 overrides sent their 2013+ xpaths to the event
# columns table SG-P02-T01, so each total was a column in both tables.
sg_tot <- c("SG_02_FUNDR_EVNT_EXP_ENTMT_TOT", "SG_02_FUNDR_EVNT_EXP_FOOD_TOT", "SG_02_FUNDR_EVNT_EXP_NONCSH_TOT",
            "SG_02_FUNDR_EVNT_EXP_OTH_TOT", "SG_02_FUNDR_EVNT_EXP_RENT_TOT", "SG_02_FUNDR_EVNT_EXP_SUMMARY_TOT",
            "SG_02_FUNDR_EVNT_NET_INCOME_TOT", "SG_02_FUNDR_EVNT_REV_CONTR_TOT", "SG_02_FUNDR_EVNT_REV_GRORCPT_TOT",
            "SG_02_FUNDR_EVNT_REV_GRO_TOT")
fix_step(function(s) {
  x <- s$xpaths[variable_name %in% sg_tot, xpath]
  stopifnot(all(s$variables[variable_name %in% sg_tot, table_id] == "SG-P02-T00-FUNDRAISING-EVENTS"))
  s$xpath_overrides <- s$xpath_overrides[!(field == "rdb_table" & xpath %in% x)]
  s
}, reason = "Schedule G Part II event totals: drop the rdb_table overrides that put the 2013+ xpaths in SG-P02-T01, so each total is one column of the totals table SG-P02-T00 in every year.",
   evidence = "R07", type = "move_table", affects = TRUE)

# R06: a Part V Section B checkbox named with the Part I prefix; its nine
# siblings on the same line (3a-3j) are SH_05_CHNA_DESC_*
fix_step(function(s) rename_variable(s, "SH_01_CHNA_DESC_RESOURCES_X", "SH_05_CHNA_DESC_RESOURCES_X"),
  reason = "Rename SH_01_CHNA_DESC_RESOURCES_X to SH_05_CHNA_DESC_RESOURCES_X: it is Part V Section B line 3c, in table SH-P05-T00, like its SH_05_CHNA_DESC_* siblings.",
  evidence = "R06", affects = TRUE)
