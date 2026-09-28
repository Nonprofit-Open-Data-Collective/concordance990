# Fix 01: mechanical clean-up of the component tables (issues R03, R04, R10,
# R11, R12). No mapping changes.
#   Rscript data-raw/fixes/01-cleanup.R

source("data-raw/fixes/_helpers.R")

key_cols <- c("variable_name", "family_id", "xpath", "table_id", "part_id", "form_id", "field")

# R11: Windows-1252 curly quotes (0x93 / 0x94 / 0x91 / 0x92) -> plain quotes
fix_step(function(s) {
  lapply(s, function(d) {
    for (cl in names(d)) {
      x <- d[[cl]]; bad <- which(!validUTF8(x))
      if (length(bad)) {
        y <- x[bad]
        y <- gsub("[\x93\x94]", "\"", y, useBytes = TRUE)
        y <- gsub("[\x91\x92]", "'", y, useBytes = TRUE)
        stopifnot(all(validUTF8(y)))
        data.table::set(d, i = bad, j = cl, value = y)
      }
    }
    d
  })
}, reason = "Replace Windows-1252 curly quotes with plain ASCII quotes so the text is valid UTF-8.",
   evidence = "R11", type = "relabel", affects = FALSE)

# R03: cardinality "ONE " -> "ONE"
fix_step(function(s) {
  s$tables[, cardinality := trimws(cardinality)]
  s
}, reason = "Trim the trailing space in cardinality \"ONE \"; parsers testing rdb_relationship == \"ONE\" skipped these three Schedule H tables.",
   evidence = "R03; R12", type = "recode_value", affects = FALSE)

# R12: leading/trailing whitespace in non-key text cells
fix_step(function(s) {
  lapply(s, function(d) {
    for (cl in setdiff(names(d), key_cols)) {
      x <- d[[cl]]; i <- which(grepl("^[[:space:]]|[[:space:]]$", x, useBytes = TRUE))
      if (length(i)) data.table::set(d, i = i, j = cl, value = trimws(x[i]))
    }
    d
  })
}, reason = "Trim leading and trailing whitespace from text values.",
   evidence = "R12", type = "recode_value", affects = FALSE)

# R04: variable names with trailing spaces or lower case
fix_step(function(s) {
  bad <- s$variables[!grepl("^[A-Z0-9]{2}_[0-9]{2}_[A-Z0-9_]+$", variable_name), variable_name]
  for (b in bad) s <- rename_variable(s, b, toupper(trimws(b)))
  s
}, reason = "Rename variables whose names carry trailing spaces or a lower-case letter to the naming convention (the data column name loses its invisible spaces; SH_06_EXPLANATION_PART_01_L7_f becomes ..._L7_F).",
   evidence = "R04; R12", affects = TRUE)

# R10: literal "NA" -> empty cell
fix_step(function(s) {
  lapply(s, function(d) {
    for (cl in names(d)) { i <- which(d[[cl]] == "NA"); if (length(i)) data.table::set(d, i = i, j = cl, value = "") }
    d
  })
}, reason = "Use empty cells, not the text NA, for missing metadata values.",
   evidence = "R10", type = "recode_value", affects = FALSE)

# Overrides that trimming made identical to the variable's own value do nothing
fix_step(function(s) {
  s$xpath_overrides <- s$xpath_overrides[value != variable_value]
  s
}, reason = "Remove an xpath override that is identical to the variable value once trailing whitespace is trimmed.",
   evidence = "R12", type = "resolve_conflict", affects = FALSE)
