# Build filing evidence (PLAN.md section 5) from the ef2 DuckDB builds.
# Run from the repository root:  Rscript data-raw/build-evidence.R [years]

source("R/evidence.R")

args  <- commandArgs(trailingOnly = TRUE)
years <- if (length(args)) as.integer(args) else 2009:2024

cc <- data.table::fread("concordance.csv", colClasses = "character",
                        na.strings = c("", "NA"))

timings <- build_evidence(
  years        = years,
  base_path    = "C:/Users/jlecy/Documents/EFILE_BUILD_SEPT_2026",
  out_dir      = "evidence",
  concordance  = cc,
  temp_dir     = file.path(tempdir(), "duckdb_spill"),
  memory_limit = "80GB"
)
print(timings)

combine_evidence("evidence")

manifest <- list(
  built         = format(Sys.time(), "%Y-%m-%d %H:%M:%S %Z"),
  years         = years,
  source        = "C:/Users/jlecy/Documents/EFILE_BUILD_SEPT_2026/<year>/EFILE<year>.duckdb",
  concordance   = "concordance.csv",
  concordance_md5 = unname(tools::md5sum("concordance.csv")),
  duckdb        = as.character(utils::packageVersion("duckdb"))
)
jsonlite::write_json(manifest, "evidence/manifest.json", auto_unbox = TRUE, pretty = TRUE)
