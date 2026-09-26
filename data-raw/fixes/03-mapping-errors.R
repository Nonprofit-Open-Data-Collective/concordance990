# Fix 03: mapping errors with clear evidence (issues POLARITY, TYPE_CHECKBOX,
# COLLISION). Each step moves xpaths that mean something different to the
# right variable, adding a variable where none exists.
#   Rscript data-raw/fixes/03-mapping-errors.R

source("data-raw/fixes/_helpers.R")
hdr <- function(...) paste0("/Return/ReturnHeader/FilingSecurityInformation/", c(...))

# POLARITY: 990-EZ "Schedule B not required" checkbox pooled with the 990
# "Schedule B required" yes/no answer
fix_step(function(s) {
  s <- add_variable(s, "F9_04_SCHED_B_NOT_REQ_X", like = "F9_04_SCHED_B_REQ_X",
                    label = "Schedule B not required [x]",
                    description = "Indicates Schedule B is not required (990-EZ checkbox; the opposite of F9_04_SCHED_B_REQ_X)")
  s <- remap_xpaths(s, xp("IRS990/ScheduleBNotRequired", "IRS990EZ/ScheduleBNotRequired",
                          "IRS990EZ/ScheduleBNotRequiredInd"), "F9_04_SCHED_B_NOT_REQ_X")
  s <- set_var(s, "F9_04_SCHED_B_REQ_X", description = "Indicates Schedule B is required")
  add_family(s, "F9_04_SCHED_B_REQ_X", "F9_04_SCHED_B_NOT_REQ_X", label = "Schedule B required",
             definition = "Whether Schedule B (contributors) is required. The 990 answers yes/no (F9_04_SCHED_B_REQ_X); the 990-EZ checks a box when it is NOT required (F9_04_SCHED_B_NOT_REQ_X), so the two have opposite polarity.")
}, reason = "Split the negated ScheduleBNotRequired xpaths from F9_04_SCHED_B_REQ_X: pooled, the same value meant opposite things on the 990 and the 990-EZ.",
   evidence = "POLARITY; reports/F9_04_SCHED_B_REQ_X.html", type = "split", affects = TRUE)

# TYPE_CHECKBOX: the 990-EZ free-text declaration pooled with a checkbox
fix_step(function(s) {
  s <- add_variable(s, "F9_05_170C_PREMIUM_DECL_TEXT", like = "F9_05_170C_FUNDS_FOR_PREMIUM_X",
                    label = "Declaration on funds to pay premiums on personal benefit contracts",
                    description = "Text of the statement on funds received to pay premiums on a personal benefit contract (TransferPrsnlBnftContractsDecl, filed with the 990-EZ)",
                    variable_scope = "PZ", data_type_simple = "text")
  s <- remap_xpaths(s, xp("TransferPrsnlBnftContractsDecl/Declaration", "TransferPrsnlBnftContractsDecl/DeclarationDesc"),
                    "F9_05_170C_PREMIUM_DECL_TEXT")
  add_family(s, "F9_05_170C_FUNDS_FOR_PREMIUM_X", "F9_05_170C_PREMIUM_DECL_TEXT",
             label = "Funds to pay premiums on a personal benefit contract",
             definition = "990 Part V line 7e is a yes/no checkbox (F9_05_170C_FUNDS_FOR_PREMIUM_X); 990-EZ filers attach a free-text declaration instead (F9_05_170C_PREMIUM_DECL_TEXT).")
}, reason = "Move the free-text TransferPrsnlBnftContractsDecl declaration out of the checkbox F9_05_170C_FUNDS_FOR_PREMIUM_X into a text variable (0% of its values were checkbox codes).",
   evidence = "TYPE_CHECKBOX; reports/F9_05_170C_FUNDS_FOR_PREMIUM_X.html", type = "split", affects = TRUE)

# POLARITY + COLLISION: the 2009-2012 revenue reconciliation total (Part XI
# line 4c) mapped to the expense reconciliation variable
fix_step(function(s) remap_xpaths(s, xp("IRS990ScheduleD/RevenueNotRptdOnFinStmt"), "SD_11_RECO_REV_ADD_L4AB"),
  reason = "Remap Schedule D RevenueNotRptdOnFinStmt (revenue reconciliation, line 4c) from the expense variable SD_12_RECO_EXP_ADD_L4AB to the revenue variable SD_11_RECO_REV_ADD_L4AB; both were filled in 142,765 filings.",
  evidence = "POLARITY; COLLISION; reports/SD_12_RECO_EXP_ADD_L4AB.html", type = "remap", affects = TRUE)

