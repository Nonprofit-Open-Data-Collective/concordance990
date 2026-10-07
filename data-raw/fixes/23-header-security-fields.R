# Fix 23: map the unmapped ReturnHeader fields that carry values.
#
# After fix 22, every unmapped xpath in the 990 and 990-PF evidence
# (TY2009-2024) is either an empty container/wrapper (463, no value of its
# own; its children are mapped) or ReturnHeader e-file metadata that was set
# aside in the validation log. Of the latter, the IRS e-file security and
# trusted-customer fields recur in TY2020-2021 returns and sit beside fields
# that are already mapped (F9_00_IRS_SEC_*, F9_00_IRS_TRUST_*), so they are
# added here. Still left out, by decision: the masked preparer SSN (every
# value XXX-XX-XXXX) and the e-file transmission/signature fields (EFIN, PINs,
# software id) leaked into a single TY2017 return. ReturnHeader xpaths are
# shared by the 990 and 990-PF concordances.
#   Rscript data-raw/fixes/23-header-security-fields.R

source("data-raw/fixes/_helpers.R")

hd <- "/Return/ReturnHeader/"
new <- data.table::rbindlist(list(
  list("FilingSecurityInformation/TotalPreparationSubmissionTs", "F9_00_IRS_SEC_PREP_SUBMIT_TIME", "F9_00_IRS_SEC_IP_TIME", "text",
       "Total preparation and submission time", "Verification: total time from return preparation to submission, as reported by the e-file software (zero-padded; 999999 when not measured)"),
  list("FilingSecurityInformation/TotActiveTimePrepSubmissionTs", "F9_00_IRS_SEC_ACTIVE_PREP_TIME", "F9_00_IRS_SEC_IP_TIME", "text",
       "Total active preparation and submission time", "Verification: active time spent preparing and submitting the return, as reported by the e-file software (zero-padded; 999999 when not measured)"),
  list("FilingSecurityInformation/VendorControlNum", "F9_00_IRS_SEC_VENDOR_CTRL_NUM", "F9_00_IRS_SEC_FILING_LIC_TYPE", "text",
       "Vendor control number", "Verification: control number assigned by the e-file software vendor"),
  list("FilingSecurityInformation/AuthenticationReviewTxt", "F9_00_IRS_SEC_AUTH_REVIEW_TXT", "F9_00_IRS_SEC_FILING_LIC_TYPE", "text",
       "Authentication review text", "Verification: authentication review entry (usually a date-time)"),
  list("FilingSecurityInformation/AuthenticationReviewCd", "F9_00_IRS_SEC_AUTH_REVIEW_CD", "F9_00_IRS_SEC_FILING_LIC_TYPE", "text",
       "Authentication review code", "Verification: authentication review code"),
  list("AdditionalFilerInformation/TrustedCustomerGrp/ProfileCellPhoneNumChangeInd", "F9_00_IRS_TRUST_CELL_CHANGE_X", "F9_00_IRS_TRUST_PW_CHANGE_X", "checkbox",
       "Profile cell phone number changed", "Trusted customer: the filer's profile cell phone number was changed"),
  list("AdditionalFilerInformation/TrustedCustomerGrp/PaymentDeclinedReasonCd", "F9_00_IRS_TRUST_PAY_DECLINED_CD", "F9_00_IRS_TRUST_RQR_OOB_X", "text",
       "Payment declined reason code", "Trusted customer: reason code for a declined payment")
))
data.table::setnames(new, c("leaf", "variable_name", "like", "type", "label", "description"))
new[, xpath := paste0(hd, leaf)]

fix_step(function(s) {
  stopifnot(!any(new$xpath %in% s$xpaths$xpath))
  for (i in seq_len(nrow(new)))
    s <- add_variable(s, new$variable_name[i], like = new$like[i], data_type_simple = new$type[i],
                      label = new$label[i], description = new$description[i])
  rows <- data.table::rbindlist(lapply(seq_len(nrow(new)), function(i) {
    r <- data.table::copy(s$xpaths[variable_name == new$like[i]][1])
    for (cl in c("location_code_xsd", "data_type_xsd", "required", "versions", "latest_version", "duplicated",
                 "current_version", "production_rule", "validated")) data.table::set(r, j = cl, value = "")
    r[, `:=`(xpath = new$xpath[i], variable_name = new$variable_name[i])]
    r
  }))
  rows[, v1_order := as.character(max(as.integer(s$xpaths$v1_order)) + seq_len(.N))]
  s$xpaths <- rbind(s$xpaths, rows)
  s
}, reason = "Map seven ReturnHeader e-file security and trusted-customer fields that carry values (TY2020-2021) but were unmapped: total and active preparation-to-submission time, vendor control number, authentication review text and code, profile cell-phone change, and payment-declined reason. New header variables beside the mapped F9_00_IRS_SEC_* and F9_00_IRS_TRUST_* fields.",
   evidence = "UNMAPPED (evidence and evidence/pf, TY2020-2021; 5-157 filings per xpath, values in xpath_values.csv)", type = "add", affects = TRUE)

# the validation log set these aside as IRS-internal; they are mapped now
vl <- read_validation_log()
drop <- vl$check == "UNMAPPED" & vl$key %in% new$xpath
stopifnot(sum(drop) == nrow(new))
retry(function() write_cc_csv(vl[!drop], validation_log_path(), eol = "\n"))
message(sprintf("validation log: removed %d UNMAPPED 'ignored' rows now mapped", sum(drop)))
