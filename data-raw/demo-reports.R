# Flag xpaths and render demo validation reports (three per report type).
# Run from the repository root:  Rscript data-raw/demo-reports.R [evidence_dir] [out_dir]

library(data.table)
for (f in c("R/evidence.R", "R/reports.R", "R/flags.R")) source(f)
Sys.setenv(RSTUDIO_PANDOC = "C:/Program Files/RStudio/resources/app/bin/quarto/bin/tools")

args <- commandArgs(trailingOnly = TRUE)
evidence_dir <- if (length(args) >= 1) args[1] else "evidence"
out_dir      <- if (length(args) >= 2) args[2] else "reports"

cc <- fread("concordance.csv", colClasses = "character", na.strings = c("", "NA"))

flags <- flag_xpaths(cc, evidence_dir)
fwrite(flags, file.path(evidence_dir, "xpath_flags.csv"))
print(flags[, .N, by = .(severity, flag_code)][order(severity, -N)])
fwrite(observed_table_groups(cc, evidence_dir), file.path(evidence_dir, "table_groups_observed.csv"))

demo <- c(
  # amount
  "F9_01_REV_TOT_CY", "F9_10_LIAB_TOT_BOY", "SD_12_RECO_EXP_ADD_L4AB",
  # number
  "F9_01_ACT_GVRN_EMPL_TOT", "SR_04_RLTD_ORG_CORP_PCT_OWN", "SH_05_HOSPITAL_NUM",
  # checkbox
  "F9_04_SCHED_B_REQ_X", "F9_05_170C_FUNDS_FOR_PREMIUM_X", "F9_04_GAMING_X",
  # date
  "F9_00_YEAR_FORMATION", "F9_02_SIGNING_OFF_SIGNTR_DATE", "SK_01_BOND_ISSUE_DATE",
  # text
  "F9_03_ORG_MISSION_PURPOSE", "F9_03_PROG_DESC", "SK_01_BOND_ISSUE_PURPOSE_DESC",
  # code
  "F9_06_DISCLOSURE_STATES_FILED", "SR_02_RLTD_ORG_DMCL_STATE", "SN_02_DOA_RECIP_ADDR_CNTR",
  # identifier
  "F9_00_ORG_EIN", "F9_02_PREP_PERS_PTIN", "F9_00_PRIN_OFF_ADDR_ZIP"
)
print(cc[variable_name %in% demo, .(report_type = report_type(.SD)), by = variable_name, .SDcols = names(cc)])

ev  <- load_evidence(evidence_dir)
res <- render_reports(demo, cc, ev, out_dir = out_dir)
print(res)