# POLARITY: two unobserved Schedule F xpaths swapped between variables
fix_step(function(s) {
  s <- remap_xpaths(s, xp("IRS990ScheduleF/Form990ScheduleFPartI/NoRecipientOver5K"), "SF_99_FRGN_ORG_GRANT_LT_5K_X")
  remap_xpaths(s, xp("IRS990ScheduleF/Form990ScheduleFPartII/GrantRecordsMaintained"), "SF_01_GRANT_RECORD_MAINT_X")
}, reason = "Swap two Schedule F xpaths that were mapped to each other's variable: NoRecipientOver5K belongs to SF_99_FRGN_ORG_GRANT_LT_5K_X and GrantRecordsMaintained to SF_01_GRANT_RECORD_MAINT_X.",
   evidence = "POLARITY; reports/SF_01_GRANT_RECORD_MAINT_X.html", type = "remap", affects = FALSE)

# COLLISION: two different device ids
fix_step(function(s) {
  s <- add_variable(s, "F9_00_IRS_SEC_FILING_DEVICE_ID", like = "F9_00_IRS_SEC_DEVICE_ID",
                    label = "Device id at submission filing", description = "Verification: device id when the submission was filed")
  s <- set_var(s, "F9_00_IRS_SEC_DEVICE_ID", label = "Device id at submission creation",
               description = "Verification: device id when the submission was created")
  remap_xpaths(s, hdr("AtSubmissionFilingDeviceId"), "F9_00_IRS_SEC_FILING_DEVICE_ID")
}, reason = "Split AtSubmissionFilingDeviceId from AtSubmissionCreationDeviceId: two different device ids, both filled in 1,194,944 filings.",
   evidence = "COLLISION; reports/F9_00_IRS_SEC_DEVICE_ID.html", type = "split", affects = TRUE)

# COLLISION: submission id pooled with its date
fix_step(function(s) {
  s <- add_variable(s, "F9_00_IRS_SEC_SUBMISSION_DATE", like = "F9_00_IRS_SEC_SUBMISSION_ID",
                    label = "Federal original submission date", description = "Verification: date of the federal original submission",
                    data_type_simple = "date")
  s <- set_var(s, "F9_00_IRS_SEC_SUBMISSION_ID", label = "Federal original submission id",
               description = "Verification: id of the federal original submission")
  remap_xpaths(s, hdr("FederalOriginalSubmissionIdDt"), "F9_00_IRS_SEC_SUBMISSION_DATE")
}, reason = "Split FederalOriginalSubmissionIdDt (a date) from FederalOriginalSubmissionId; both were filled in 203,758 filings.",
   evidence = "COLLISION; reports/F9_00_IRS_SEC_SUBMISSION_ID.html", type = "split", affects = TRUE)

# COLLISION: foreign country code pooled with the state
fix_step(function(s) remap_xpaths(s, xp("IRS990/BooksInCareOfDetail/ForeignAddress/CountryCd"), "F9_06_DISCLOSURE_BOOK_ADDR_CNTR"),
  reason = "Remap the books-in-care-of foreign CountryCd from the state variable F9_06_DISCLOSURE_BOOK_ADDR_STATE to the country variable F9_06_DISCLOSURE_BOOK_ADDR_CNTR (the 990-EZ CountryCd is already there).",
  evidence = "COLLISION; reports/F9_06_DISCLOSURE_BOOK_ADDR_STATE.html", type = "remap", affects = TRUE)

# COLLISION: current-year and prior-year columns pooled
fix_step(function(s) {
  s <- add_variable(s, "SA_05_ASSET_MINIM_INDEPTED_PY", like = "SA_05_ASSET_MINIM_INDEPTED_CY",
                    label = "Acquisition indebtedness applicable to non-exempt-use assets - prior year",
                    description = "Prior year amount",
                    location_code_family = "SCHED-A-PART-05-SECTION-B-LINE-02-COL-A")
  s <- set_var(s, "SA_05_ASSET_MINIM_INDEPTED_CY",
               label = "Acquisition indebtedness applicable to non-exempt-use assets - current year",
               description = "Current year amount", location_code_family = "SCHED-A-PART-05-SECTION-B-LINE-02-COL-B")
  remap_xpaths(s, xp("IRS990ScheduleA/MinimumAssetAmountGrp/AcquisitionIndebtednessGrp/PriorYearAmt"), "SA_05_ASSET_MINIM_INDEPTED_PY")
}, reason = "Split the prior-year column (Section B line 2, column A) from SA_05_ASSET_MINIM_INDEPTED_CY into SA_05_ASSET_MINIM_INDEPTED_PY, and correct the labels (acquisition indebtedness, not total FMV).",
   evidence = "COLLISION; reports/SA_05_ASSET_MINIM_INDEPTED_CY.html", type = "split", affects = TRUE)

