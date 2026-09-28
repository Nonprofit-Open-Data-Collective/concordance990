# Fix 12: 990-PF follow-up (decisions J. Lecy, 2026-09-28).
# 1. Attachments filed with every form (CompensationExplanation,
#    EmployeeCompensationExpln, ReasonableCauseExplanation) map per form:
#    990 returns keep the 990 variables; 990-PF returns, parsed as a separate
#    database, use the PF variables of the PF file (xpath_forms.csv).
# 2. Variables for the PF rows the PF file left without one.
#   Rscript data-raw/fixes/12-pf-forms-and-gaps.R

source("data-raw/fixes/_helpers.R")
pf_xlsx <- "../irs-efile-master-concordance-file/02-concordance-foundations/F990-PF-FULL.xlsx"
pf <- as.data.table(openxlsx::read.xlsx(pf_xlsx, sheet = "F990-PF-FULL", na.strings = character(0)))
pf <- pf[, lapply(.SD, function(x) { x <- as.character(x); x[is.na(x)] <- ""; x })]
shared <- fread("data-raw/proposals/pf-shared-xpaths.csv")[pf_variable != variable_name]
modal <- function(x) { u <- unique(x); u[which.max(tabulate(match(x, u)))] }

# ---- 1. per-form mapping of the shared attachments --------------------------------------
fix_step(function(s) {
  pv <- pf[variable_name %in% shared$pf_variable]
  # tables the PF file uses for them that were not imported (all their xpaths were shared)
  for (tb in setdiff(unique(pv$rdb_table), s$tables$table_id))
    s$tables <- rbind(s$tables, data.table(table_id = tb, part_id = "PF-P99", form_id = "F990PF",
                                           cardinality = modal(pv[rdb_table == tb, rdb_relationship]), title = "",
                                           sort_order = as.character(max(as.integer(s$tables$sort_order)) + 1L)))
  for (v in setdiff(unique(pv$variable_name), s$variables$variable_name)) {
    r <- pv[variable_name == v]
    s$variables <- rbind(s$variables, data.table(
      variable_name = v, family_id = v, table_id = modal(r$rdb_table), label = modal(r$label),
      description = modal(r$description), location_code_family = modal(r$location_code_family),
      variable_scope = modal(r$variable_scope), data_type_simple = modal(r$data_type_simple),
      multi_value = ""), fill = TRUE)
  }
  s$xpath_forms <- rbind(s$xpath_forms, shared[, .(xpath, form_id = "F990PF", variable_name = pf_variable)])
  s
}, reason = "Map the attachments filed with every form (CompensationExplanation, EmployeeCompensationExpln, ReasonableCauseExplanation) per form: 990 returns keep the 990 variables, 990-PF returns use the PF variables of the PF file (xpath_forms.csv), because 990-PF filings are parsed as a separate database (decision: J. Lecy).",
   evidence = "data-raw/proposals/pf-shared-xpaths.csv", type = "add", affects = TRUE)

