# One-time: freeze the v1 concordance and split it into component tables
# (PLAN.md 7.5, step 1). Run from the repository root:
#   Rscript data-raw/split-v1.R

library(data.table)
for (f in c("R/io.R", "R/split.R")) source(f)

v1_repo <- "../irs-efile-master-concordance-file"
v1_src  <- file.path(v1_repo, "concordance.csv")
v1_ref  <- "inst/extdata/v1/concordance-v1.csv"

# Freeze the v1 file byte for byte, with its provenance
dir.create(dirname(v1_ref), recursive = TRUE, showWarnings = FALSE)
file.copy(v1_src, v1_ref, overwrite = TRUE)
stopifnot(unname(tools::md5sum(v1_ref)) == unname(tools::md5sum(v1_src)))
commit <- system2("git", c("-C", shQuote(v1_repo), "log", "-1", shQuote("--format=%H (%ad)"), "--date=short", "--", "concordance.csv"),
                  stdout = TRUE)

s <- split_v1(v1_ref, "inst/extdata/src")

# Conflict summary: where v1 values differ within a variable
ov <- s$xpath_overrides
summary <- ov[, .(xpaths = .N, variables = uniqueN(s$xpaths[xpath %in% ov[field == .BY$field, xpath], variable_name])),
              by = field][order(-xpaths)]
print(summary)

writeLines(c(
  "# v1 reference",
  "",
  "`concordance-v1.csv` is the version 1 Master Concordance File, copied byte for byte from",
  sprintf("`Nonprofit-Open-Data-Collective/irs-efile-master-concordance-file` (commit %s).", commit),
  "",
  sprintf("- md5: `%s`", unname(tools::md5sum(v1_ref))),
  sprintf("- %d xpaths, %d variables, %d tables", nrow(s$xpaths), nrow(s$variables), nrow(s$tables)),
  "- line endings: CRLF, as stored in the v1 repository; 6 cells contain Windows-1252 curly quotes",
  "",
  "It is the fixed reference for the round-trip test and for the change log: every",
  "difference between this file and the current concordance must be explained by a",
  "row in `inst/extdata/changelog/changes.csv` (PLAN.md section 7.5).",
  "",
  "## Conflicts kept at the xpath level",
  "",
  "Where the xpaths of one variable disagree on a variable-level column, the component",
  "tables store the most common value on the variable and keep the others in",
  "`src/xpath_overrides.csv`:",
  "",
  "| Field | Xpaths | Variables |",
  "|---|---|---|",
  sprintf("| `%s` | %d | %d |", summary$field, summary$xpaths, summary$variables)
), "inst/extdata/v1/README.md")