# COLLISION: per-facility line numbers pooled with the count of facilities
fix_step(function(s) {
  s <- add_variable(s, "SH_05_HOSPITAL_FACILITY_NUM", like = "SH_05_HOSPITAL_NUM",
                    table_id = "SH-P05-T01-HOSPITAL-FACILITY", label = "Hospital facility line number",
                    description = "Line number of the hospital facility in Part V, Section A")
  s <- add_variable(s, "SH_05_NON_HOSPITAL_FACILITY_NUM", like = "SH_05_NON_HOSPITAL_NUM",
                    table_id = "SH-P05-T02-NON-HOSPITAL-FACILITY", label = "Non-hospital facility line number",
                    description = "Line number of the non-hospital health care facility in Part V, Section D")
  s <- set_var(s, "SH_05_HOSPITAL_NUM", description = "Number of hospital facilities")
  s <- remap_xpaths(s, xp("IRS990ScheduleH/Form990ScheduleHPartVSectionA/FacilityNumber",
                          "IRS990ScheduleH/HospitalFacilitiesGrp/FacilityNum"), "SH_05_HOSPITAL_FACILITY_NUM")
  remap_xpaths(s, xp("IRS990ScheduleH/OthHlthCareFcltsNotHospitalGrp/FacilityNum"), "SH_05_NON_HOSPITAL_FACILITY_NUM")
}, reason = "Move the per-facility line numbers (FacilityNum inside the repeating facility groups) out of the one-per-filing facility counts into variables in the facility tables SH-P05-T01 and SH-P05-T02.",
   evidence = "COLLISION; reports/SH_05_HOSPITAL_NUM.html; evidence/xpath_groups.csv", type = "split", affects = TRUE)

# COLLISION: 2018+ refunding of tax-exempt bonds (the successor of "current
# refunding", line 14) pooled with refunding of taxable bonds (line 15)
fix_step(function(s) remap_xpaths(s, xp("IRS990ScheduleK/TaxExemptBondsProceedsGrp/RefundingTaxExemptBondsInd"),
                                  "SK_02_BOND_PROCEED_REFUND_CURR_X"),
  reason = "Remap RefundingTaxExemptBondsInd (2018+) to SK_02_BOND_PROCEED_REFUND_CURR_X, whose label is 'refunding issue of tax-exempt bonds or a current refunding issue'; it was pooled with RefundingTaxableBondsInd in SK_02_BOND_PROCEED_REFUND_ADVC_X.",
  evidence = "COLLISION; reports/SK_02_BOND_PROCEED_REFUND_ADVC_X.html", type = "remap", affects = TRUE)

# COLLISION: Schedule H Part VI supplemental information mapped to Part V
fix_step(function(s) {
  s <- remap_xpaths(s, xp("IRS990ScheduleH/SupplementalInformationDetail/ExplanationTxt"), "SH_06_EXPLANATION_TEXT")
  s <- remap_xpaths(s, xp("IRS990ScheduleH/SupplementalInformationDetail/FormAndLineReferenceDesc"), "SH_06_RETURN_REFERENCE")
  s <- remap_xpaths(s, xp("IRS990ScheduleH/SupplementalInformationDetail/IdentifierTxt"), "SH_06_IDENTIFIER")
  drop_variable(s, "SH_05_IDENTIFIER")
}, reason = "Remap the 2013+ Schedule H SupplementalInformationDetail elements (Part VI) from the Part V Section C variables to the Part VI variables that hold their 2010-2012 predecessors; v1 already coded them SCHED-H-PART-06.",
   evidence = "COLLISION; reports/SH_05_EXPLANATION_TEXT.html; reports/SH_05_FORM_LINE_REFERENCE.html", type = "remap", affects = TRUE)
