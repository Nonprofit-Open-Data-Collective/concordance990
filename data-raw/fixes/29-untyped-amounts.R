# Fix 29: type the dollar amounts that no local IRS schema declares.
#
# Fix 26 filled blank data_type_xsd from the 990, 990-EZ and 990-PF XSDs of
# TY2009-2023. Thirty numeric variables were left with no type on any xpath,
# because their xpaths appear in none of those schemas (schema_versions is
# blank: they come from versions missing from 990-schemas, such as 2011 and
# 2012). data_dictionary() marks a variable as money only when its XSD type is
# an amount type, so a blank cell in these variables reads as missing instead
# of zero (review of concordance990#20).
#
# Twenty-six of them are dollar amounts by their labels -- sales price, cost
# basis, sales expenses and net gain on the 990-PF securities statements,
# the Part VII compensation subtotals, the Part IX professional fundraising
# fees, the Schedule A support-schedule amounts, and lobbying through paid
# staff -- and where the schema declares sibling elements they are
# USAmountType. Their xpaths get USAmountType, the IRS's general amount type.
#
# The other four, PF_07_4720_UNDIST_N_APP_Y_1-4 (years to which section
# 4942(a)(2) is not applied), are years: their siblings are YearType. They
# stay untyped here and are not money.
#   Rscript data-raw/fixes/29-untyped-amounts.R

source("data-raw/fixes/_helpers.R")

amounts <- c(
  "F9_07_COMP_DTK_COMP_ORG_SUBTOT", "F9_07_COMP_DTK_COMP_RLTD_SUBTOT", "F9_07_COMP_DTK_COMP_OTH_SUBTOT",
  "F9_09_EXP_FEE_SVC_FUNDR_PROG", "F9_09_EXP_FEE_SVC_FUNDR_MGMT",
  "SA_02_TOT_AMT_L4_CY_M4", "SA_02_TOT_AMT_L4_CY_M3", "SA_02_TOT_AMT_L4_CY_M2", "SA_02_TOT_AMT_L4_CY_M1",
  "SA_02_TOT_AMT_L4_CY", "SA_02_TOT_AMT_L4_CY_TOT",
  "SA_03_TOT_AMT_L6_CY_M4", "SA_03_TOT_AMT_L6_CY_M3", "SA_03_TOT_AMT_L6_CY_M2", "SA_03_TOT_AMT_L6_CY_M1",
  "SA_03_TOT_AMT_L6_TOT",
  "SC_02_LOB_ACT_PAID_STAFF_AMT",
  "PF_AX19_SALE_SEC_BASIS", "PF_AX19_SALE_SEC_GRO_SALE", "PF_AX19_SALE_SEC_SALE_EXP", "PF_AX19_SALE_SEC_TOT_NET",
  "PF_AX21_SALE_PUB_SEC_BASIS", "PF_AX21_SALE_PUB_SEC_GRO_SALE", "PF_AX21_SALE_PUB_SEC_SALE_EXP",
  "PF_AX21_SALE_PUB_SEC_TOT_NET",
  "PF_AX27_INVEST_OTH_COST_BASIS"
)

fix_reason <- "Type as USAmountType the xpaths of 26 numeric dollar-amount variables that no local IRS schema declares (fix 26 left them blank), so data_dictionary() marks them as money and reads a blank as zero."
fix_step(function(s) {
  stopifnot(length(amounts) == 26L,
            all(amounts %in% s$variables$variable_name),
            all(s$variables[match(amounts, variable_name), data_type_simple] == "numeric"))
  x <- s$xpaths
  hit <- x$variable_name %in% amounts
  stopifnot(all(x$data_type_xsd[hit] == ""))
  x[hit, data_type_xsd := "USAmountType"]
  message(sprintf("typed %d xpaths of %d variables", sum(hit), length(amounts)))
  s$xpaths <- x
  s
}, reason = fix_reason,
   evidence = "Labels name each as a dollar amount; sibling elements the schemas declare are USAmountType (data-raw/xsd/xsd-types.csv). The xpaths have no schema_versions.",
   affects = FALSE)

# Logged for the next release, not the package version this ran under
ch <- read_changelog()
ch[reason == fix_reason, version := "2.0.3"]
retry(function() write_changelog(ch))
