#' Xpath observations from filing evidence
#'
#' @description
#' Reads the per-year xpath counts and filing counts that [build_evidence()]
#' writes from the ef2 DuckDB builds (`xpath_stats.csv` and `filings.csv`),
#' for one or more evidence directories: `evidence` (990 and 990-EZ returns)
#' and `evidence/pf` (990-PF returns). These are the observations
#' [xpath_version_fields()] uses.
#'
#' To refresh them from new or rebuilt ef2 databases, run [build_evidence()]
#' and [combine_evidence()] (see `data-raw/build-evidence.R` and
#' `data-raw/build-evidence-pf.R`), then [update_xpath_versions()].
#'
#' In the ef2 builds the tax year of a filing is the year of its schema
#' version, so `tax_year` and the year of `schema_version` agree.
#'
#' @param evidence_dirs Evidence directories, each holding `xpath_stats.csv`
#'   and `filings.csv`.
#' @return A list: `xpaths` (`tax_year`, `xpath`, `schema_version`,
#'   `return_type`, `n_filings`: filings whose return holds the xpath) and
#'   `filings` (`tax_year`, `return_type`, `n_filings`: all filings).
#' @export
xpath_observations <- function(evidence_dirs = c("evidence", file.path("evidence", "pf"))) {
  read <- function(f, cols) {
    p <- file.path(evidence_dirs, f)
    if (!all(file.exists(p))) stop("Evidence file not found: ", paste(p[!file.exists(p)], collapse = ", "))
    data.table::rbindlist(lapply(p, data.table::fread, select = cols, encoding = "UTF-8",
                                 colClasses = list(character = intersect(cols, c("xpath", "schema_version", "return_type")))))
  }
  x <- read("xpath_stats.csv", c("tax_year", "xpath", "schema_version", "return_type", "n_filings"))
  # an xpath can be a parent in some filings and a terminal in others
  x <- x[return_type != "", .(n_filings = sum(n_filings)), by = .(tax_year, xpath, schema_version, return_type)]
  f <- read("filings.csv", c("tax_year", "return_type", "n_filings"))
  f <- f[return_type != "", .(n_filings = sum(n_filings)), by = .(tax_year, return_type)]
  list(xpaths = x[], filings = f[])
}


#' Return types in the denominator of an xpath's scope
#'
#' `PC` is 990 filers, `EZ` 990-EZ filers, `PF` 990-PF filers; every other
#' scope (`PZ`, `HD` header, `SG` signature) is 990 and 990-EZ filers.
#' @param scope Character vector of scopes.
#' @return A list of character vectors of return types.
#' @keywords internal
scope_return_types <- function(scope) {
  lapply(scope, function(s) switch(s, PC = "990", EZ = "990EZ", PF = "990PF", c("990", "990EZ")))
}

#' Sort schema version strings (`2010v3.2`) by year, then version number
#' @keywords internal
sort_versions <- function(v) {
  v <- unique(v[!is.na(v) & v != ""])
  if (!length(v)) return(v)
  num <- suppressWarnings(as.numeric(sub("^[0-9]{4}v", "", v)))
  v[order(substr(v, 1, 4), num, v)]
}

#' Format a percent with three significant digits, never in scientific notation
#' @keywords internal
format_percent <- function(p) {
  vapply(p, function(v) if (is.na(v)) "" else
    format(signif(v, 3), scientific = FALSE, drop0trailing = TRUE, trim = TRUE), "", USE.NAMES = FALSE)
}


