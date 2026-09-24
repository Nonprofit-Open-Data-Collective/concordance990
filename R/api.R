# Functions for partner packages (ef2, panel990, fiscal, ...). They read the
# component tables shipped with the package and cache the results.

.cache <- new.env(parent = emptyenv())

#' Location of the component tables
#' @keywords internal
src_path <- function() {
  p <- system.file("extdata", "src", package = "concordance990")
  if (!nzchar(p)) p <- file.path("inst", "extdata", "src")
  p
}

cached <- function(key, expr) {
  if (is.null(.cache[[key]])) .cache[[key]] <- force(expr)
  data.table::copy(.cache[[key]])
}

#' The concordance: one row per xpath
#'
#' @param format `"v2"` (v1 columns plus `family_id` and `part_id`) or
#'   `"v1"` (exactly the v1 columns).
#' @return A data.table.
#' @examples
#' cc <- concordance()
#' head(cc[, .(xpath, variable_name, rdb_table)])
#' @export
concordance <- function(format = c("v2", "v1")) {
  format <- match.arg(format)
  cached(paste0("concordance_", format), build_concordance(src_path(), format))
}

#' Lookup table from xpath to variable and table
#'
#' The minimal columns a parser needs.
#' @return A data.table with `xpath`, `variable_name`, `rdb_table`,
#'   `rdb_relationship` and `form_type`.
#' @export
xpath_map <- function() {
  concordance("v2")[, .(xpath, variable_name, rdb_table, rdb_relationship, form_type)]
}

#' Component tables
#'
#' @return A data.table.
#' @name cc_tables
NULL

#' @rdname cc_tables
#' @export
cc_forms <- function() cached("forms", read_src(src_path())$forms)

#' @rdname cc_tables
#' @export
cc_parts <- function() cached("parts", read_src(src_path())$parts)

#' @rdname cc_tables
#' @export
cc_tables <- function() cached("tables", read_src(src_path())$tables)

#' @rdname cc_tables
#' @export
cc_variables <- function() cached("variables", read_src(src_path())$variables)

#' @rdname cc_tables
#' @export
cc_xpaths <- function() cached("xpaths", read_src(src_path())$xpaths)

#' @rdname cc_tables
#' @export
cc_families <- function() cached("families", read_src(src_path())$families)

#' Table names
#'
#' @param cardinality `NULL` for all tables, or `"ONE"` / `"MANY"`.
#' @return Character vector of `rdb_table` names.
#' @export
table_names <- function(cardinality = NULL) {
  t <- cc_tables()
  if (!is.null(cardinality)) t <- t[t$cardinality %in% cardinality]
  t$table_id
}

#' Normalize raw xpaths for lookup
#'
#' Removes repeat indexes (`[1]`) and the `irs:` / `efile:` namespace
#' prefixes, and makes the path start with a single `/`.
#' @param x Character vector of xpaths.
#' @export
normalize_xpath <- function(x) {
  x <- gsub("\\[[0-9]+\\]", "", x)
  x <- gsub("(irs|efile):", "", x)
  sub("^/+", "/", x)
}

#' Look up raw xpaths
#'
#' @param x Character vector of xpaths as found in XML returns.
#' @return A data.table with the input (`xpath_raw`), the normalized
#'   `xpath`, and the concordance mapping (`NA` when unmapped).
#' @export
lookup_xpath <- function(x) {
  d <- data.table::data.table(xpath_raw = x, xpath = normalize_xpath(x))
  merge(d, xpath_map(), by = "xpath", all.x = TRUE, sort = FALSE)
}

#' Version of the concordance
#'
#' @return A list with the package version and an md5 fingerprint of the
#'   component tables.
#' @export
concordance_version <- function() {
  f <- sort(list.files(src_path(), pattern = "\\.csv$", full.names = TRUE))
  list(package = as.character(utils::packageVersion("concordance990")),
       src_md5 = unname(tools::md5sum(f)),
       files = basename(f))
}
