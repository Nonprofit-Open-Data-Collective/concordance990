# Fix 06: data types and one pooled amount found by the type and scale checks
# (issues TYPE_NUMERIC, NAME_SUFFIX, V_POOLED_SCALE). Evidence and decisions:
# data-raw/proposals/scale-types.csv.
#   Rscript data-raw/fixes/06-types-and-scale.R

source("data-raw/fixes/_helpers.R")

fix_step(function(s) {
  v <- c("SD_07_INVEST_SEC_DERIVATIVE_MOV", "SD_07_INVEST_SEC_EQ_INT_MOV", "SD_07_INVEST_SEC_OTH_MOV",
         "SD_08_INVEST_PROG_RLTD_MOV", "SD_09_OTH_ASSET_DESC", "SH_05_HOSPITAL_FACILITY_GROUP", "F9_03_PROG_CODE")
  stopifnot(all(v %in% s$variables$variable_name))
  s$variables[variable_name %in% v, data_type_simple := "text"]
  s
}, reason = "Retype to text: Schedule D method-of-valuation codes (C or F), the Schedule D other-asset description, the Schedule H facility reporting group letter and the Part III activity code were typed numeric.",
   evidence = "TYPE_NUMERIC; NAME_SUFFIX; V_POOLED_SCALE; data-raw/proposals/scale-types.csv", type = "retype", affects = TRUE)

fix_step(function(s) remap_xpaths(s, xp("IRS990/TypeOfOrgOtherDescriptionInd"), "F9_00_TYPE_ORG_OTH_X"),
  reason = "Remap the indicator TypeOfOrgOtherDescriptionInd from the description variable F9_00_TYPE_ORG_OTH_DESC to the checkbox F9_00_TYPE_ORG_OTH_X (never observed in filings).",
  evidence = "NAME_SUFFIX", type = "remap", affects = FALSE)

# The TY2009 990-EZ reported special events and gaming together (line 6a);
# its expenses and net already map to the combined F9_08_REV_OTH_EVNT_* variables
fix_step(function(s) {
  s <- add_variable(s, "F9_08_REV_OTH_EVNT_GRO", like = "F9_08_REV_OTH_EVNT_DIRECT_EXP",
                    label = "Gross revenue from fundraising events and gaming activities",
                    description = "Special events and activities: gross revenue (fundraising events and gaming combined)",
                    location_code_family = "F990-PC-PART-08-LINE-08A-09A")
  remap_xpaths(s, xp("IRS990EZ/SpecialEventsGrossRevenue", "IRS990/SpecialEventsGrossRevenue"), "F9_08_REV_OTH_EVNT_GRO")
}, reason = "Move SpecialEventsGrossRevenue (fundraising events and gaming combined, TY2009) out of the gaming-only F9_08_REV_OTH_GAMING into F9_08_REV_OTH_EVNT_GRO, next to the combined direct-expense and net variables (median 10,829 against 0 for gaming).",
   evidence = "V_POOLED_SCALE; reports/F9_08_REV_OTH_GAMING.html", type = "split", affects = TRUE)
