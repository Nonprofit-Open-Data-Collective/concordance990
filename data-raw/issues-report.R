# Build the issues report: every case that fails a structural rule, an
# evidence flag or a value check, with the file, row and column to edit.
# Renders a validation report for each variable with an error, so every case
# links to its evidence. Run from the repository root:
#   Rscript data-raw/issues-report.R

suppressMessages(devtools::load_all(quiet = TRUE))
library(data.table)
Sys.setenv(RSTUDIO_PANDOC = "C:/Program Files/RStudio/resources/app/bin/quarto/bin/tools")

pf_cc_path <- "../irs-efile-master-concordance-file/02-concordance-foundations/F990-PF-FULL.CSV"

# ---- 990 / 990-EZ ---------------------------------------------------------------
cc <- concordance("v1")
flags <- flag_xpaths(cc, "evidence")
fwrite(flags, "evidence/xpath_flags.csv")
ev <- load_evidence("evidence")
vc <- run_value_checks(cc, ev)
fwrite(vc, "evidence/value_checks.csv")

# ---- 990-PF (v1 PF concordance, TY2023 build) ------------------------------------
pf_cc <- read_cc_csv(pf_cc_path)
pf_cc[, `:=`(label = description, location_code_family = location_code)]  # columns the reports expect
flags_pf <- flag_xpaths(pf_cc, "evidence/pf")
fwrite(flags_pf, "evidence/pf/xpath_flags.csv")
ev_pf <- load_evidence("evidence/pf")
vc_pf <- run_value_checks(pf_cc, ev_pf)
fwrite(vc_pf, "evidence/pf/value_checks.csv")

# ---- validation reports for every variable with an error -----------------------
err_vars <- function(fl, v) unique(na.omit(c(fl[severity == "error", variable_name],
                                             v[result == "fail" & code %in% issue_catalog[severity == "error", check], variable_name])))
v990 <- intersect(err_vars(flags, vc), cc$variable_name)
vpf  <- intersect(err_vars(flags_pf, vc_pf), pf_cc$variable_name)
message(length(v990), " 990/990-EZ and ", length(vpf), " 990-PF variables with errors")
render_reports(v990, cc, ev, out_dir = "reports", index = FALSE)
render_reports(vpf, pf_cc, ev_pf, out_dir = "reports/pf", index = FALSE)

# ---- issues -------------------------------------------------------------------------
issues <- collect_issues(read_src(), flags = flags, value_checks_990 = vc,
                         flags_pf = flags_pf, value_checks_pf = vc_pf, pf_concordance = pf_cc,
                         reports_dir = "reports")
commit <- system2("git", c("rev-parse", "--short", "HEAD"), stdout = TRUE)
notes <- c(
  "Component tables" = "structural rules on inst/extdata/src (the v1 baseline, unchanged so far)",
  "990 / 990-EZ filings" = sprintf("ef2 DuckDB builds, tax years %s-%s, %s filings (evidence built %s)",
                                   min(ev$filings$tax_year), max(ev$filings$tax_year),
                                   format(sum(ev$filings$n_filings), big.mark = ","), ev$manifest$built %||% ""),
  "990-PF filings" = sprintf("one ef2pf DuckDB build (EFILEPF2023.duckdb), %s filings; compared with the v1 PF concordance",
                             format(sum(ev_pf$filings$n_filings), big.mark = ",")),
  "Judgement thresholds" = "flags and value checks use the thresholds stated in each section; errors are cases where the evidence points to a mapping or data defect"
)
write_issues_report(issues, "reports/issues.html", commit = commit, notes = notes)
print(issues[, .N, by = .(severity, check)][order(severity, -N)])
