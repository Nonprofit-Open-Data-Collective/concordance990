# Fix 20: review of the 990-PF checks on the multi-year evidence (evidence/pf,
# TY2009-2024) after fix 19: one mapping error, and the reviewed cases logged.
#   Rscript data-raw/fixes/20-pf-multiyear-review.R

source("data-raw/fixes/_helpers.R")

# ---- 1. AppliedToEsTaxAmt is Part VI line 6c, not line 11 -----------------------------------
# In the 2013-2016 schemas ExciseTaxBasedOnInvstIncmGrp holds both AppliedToEsTaxAmt
# (between EstimatedPlusOvpmtIncmTxAmt, line 6a, and TotalPaymentsAndCreditsAmt, line 7;
# 6a + it = line 7) and AppliedToESTaxAmt (after OverpaymentAmt, = line 10 - refund).
fix_step(function(s) {
  x <- "/Return/ReturnData/IRS990PF/ExciseTaxBasedOnInvstIncmGrp/AppliedToEsTaxAmt"
  stopifnot(s$xpaths[xpath == x]$variable_name == "PF_06_AMT_CREDITED_NY")
  s <- remap_xpaths(s, x, "PF_06_CREDIT_PAY_TAX_EXTENSION")
  s$xpaths[xpath == x, form_line_number := "Line 06c"]
  s
}, reason = "Move AppliedToEsTaxAmt (2013-2016 schemas) from PF_06_AMT_CREDITED_NY (line 11, credited to next year's estimated tax) to PF_06_CREDIT_PAY_TAX_EXTENSION (line 6c, tax paid with application for extension): it is filed together with AppliedToESTaxAmt in the same group (38,220 filings), sits between lines 6a and 7, and line 6a plus its value equals line 7. Corrects the fix 12 decision, made before the element was observed; PF_06_CREDIT_PAY_TAX_EXTENSION had no filings in exactly 2013-2016.",
   evidence = "COLLISION and GAP (evidence/pf, TY2009-2024); element order and line arithmetic in TY2015 filings; efilepf_v2_3 pivot collisions TY2013-2015", type = "edit", affects = TRUE)

# ---- 2. reviewed flags -----------------------------------------------------------------------------
fl <- fread("evidence/pf/xpath_flags.csv", colClasses = "character")
fl[, key := fifelse(xpath != "", xpath, variable_name)]
note <- c(
  UNMAPPED = "Ignored: container or attachment wrapper with no value of its own (filed empty); its children are mapped.",
  MANY_NOT_REPEATING = "Genuine repeating group: other elements of the same table repeat within filings (TY2009-2024); this element of an older or newer schema did not repeat in the filings observed.",
  ONE_REPEATS = "List-valued field (multi_value = TRUE): repeated values are joined into one cell (decision: J. Lecy, fix 10); 2009-2012 element name.",
  GAP = "Sparse field: no filings in some years, filed before and after; no mapping change.",
  SCALE_BREAK = "Same line under an older and a newer element name; medians differ with the filer population and with zero amounts reported from 2017-2018 on (e-file software; e-file mandate 2020); no mapping change.",
  INCIDENCE_BREAK = "Fill rate changes with e-file software reporting zero amounts from 2017-2018 on and with the 2020 e-file mandate for the 990-PF; same element, no mapping change.")
vl <- read_validation_log()
add <- fl[flag_code %in% names(note), .(check = flag_code, variable_name, key, status = "accepted",
                                        reviewer = "Claude Code, for review by Jesse Lecy", date = "2026-10-06",
                                        note = note[flag_code])]
add <- add[!vl, on = .(check, variable_name, key)]
add <- add[!vl, on = .(check, key)]
retry(function() write_cc_csv(rbind(vl, add, fill = TRUE), validation_log_path(), eol = "\n"))
message(nrow(add), " validation-log entries added")
