#' Read the component tables
#'
#' @param src_dir Directory holding the component CSVs (default: the
#'   package's `extdata/src`).
#' @return A named list of data.tables.
#' @export
read_src <- function(src_dir = src_path()) {
  files <- c("forms", "parts", "tables", "variables", "xpaths", "xpath_overrides", "families")
  s <- lapply(files, function(f) read_cc_csv(file.path(src_dir, paste0(f, ".csv"))))
  names(s) <- files
  s$xpaths[, v1_order := as.integer(v1_order)]
  s
}

#' Build the unified concordance from the component tables
#'
#' @description
#' Joins xpaths to their variables, applies the xpath-level overrides, adds
#' table cardinality, and returns one row per xpath in v1 order.
#'
#' * `format = "v1"` returns exactly the v1 columns. For the baseline this
#'   reproduces the v1 file byte for byte (see [write_concordance()]).
#' * `format = "v2"` adds `family_id` and `part_id` after the v1 columns.
#'
#' @param src_dir Directory of component tables, or a list of component
#'   tables as returned by [read_src()].
#' @param format `"v1"` or `"v2"`.
#' @return A data.table.
#' @export
build_concordance <- function(src_dir = src_path(), format = c("v1", "v2")) {
  format <- match.arg(format)
  s <- if (is.list(src_dir)) lapply(src_dir, data.table::copy) else read_src(src_dir)
  s$xpaths[, v1_order := as.integer(v1_order)]

  v <- data.table::copy(s$variables)
  data.table::setnames(v, "table_id", "rdb_table")
  x <- merge(s$xpaths, v, by = "variable_name", all.x = TRUE, sort = FALSE)
  if (anyNA(x$rdb_table)) stop("xpaths reference unknown variables: ",
                               paste(utils::head(x[is.na(rdb_table), variable_name]), collapse = ", "))

  ov <- s$xpath_overrides
  for (f in unique(ov$field)) {
    o <- ov[field == f, .(xpath, value)]
    x[o, on = "xpath", (f) := i.value]
  }

  tb <- s$tables[, .(rdb_table = table_id, rdb_relationship = cardinality, part_id)]
  x <- merge(x, tb, by = "rdb_table", all.x = TRUE, sort = FALSE)
  if (anyNA(x$rdb_relationship)) stop("xpaths reference unknown tables.")

  data.table::setorder(x, v1_order)
  cols <- if (format == "v1") v1_columns else c(v1_columns, "family_id", "part_id", intersect("multi_value", names(x)))
  x[, cols, with = FALSE]
}

#' Write the unified concordance
#'
#' @param d Output of [build_concordance()].
#' @param path CSV path. The v1 layout is written with CRLF line endings, as
#'   the v1 file is.
#' @param xlsx Optional path for a spreadsheet copy (needs openxlsx).
#' @export
write_concordance <- function(d, path, xlsx = NULL) {
  write_cc_csv(d, path, eol = "\r\n")
  if (!is.null(xlsx)) {
    if (!requireNamespace("openxlsx", quietly = TRUE)) stop("Package 'openxlsx' is required for xlsx output.")
    wb <- openxlsx::createWorkbook()
    openxlsx::addWorksheet(wb, "concordance")
    openxlsx::writeData(wb, "concordance", as.data.frame(d), withFilter = TRUE)
    openxlsx::freezePane(wb, "concordance", firstRow = TRUE, firstCol = TRUE)
    openxlsx::setColWidths(wb, "concordance", cols = seq_along(d), widths = 18)
    openxlsx::saveWorkbook(wb, xlsx, overwrite = TRUE)
  }
  invisible(path)
}
