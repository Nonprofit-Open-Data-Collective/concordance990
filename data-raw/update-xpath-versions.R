# Refresh the derived xpath version fields (schema_versions,
# earliest_version, latest_version, current_version, pct_filers_reporting)
# from the filing evidence. They are derived columns, so the change log does
# not record their values. Rebuild the evidence from the ef2 DuckDB builds
# first when there are new years or rebuilt databases:
#   Rscript data-raw/build-evidence.R      # 990 and 990-EZ -> evidence/
#   Rscript data-raw/build-evidence-pf.R   # 990-PF         -> evidence/pf/
# then, from the repository root:
#   Rscript data-raw/update-xpath-versions.R
#   Rscript data-raw/build-concordance.R

suppressMessages(devtools::load_all(quiet = TRUE))

obs <- xpath_observations(c("evidence", "evidence/pf"))
old <- read_src()
new <- update_xpath_versions(old, obs)
n <- sum(vapply(setdiff(derived_columns, c("versions", "duplicated")),
                function(cl) sum(old$xpaths[[cl]] != new$xpaths[[cl]]), 0))
write_src(new)
message(sprintf("Version fields refreshed from TY%d-%d evidence: %d cells changed.",
                min(obs$filings$tax_year), max(obs$filings$tax_year), n))
