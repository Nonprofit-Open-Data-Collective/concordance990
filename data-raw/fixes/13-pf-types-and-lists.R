# Fix 13: 990-PF data types and list-valued fields, from the PF checks re-run
# on the merged mapping (evidence/pf, TY2023).
#   Rscript data-raw/fixes/13-pf-types-and-lists.R

source("data-raw/fixes/_helpers.R")

retype <- function(s, vars, type) {
  stopifnot(all(vars %in% s$variables$variable_name))
  s$variables[variable_name %in% vars, data_type_simple := type]
  x <- s$xpaths[variable_name %in% vars, xpath]
  s$xpath_overrides <- s$xpath_overrides[!(field == "data_type_simple" & xpath %in% x)]
  s
}
fix_step(function(s) {
  s <- retype(s, c("PF_AX11_DEPREC_DESC_PROP", "PF_17_TRANSFER_LINE_NUM", "PF_AX31_LOAN_OFF_SEC_BORROWER",
                   "PF_AX32_NOTE_SEC_BORROWER", "PF_AX40_NOTE_OTH_L_SEC_BORROWER", "PF_AX43_OFF_OTH_SEC_BORROWER"), "text")
  retype(s, "PF_AX51_TRANSF_FR_CE_AMT_TOT", "numeric")
}, reason = "Retype 990-PF variables to match their values: property descriptions, a line-number text and 'security provided by borrower' descriptions are text (0-6% of values numeric); the transfers-from-controlled-entities total is numeric (100% numeric, element TotalAmt).",
   evidence = "TYPE_NUMERIC; NAME_SUFFIX; TYPE_TEXT_NUMERIC (evidence/pf)", type = "retype", affects = TRUE)

fix_step(function(s) {
  v <- c("PF_07_STATES_FILED", "PF_07_FRGN_FIN_ACC_CNTR")
  stopifnot(all(v %in% s$variables$variable_name))
  s$variables[variable_name %in% v, multi_value := "TRUE"]
  s
}, reason = "Mark the 990-PF states where the return is filed and foreign financial-account countries as list-valued (multi_value), as decided for the same 990 fields: the code element repeats (up to 51 and 36 per filing).",
   evidence = "ONE_REPEATS (evidence/pf)", type = "edit", affects = TRUE)