#' Schema versions, current status and reporting rate of each xpath
#'
#' @description
#' Computes the xpath-level version fields of the concordance:
#'
#' * `schema_versions`: every schema version the xpath is defined in (the
#'   XSD versions already recorded in `xpaths.csv`) or observed in (filings
#'   in the evidence), sorted and separated by `;`. Either source can have
#'   gaps, so the list is the union of both.
#' * `earliest_version`, `latest_version`: the first and last year of a
#'   schema version the xpath was observed in. Filings only.
#' * `current_version`: `TRUE` when the xpath was observed in the newest
#'   schema year of the evidence, `FALSE` when observed only earlier, empty
#'   when never observed. Filings only.
#' * `pct_filers_reporting`: of the filers in the xpath's scope in its
#'   `latest_version` year, the percent whose return holds the xpath (three
#'   significant digits; empty when never observed).
#'
#' The scope is the variable's `variable_scope`: `PC` 990 filers, `EZ`
#' 990-EZ filers, `PF` 990-PF filers, otherwise (`PZ`, `HD`, `SG`) 990 and
#' 990-EZ filers. Return types outside the scope that filed the xpath in that
#' year are added to the denominator: the header, Schedule B and the
#' attachments shared by all returns are also filed with 990-PF returns, so
#' they are measured against every filer who files them. With
#' `scope = "xpath"` (the default) a main-form xpath of
#' a 990 or 990-EZ variable is scoped to the form it sits under
#' (`IRS990/` to `PC`, `IRS990EZ/` to `EZ`), because only that form's filers
#' can report it; pooled `PZ` variables otherwise get the union of both forms
#' as the denominator of each of their xpaths.
#'
#' @param xpaths `xpaths.csv` (with `versions` or `schema_versions`).
#' @param variables `variables.csv`.
#' @param obs Output of [xpath_observations()].
#' @param scope `"xpath"` or `"variable"`; see Description.
#' @return A data.table with `xpath`, `scope`, `schema_versions`,
#'   `earliest_version`, `latest_version`, `current_version`,
#'   `pct_filers_reporting`, and the counts behind the percent (`n_reported`,
#'   `n_scope`), in the order of `xpaths`.
#' @export
xpath_version_fields <- function(xpaths, variables, obs = xpath_observations(),
                                 scope = c("xpath", "variable")) {
  scope <- match.arg(scope)
  vcol <- if ("schema_versions" %in% names(xpaths)) "schema_versions" else "versions"
  x <- data.table::data.table(xpath = xpaths$xpath, variable_name = xpaths$variable_name,
                              xsd = xpaths[[vcol]])
  x[, ord := .I]
  x <- merge(x, variables[, .(variable_name, variable_scope)], by = "variable_name", all.x = TRUE, sort = FALSE)
  x[, scope := data.table::fcoalesce(variable_scope, "")]
  if (scope == "xpath") {
    main <- x$scope %in% c("PC", "EZ", "PZ")
    x[main & grepl("^/Return/ReturnData/IRS990/", xpath), scope := "PC"]
    x[main & grepl("^/Return/ReturnData/IRS990EZ/", xpath), scope := "EZ"]
  }

  ob <- obs$xpaths[xpath %in% x$xpath]
  newest <- max(obs$xpaths$tax_year)
  seen <- ob[, .(observed = list(unique(schema_version)),
                 earliest = min(tax_year), latest = max(tax_year)), by = xpath]
  x <- merge(x, seen, by = "xpath", all.x = TRUE, sort = FALSE)

  x[, schema_versions := vapply(seq_len(.N), function(i)
    paste(sort_versions(c(strsplit(xsd[i], ";", fixed = TRUE)[[1]], observed[[i]])), collapse = ";"), "")]
  x[, `:=`(earliest_version = data.table::fifelse(is.na(earliest), "", as.character(earliest)),
           latest_version = data.table::fifelse(is.na(latest), "", as.character(latest)),
           current_version = data.table::fifelse(is.na(latest), "", data.table::fifelse(latest == newest, "TRUE", "FALSE")))]

  # percent of in-scope filers reporting the xpath in its latest year
  # plus any other return type that filed it that year: the header, Schedule B
  # and the shared attachments are filed with 990-PF returns too
  types <- scope_return_types(x$scope)
  key <- data.table::data.table(xpath = rep(x$xpath, lengths(types)), tax_year = rep(x$latest, lengths(types)),
                                return_type = unlist(types))[!is.na(tax_year)]
  key <- unique(rbind(key, ob[key[, .(xpath, tax_year)], on = .(xpath, tax_year), nomatch = NULL,
                              .(xpath, tax_year, return_type)]))
  num <- ob[, .(n = sum(n_filings)), by = .(xpath, tax_year, return_type)][key, on = .(xpath, tax_year, return_type)]
  num <- num[, .(n_reported = sum(n, na.rm = TRUE)), by = xpath]
  den <- obs$filings[key, on = .(tax_year, return_type)][, .(n_scope = sum(n_filings, na.rm = TRUE)), by = xpath]
  x <- merge(x, merge(num, den, by = "xpath"), by = "xpath", all.x = TRUE, sort = FALSE)
  x[, pct_filers_reporting := format_percent(data.table::fifelse(n_scope > 0, 100 * n_reported / n_scope, NA_real_))]

  data.table::setorder(x, ord)
  x[, .(xpath, scope, schema_versions, earliest_version, latest_version, current_version,
        pct_filers_reporting, n_reported, n_scope)]
}


#' Update the version fields of the component tables from filing evidence
#'
#' @description
#' Recomputes `schema_versions`, `earliest_version`, `latest_version`,
#' `current_version` and `pct_filers_reporting` in `xpaths.csv` with
#' [xpath_version_fields()]. Run it after refreshing the evidence from the
#' ef2 builds (`data-raw/update-xpath-versions.R` writes the result). These
#' are [derived_columns], so the change log does not record their values.
#'
#' @param src Component tables (default: [read_src()]). `xpaths` must
#'   already have the 2.0 columns (`schema_versions`, `earliest_version`,
#'   `pct_filers_reporting`; added by fix 24).
#' @inheritParams xpath_version_fields
#' @return `src` with the updated `xpaths` table.
#' @export
update_xpath_versions <- function(src = read_src(), obs = xpath_observations(), scope = c("xpath", "variable")) {
  need <- c("schema_versions", "earliest_version", "latest_version", "current_version", "pct_filers_reporting")
  if (!all(need %in% names(src$xpaths))) stop("xpaths.csv lacks columns: ", paste(setdiff(need, names(src$xpaths)), collapse = ", "))
  f <- xpath_version_fields(src$xpaths, src$variables, obs, scope)
  for (cl in need) data.table::set(src$xpaths, j = cl, value = f[[cl]])
  src
}
