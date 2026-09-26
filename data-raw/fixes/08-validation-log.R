# Fix 08: record reviewed cases in the validation log
# (inst/extdata/validation/validation_log.csv). A case that is correct as it
# is, or a false positive of its check, is 'accepted' and drops out of the
# issues list; a case that needs a decision is 'needs_input'; 990-PF cases
# wait for the PF merge (Phase 5) and are 'deferred'.
#   Rscript data-raw/fixes/08-validation-log.R

source("data-raw/fixes/_helpers.R")

reviewer <- "Claude Code, for review by Jesse Lecy"
today <- "2026-09-26"
iss <- fread("reports/issues.csv", colClasses = "character")   # the issues list being resolved
iss[is.na(variable_name), variable_name := ""]
entry <- function(check, variable_name, key, status, note)
  as.data.table(list(check = check, variable_name = variable_name, key = key, status = status,
             reviewer = rep(reviewer, length(check)), date = rep(today, length(check)), note = note))

log <- list()

# ---- decisions from the evidence reviews in data-raw/proposals/ --------------------
card <- fread("data-raw/proposals/cardinality.csv", colClasses = "character")
x <- card[decision %in% c("accept", "needs_input")]
log$card <- entry(x$check, x$variable_name, x$key, ifelse(x$decision == "accept", "accepted", "needs_input"),
                  paste0(ifelse(x$decision == "needs_input", paste0("Needs input (", x$target, "). "), ""), x$rationale))

sc <- fread("data-raw/proposals/scale-types.csv", colClasses = "character")
x <- sc[decision == "accept"]
prog <- grepl("^F9_03_PROG_", x$variable_name)   # part of the Part III table question (memo)
log$scale <- entry(x$check, x$variable_name, x$key, ifelse(prog, "needs_input", "accepted"),
                   ifelse(prog, paste("Depends on the Part III program-table decision (R07). ", x$rationale), x$rationale))

gp <- fread("data-raw/proposals/gaps-unmapped.csv", colClasses = "character")
x <- gp[decision %in% c("accept", "ignore", "needs_input")]
log$gaps <- entry(x$check, x$variable_name, x$key, ifelse(x$decision == "needs_input", "needs_input", "accepted"),
                  paste0(ifelse(x$decision == "ignore", "Ignored (not a data field). ", ""), x$rationale))

# ---- POLARITY: 'Not'/'No' is part of the line's meaning, not a negation ------------
pol <- c(F9_00_EXEMPT_STAT_4947A1_X = "Organization4947a1NotPFInd is the 2013+ name of the same 4947(a)(1) checkbox ('not treated as a private foundation' describes the organization type); values are X in both.",
         F9_06_GVRN_CHANGE_DOC_X = "990-EZ ChgMadeToOrgnzngDocNotRptInd asks whether changes were made (and not reported); yes means changes were made, as on the 990.",
         SD_11_RECO_REV_ADD_L2ABCD = "The line itself is 'amounts not reported'; every xpath of the variable has that meaning.",
         SD_11_RECO_REV_ADD_L4AB = "The line itself is 'amounts not reported'; every xpath of the variable has that meaning.",
         SD_12_RECO_EXP_ADD_L2A_2D = "The line itself is 'amounts not reported'; every xpath of the variable has that meaning.",
         SD_12_RECO_EXP_ADD_L4AB = "The line itself is 'amounts not reported'; every xpath of the variable has that meaning (the pooled revenue xpath was moved in fix 03).",
         SG_03_GAMING_NO_LIC_EXPLANATION = "'ExplanationIfNo' means 'explanation if the answer is no'; all xpaths are that explanation.",
         SR_01_DISREG_ENTITY_CTRL_NA = "NotApplicable / DirectControllingNACd / DirectControllingEntityNA all hold the literal N/A.",
         SR_02_RLTD_ORG_CTRL_NA = "NotApplicable / DirectControllingNACd / DirectControllingEntityNA all hold the literal N/A.",
         SR_03_RLTD_ORG_PTR_CTRL_NA = "NotApplicable / DirectControllingNACd / DirectControllingEntityNA all hold the literal N/A.",
         SR_04_RLTD_ORG_CORP_CTRL_NA = "NotApplicable / DirectControllingNACd / DirectControllingEntityNA all hold the literal N/A.")
x <- iss[check == "POLARITY" & variable_name %in% names(pol)]
log$pol <- entry(x$check, x$variable_name, x$key, "accepted", unname(pol[x$variable_name]))

# ---- COLLISION: US and foreign address of different rows of a repeating table ------
x <- iss[check == "COLLISION" & grepl("_ADDR_", variable_name) & !grepl("PF", source) &
           !variable_name %in% c("F9_06_DISCLOSURE_BOOK_ADDR_STATE")]
log$coll <- entry(x$check, x$variable_name, x$key, "accepted",
  "False positive: counted per filing. Recounted per repeating-element row in the TY2012 and TY2019 DuckDB builds: 0 rows hold both the US and the foreign address xpath (different rows of the table hold different address types). build_evidence() now counts collisions per row.")
log$sa01 <- entry("COLLISION", "SA_01_PCSTAT_SUPPORT_ORG_NUM", iss[check == "COLLISION" & variable_name == "SA_01_PCSTAT_SUPPORT_ORG_NUM"]$key,
  "accepted", "SupportedOrganizationsCnt (line 12f) and SupportedOrganizationsTotalCnt (total row of the 12g table) both report the number of supported organizations; in TY2016 they are equal in 16,466 of 16,548 filings that report both (99.5%), so pooling them loses nothing.")

# ---- UNOBSERVED: kept -------------------------------------------------------------
x <- iss[check == "UNOBSERVED" & !grepl("PF", source)]
log$unobs <- entry(x$check, x$variable_name, x$key, "accepted",
  "Kept. Mapped xpath never seen in TY2009-2024 filings (mostly pre-2013 alternates such as Form990PartI/...); harmless to keep. Revisit against the XSD metadata (Phase 4) before removing.")

# ---- decisions that need input (memo) -------------------------------------------------
x <- iss[check %in% c("R07", "COLLISION") & grepl("^F9_03_PROG_", variable_name)]
log$prog <- entry(x$check, x$variable_name, x$key, "needs_input",
  "Part III programs: one variable name is used in five program tables (4a, 4b, 4c, other, 990-EZ). See the memo in reports/issues-resolved.html.")
x <- iss[check == "R06" & grepl("^SO_00_", variable_name)]
log$so <- entry(x$check, x$variable_name, x$key, "needs_input",
  "Table SO-T99-SUPPLEMENTAL-INFO has no part number; renaming it to SO-P00-T99-SUPPLEMENTAL-INFO changes a table name downstream. See the memo.")

# ---- 990-PF: deferred to the PF merge (Phase 5) ----------------------------------------
x <- iss[grepl("PF", source)]
log$pf <- entry(x$check, x$variable_name, x$key, "deferred",
  "990-PF case: fix after the PF concordance is merged into the component tables (Phase 5) so the change is logged. See the memo for the fix determined for each error.")

vl <- unique(rbindlist(log), by = c("check", "variable_name", "key"))
retry(function() write_cc_csv(vl, validation_log_path(), eol = "\n"))
print(vl[, .N, by = .(status)])
print(vl[, .N, by = .(check, status)][order(check)])
