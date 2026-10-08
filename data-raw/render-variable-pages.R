# Render the light validation pages (one per variable) into docs/variables,
# published with the pkgdown site at .../concordance990/variables/.
#
# Needs the filing evidence (evidence/ and evidence/pf/, built from the ef2
# DuckDB files by build_evidence(); not committed). Flags are recomputed
# here for the current concordance, so pages never show flags of an older
# mapping. Run from the repository root after rebuilding the concordance:
#   Rscript data-raw/render-variable-pages.R
#
# Commit the pages on their own: a full render touches every page.

suppressMessages(devtools::load_all(quiet = TRUE))
library(data.table)

read_cc <- function(f) fread(f, colClasses = "character", na.strings = c("", "NA"))
flags <- rbind(flag_xpaths(read_cc("concordance.csv"), "evidence"),
               flag_xpaths(read_cc("concordance-990pf.csv"), "evidence/pf"), fill = TRUE)
message(sprintf("%d flags", nrow(flags)))

out_dir <- file.path("docs", "variables")
unlink(out_dir, recursive = TRUE)  # drop pages of renamed or removed variables
t0 <- Sys.time()
res <- render_variable_pages(flags = flags, out_dir = out_dir)
message(sprintf("%d pages in %s", nrow(res), format(round(Sys.time() - t0))))
print(res[, .(pages = .N, failing_check = sum(n_fail > 0), warnings = sum(n_warn > 0),
              open_flags = sum(n_flags_open > 0), never_observed = sum(n_filings == 0))])
