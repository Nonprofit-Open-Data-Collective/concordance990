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
#' @param format `"v2"` (the v1 layout plus `family_id`, `part_id` and
#'   `multi_value`) or `"v1"` (the v1 layout, [concordance_columns]).
#' @param form `NULL` for every xpath with its primary mapping, or the
#'   database being built: `"F990"` (990 and 990-EZ returns with their
#'   schedules) or `"F990PF"` (990-PF returns: PF xpaths, the shared header,
#'   Schedule B and the form-specific mappings of `xpath_forms.csv`). See
#'   [build_concordance()].
#' @return A data.table.
#' @examples
#' cc <- concordance()
#' head(cc[, .(xpath, variable_name, rdb_table)])
#' pf <- concordance(form = "F990PF")
#' @export
concordance <- function(format = c("v2", "v1"), form = NULL) {
  format <- match.arg(format)
  cached(paste("concordance", format, if (is.null(form)) "all" else form, sep = "_"),
         build_concordance(src_path(), format, form = form))
}

#' Lookup table from xpath to variable and table
#'
#' The minimal columns a parser needs.
#' @inheritParams concordance
#' @return A data.table with `xpath`, `variable_name`, `rdb_table`,
#'   `rdb_relationship`, `form_type` and `multi_value`.
#' @export
xpath_map <- function(form = NULL) {
  concordance("v2", form = form)[, .(xpath, variable_name, rdb_table, rdb_relationship, form_type, multi_value)]
}

#' Data dictionary: one row per variable
#'
#' @description
#' The variables of one database with the attributes a data user needs:
#' table and part, label and description, data type, scope, location code,
#' the number of xpaths pooled into the variable and the return types they
#' come from. A variable used in several tables (the Part III program
#' tables) has one row per table.
#'
#' @param form `"F990"` (990 and 990-EZ with their schedules) or `"F990PF"`.
#' @return A data.table ordered as the form: by table, then location code.
#' @examples
#' dd <- data_dictionary("F990")
#' dd[rdb_table == "F9-P01-T00-SUMMARY", .(variable_name, label, data_type_simple)]
#' @export
data_dictionary <- function(form = c("F990", "F990PF")) {
  form <- match.arg(form)
  cc <- concordance("v2", form = form)
  tb <- cc_tables()[, .(rdb_table = table_id, table_order = as.integer(sort_order))]
  pt <- cc_parts()[, .(part_id, part_title = title, form_id)]
  # most common non-empty value; a variable's xpaths usually agree, so skip counting then
  modal <- function(x) {
    x <- x[!is.na(x) & x != ""]
    if (!length(x)) return("")
    u <- unique(x)
    if (length(u) == 1L) u else u[which.max(tabulate(match(x, u)))]
  }
  dd <- cc[, .(label = modal(label), description = modal(description), data_type_simple = modal(data_type_simple),
               variable_scope = modal(variable_scope), location_code_family = modal(location_code_family),
               multi_value = modal(multi_value), rdb_relationship = rdb_relationship[1], part_id = part_id[1],
               n_xpaths = .N, form_types = paste(sort(unique(form_type)), collapse = ";")),
           by = .(rdb_table, variable_name)]
  dd <- merge(dd, pt, by = "part_id", all.x = TRUE, sort = FALSE)
  dd <- merge(dd, tb, by = "rdb_table", all.x = TRUE, sort = FALSE)
  data.table::setorder(dd, table_order, location_code_family, variable_name)
  dd[, table_order := NULL]
  data.table::setcolorder(dd, c("form_id", "part_id", "part_title", "rdb_table", "rdb_relationship", "variable_name",
                                "label", "description", "data_type_simple", "variable_scope",
                                "location_code_family", "multi_value", "n_xpaths", "form_types"))
  dd[]
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
