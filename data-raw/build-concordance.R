# Build the unified concordance from the component tables and write the
# generated copies at the repository root. Run from the repository root:
#   Rscript data-raw/build-concordance.R

library(data.table)
for (f in c("R/io.R", "R/split.R", "R/build.R", "R/api.R")) source(f)

cc <- build_concordance("inst/extdata/src", format = "v1")
write_concordance(cc, "concordance.csv", xlsx = "concordance.xlsx")

ref <- "inst/extdata/v1/concordance-v1.csv"
same <- unname(tools::md5sum("concordance.csv")) == unname(tools::md5sum(ref))
message(sprintf("concordance.csv: %d rows; identical to v1 reference: %s", nrow(cc), same))
