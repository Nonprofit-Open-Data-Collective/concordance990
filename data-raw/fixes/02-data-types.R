# Fix 02: data types (issues V_ID_TEXT, R09).
#   Rscript data-raw/fixes/02-data-types.R

source("data-raw/fixes/_helpers.R")

set_type <- function(s, vars, type) {
  stopifnot(all(vars %in% s$variables$variable_name))
  s$variables[variable_name %in% vars, data_type_simple := type]
  s
}

# V_ID_TEXT: identifiers typed numeric. EINs, phone numbers, PTINs, SSNs,
# ZIP codes and CUSIPs keep leading zeros and letters only as text.
id_vars <- c("F9_00_ORG_EIN", "F9_00_ORG_PHONE", "F9_02_PREP_FIRM_EIN", "F9_02_PREP_PERS_PHONE",
             "F9_02_PREP_PERS_PTIN", "F9_02_PREP_PERS_SSN", "F9_02_SIGNING_OFF_PHONE",
             "F9_02_SIGNING_OFF_SSN", "F9_06_DISCLOSURE_BOOK_PHONE", "SA_01_PCSTAT_ORG_EIN",
             "SB_01_CONTRIBUTOR_ADDR_ZIP", "SC_01_POLI_ORG_EIN", "SI_02_GRANT_US_ORG_EIN",
             "SK_01_BOND_ISSUER_EIN", "SK_01_BOND_ISSUE_CUSIP_NUM", "SN_01_LTD_RECIP_EIN",
             "SN_02_DOA_RECIP_EIN", "SR_01_DISREG_ENTITY_EIN", "SR_02_RLTD_ORG_EIN",
             "SR_03_RLTD_ORG_PTR_EIN", "SR_04_RLTD_ORG_CORP_EIN", "SR_06_UNRLTD_ORG_PTR_EIN")
fix_step(function(s) set_type(s, id_vars, "text"),
  reason = "Identifiers (EIN, phone, PTIN, SSN, ZIP, CUSIP) are text: numeric storage drops leading zeros and letters.",
  evidence = "V_ID_TEXT; reports/<variable>.html", type = "retype", affects = TRUE)

# R09: variables with no data type. Types follow the IRS element type and the
# observed values (evidence/xpath_stats.csv, xpath_values.csv).
fix_step(function(s) {
  s <- set_type(s, c("F9_00_FORM_8822B_X", "F9_00_IRS_RESP_PARTY_INFO_CURR_X",
                     "F9_00_IRS_TRUST_PROFILE_CHANGE_X", "F9_00_IRS_TRUST_PW_CHANGE_X",
                     "F9_00_IRS_TRUST_USRNAME_CHANGE_X"), "checkbox")          # ...Ind elements, values X/true
  s <- set_type(s, "F9_00_IRS_SEC_IP_DATE", "date")                            # IPDt, YYYY-MM-DD
  s <- set_type(s, "SB_01_CONTRIBUTOR_AMOUNT", "numeric")                      # TotalContributionsAmt
  s <- set_type(s, "SB_01_CONTRIBUTOR_TYPE", "numeric")                        # ContributorNum: line number
  s <- set_type(s, c("F9_00_DISASTER_RELIEF", "F9_00_IRS_SEC_DEVICE_ID", "F9_00_IRS_SEC_FILING_LIC_TYPE",
                     "F9_00_IRS_SEC_IP_ADDR", "F9_00_IRS_SEC_IP_TIME", "F9_00_IRS_SEC_IP_TIME_ZONE",
                     "F9_00_IRS_SEC_SUBMISSION_ID",
                     # ...Cd elements holding assurance-level codes (AAL1, IAL1, FAL1, 00-03, 0/1)
                     "F9_00_IRS_TRUST_AUTENTICATED_X", "F9_00_IRS_TRUST_CUSTOMER_X",
                     "F9_00_IRS_TRUST_FED_ASSURANCE_X", "F9_00_IRS_TRUST_IDENTITY_X",
                     "F9_00_IRS_TRUST_OOB_VERIFIED_X", "F9_00_IRS_TRUST_RQR_OOB_X",
                     "SB_01_CONTRIBUTOR_ADDR_CITY", "SB_01_CONTRIBUTOR_ADDR_L1", "SB_01_CONTRIBUTOR_ADDR_L2",
                     "SB_01_CONTRIBUTOR_ADDR_STATE", "SB_01_CONTRIBUTOR_NAME_L1",
                     "SN_03_EXPLANATION_TEXT"), "text")
  s
}, reason = "Assign a data type to variables that had none, from the IRS element type and the observed values.",
   evidence = "R09; evidence/xpath_stats.csv", type = "retype", affects = TRUE)

# Overrides made redundant (SN_03 xpaths already overridden to text) or wrong
# (a free-text description element overridden to checkbox)
fix_step(function(s) {
  ov <- s$xpath_overrides
  s$xpath_overrides <- ov[!(field == "data_type_simple" &
                              xpath %in% c("/Return/ReturnData/IRS990ScheduleN/Form990ScheduleNPartIII/ExplanatoryText",
                                           "/Return/ReturnData/IRS990ScheduleN/SupplementalInformationDetail/ExplanationTxt",
                                           "/Return/ReturnData/IRS990/Form990PartI/TypeOfOrgOtherDescription"))]
  s
}, reason = "Remove data_type_simple overrides that now equal the variable type, and one that typed the free-text TypeOfOrgOtherDescription as a checkbox.",
   evidence = "R09; xpath_overrides", type = "resolve_conflict", affects = TRUE)