# ---- 2. the PF rows without a variable ------------------------------------------------------
new_pf_xpath <- function(s, xps, var, like_var) {
  lk <- s$xpaths[variable_name == like_var][1]
  rows <- rbindlist(lapply(xps, function(x) {
    src <- pf[xpath == x]
    r <- copy(lk)
    for (cl in intersect(names(r), names(src))) if (!cl %in% c("variable_name")) set(r, j = cl, value = src[[cl]])
    r[, `:=`(xpath = x, variable_name = var, form = "F990PF")]
    r
  }))
  rows[, v1_order := as.character(max(as.integer(s$xpaths$v1_order)) + seq_len(.N))]
  s$xpaths <- rbind(s$xpaths, rows[, names(s$xpaths), with = FALSE])
  s
}
fix_step(function(s) {
  xp6 <- function(x) paste0("/Return/ReturnData/IRS990PF/", x)
  # never observed; the observed spelling AppliedToESTaxAmt is PF_06_AMT_CREDITED_NY (line 11)
  s <- new_pf_xpath(s, xp6("ExciseTaxBasedOnInvstIncmGrp/AppliedToEsTaxAmt"), "PF_06_AMT_CREDITED_NY", "PF_06_AMT_CREDITED_NY")
  # amended returns: Part VI line 7 detail (TY2023: ~930 and ~2,300 filings)
  s <- add_variable(s, "PF_06_ORIG_RETURN_OVERPAY", like = "PF_06_CREDIT_PAY_TOT",
                    label = "Overpayment on the original return (amended return)", description = "Original Return Overpayment")
  s <- new_pf_xpath(s, xp6(c("ExciseTaxBasedOnInvestmentIncm/OriginalReturnOverpayment", "ExciseTaxBasedOnInvstIncmGrp/OriginalReturnOverpaymentAmt")),
                    "PF_06_ORIG_RETURN_OVERPAY", "PF_06_CREDIT_PAY_TOT")
  s <- add_variable(s, "PF_06_ORIG_RETURN_TAX_PAID", like = "PF_06_CREDIT_PAY_TOT",
                    label = "Tax paid with the original return (amended return)", description = "Tax Paid with the Original Return")
  s <- new_pf_xpath(s, xp6(c("ExciseTaxBasedOnInvestmentIncm/TaxPaidOriginalReturn", "ExciseTaxBasedOnInvstIncmGrp/OriginalReturnTaxPaidAmt")),
                    "PF_06_ORIG_RETURN_TAX_PAID", "PF_06_CREDIT_PAY_TOT")
  # Part VII-A lines 11 and 12 (older schemas)
  s <- add_variable(s, "PF_07_BINDING_CONTRACT_X", like = "PF_07_LTD_X",
                    label = "Binding written contract covering interest, rents, royalties and annuities (line 11) [x]",
                    description = pf[xpath == xp6("StatementsRegardingActivities/BindingWrittenContract"), description])
  s <- new_pf_xpath(s, xp6("StatementsRegardingActivities/BindingWrittenContract"), "PF_07_BINDING_CONTRACT_X", "PF_07_LTD_X")
  s <- add_variable(s, "PF_07_INSURANCE_CONTRACT_X", like = "PF_07_LTD_X",
                    label = "Acquired an interest in an applicable insurance contract (line 12) [x]",
                    description = "Did the organization acquire a direct or indirect interest in any applicable insurance contract?")
  s <- new_pf_xpath(s, xp6("StatementsRegardingActivities/ApplicableInsuranceContract"), "PF_07_INSURANCE_CONTRACT_X", "PF_07_LTD_X")
  # Part VII-B line 2: years to which 4942(a)(2) is not applied
  for (k in 1:4) {
    v <- paste0("PF_07_4720_UNDIST_N_APP_Y_", k)
    s <- add_variable(s, v, like = paste0("PF_07_4720_INCOME_UNDIST_APP_Y_", k),
                      label = sprintf("Undistributed income: section 4942(a)(2) not applied, year %d", k),
                      description = sprintf("Undistributed Income 4942(a)(2) Not Applied Year %d", k))
    s <- new_pf_xpath(s, xp6(paste0("StatementsRegardingActy4720/UndistrIncome4942a2NotAppYear", k)), v,
                      paste0("PF_07_4720_INCOME_UNDIST_APP_Y_", k))
  }
  s
}, reason = "Add variables for the 990-PF rows the PF file left without one: amended-return overpayment and tax paid with the original return (Part VI), binding written contract and applicable insurance contract (Part VII-A lines 11-12), undistributed income not applied under 4942(a)(2), years 1-4 (Part VII-B); the unobserved spelling AppliedToEsTaxAmt joins PF_06_AMT_CREDITED_NY (decision: J. Lecy).",
   evidence = "data-raw/proposals/pf-unmapped-rows.csv; evidence/pf/xpath_stats.csv", type = "add", affects = TRUE)
