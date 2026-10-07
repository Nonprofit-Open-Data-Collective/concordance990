# Fix 24: version fields from filings. The v1 version fields described the XSD
# schemas up to 2016 (2012 and 2016 for most xpaths) and were never updated.
# They are recomputed from the filing evidence of the ef2 DuckDB builds
# (evidence/ for 990 and 990-EZ returns, evidence/pf for 990-PF returns,
# TY2009-2024) with xpath_version_fields():
#   * versions becomes schema_versions: the XSD versions of v1 plus every
#     version the xpath was observed in (either source can have gaps);
#   * latest_version and current_version come from the filings only, and
#     earliest_version is added;
#   * pct_filers_reporting is added: the percent of in-scope filers
#     reporting the xpath in its latest_version year;
#   * duplicated is dropped (v1 used it to reconcile identical xpaths with
#     different metadata; xpaths are unique in 2.0).
# These are derived columns (derived_columns): the change log records the
# columns added and removed, not their values, which are rebuilt from the
# evidence. Later refreshes: data-raw/update-xpath-versions.R.
#   Rscript data-raw/fixes/24-xpath-versions.R

source("data-raw/fixes/_helpers.R")

ev <- "evidence/xpath_stats.csv, evidence/filings.csv (990, 990-EZ) and evidence/pf/xpath_stats.csv, evidence/pf/filings.csv (990-PF); ef2 DuckDB builds TY2009-2024"

fix_step(function(s) {
  # schema_versions starts from the XSD versions of v1
  s$xpaths[, schema_versions := versions]
  s$xpaths[, `:=`(earliest_version = "", pct_filers_reporting = "")]
  s <- update_xpath_versions(s, xpath_observations())
  data.table::setcolorder(s$xpaths, c("schema_versions", "earliest_version"), after = "versions")
  data.table::setcolorder(s$xpaths, "pct_filers_reporting", after = "current_version")
  s
}, reason = "Add the derived version columns: schema_versions (the schema versions an xpath is defined in, from the v1 XSD lists through 2016, or observed in, from filings TY2009-2024; the most inclusive list, replacing versions), earliest_version, and pct_filers_reporting (percent of in-scope filers whose return holds the xpath in its latest_version year). latest_version and current_version are recomputed from filings. Values come from xpath_version_fields() and are not logged cell by cell.",
   evidence = ev, affects = FALSE)

fix_step(function(s) {
  s$xpaths[, c("versions", "duplicated") := NULL]
  s
}, reason = "Remove versions (its XSD versions are kept in schema_versions) and duplicated (v1 used it to reconcile identical xpaths with different metadata; every xpath is unique in 2.0).",
   affects = FALSE)
