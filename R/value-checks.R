#' Value checks for one variable, by report type
#'
#' @description
#' The type-specific checks shown in the validation reports (amount, number,
#' checkbox, date, text, code, identifier). The report templates call this
#' function, and [run_value_checks()] runs it for every variable, so the
#' reports and the issues list always agree.
#'
#' @param xp Concordance rows (v1 layout) for one variable.
#' @param st Evidence rows from `xpath_stats.csv` for its xpaths (terminal
#'   nodes). A `series` column is used for labels when present.
#' @param vals,shapes Rows of `xpath_values.csv` / `xpath_shapes.csv` for its
#'   xpaths.
#' @param rtype Report type from [report_type()].
#' @param skip_year A tax year to leave out of year-on-year comparisons (the
#'   partial final year; see [partial_year()]).
#' @return A data.table with `code`, `check`, `result` (pass, warn, fail,
#'   info) and `detail`.
#' @export
value_checks <- function(xp, st, vals, shapes, rtype = report_type(xp), skip_year = NA) {
  st <- data.table::copy(st)
  if (!"series" %in% names(st)) st[, series := short_xpath(xpath)]
  st[, series := as.character(series)]
  out <- list()
  add <- function(code, check, result, detail) {
    out[[length(out) + 1]] <<- data.table::data.table(code = code, check = check, result = result, detail = detail)
  }
  pct <- function(x) sprintf("%.1f%%", 100 * x)
  if (!nrow(st)) {
    add("V_NO_DATA", "Values observed", "info", "never observed in filings")
    return(data.table::rbindlist(out))
  }

  if (rtype %in% c("amount", "number")) {
    pn <- wmean(st$p_num, st$n_occurrences)
    add("V_NUM_PARSE", "Values parse as numbers",
        if (is.na(pn)) "info" else if (pn >= 0.99) "pass" else if (pn >= 0.95) "warn" else "fail",
        if (is.na(pn)) "no values" else sprintf("%s of values are numeric", pct(pn)))

    by <- st[!is.na(q50) & return_type %in% c("990", "990EZ", "990PF"),
             .(q50 = wmean(q50, n_filings), n = sum(n_filings)), by = .(tax_year, series, return_type)]
    data.table::setorder(by, series, return_type, tax_year)
    by[, prev := data.table::shift(q50), by = .(series, return_type)]
    # Same xpath, adjacent years: a jump here is usually a change in who files
    # (early e-file years, the partial final year, rare lines), not a mapping
    # error, so it is at most a warning and needs 1,000 filings in both years.
    by[, prev_n := data.table::shift(n), by = .(series, return_type)]
    j <- by[!is.na(prev) & prev > 0 & q50 > 0 & n >= 1000 & prev_n >= 1000 &
              !tax_year %in% skip_year, .(tax_year, series, return_type, r = pmax(q50 / prev, prev / q50))]
    if (nrow(j)) {
      jm <- j[which.max(r)]
      add("V_MEDIAN_JUMP", "No sudden change in the median between adjacent years",
          if (jm$r < 5) "pass" else "warn",
          sprintf("largest change %.1fx (%s, %s, TY%d)", jm$r, jm$series, jm$return_type, jm$tax_year))
    }

    m <- st[!is.na(q50) & q50 > 0, .(med = stats::median(q50), n = sum(n_filings)), by = .(series, return_type)][n >= 100]
    sc <- m[, .(r = if (.N > 1) max(med) / min(med) else 1,
                hi = series[which.max(med)], lo = series[which.min(med)]), by = return_type]
    if (nrow(sc)) {
      w <- sc[which.max(r)]
      add("V_POOLED_SCALE", "Pooled xpaths are on the same scale (same return type)",
          if (w$r < 3) "pass" else if (w$r < 10) "warn" else "fail",
          if (w$r < 3) sprintf("largest ratio of medians between xpaths: %.1fx", w$r)
          else sprintf("medians differ %.1fx (%s: %s vs %s)", w$r, w$return_type, w$hi, w$lo))
    }
    if (rtype == "amount") {
      neg <- wmean(st$p_negative, st$n_occurrences)
      add("V_SIGN", "Sign convention", "info",
          if (is.na(neg)) "no values" else sprintf("%s of values are negative (fine for net amounts)", pct(neg)))
    } else {
      s2 <- st[!is.na(q99), .(p99 = stats::median(q99), n = sum(n_filings)), by = series][n >= 30]
      s2[, scale := data.table::fifelse(p99 <= 1, "fraction (0-1)",
                                        data.table::fifelse(p99 <= 100, "percent or small count", "large count or amount"))]
      add("V_NUMBER_SCALE", "One scale across xpaths (fraction vs percent)",
          if (data.table::uniqueN(s2$scale) <= 1) "pass" else "fail",
          if (nrow(s2)) paste(sprintf("%s: %s", s2$series, s2$scale), collapse = "; ") else "no values")
    }
  }

  if (rtype == "checkbox") {
    pb <- wmean(st$p_bool, st$n_occurrences)
    add("V_CHECKBOX_CODES", "Values are checkbox codes",
        if (is.na(pb)) "info" else if (pb >= 0.99) "pass" else if (pb >= 0.95) "warn" else "fail",
        if (is.na(pb)) "no values" else sprintf("%s of values are X / true / false / 1 / 0", pct(pb)))
    v <- tolower(trimws(vals$value))
    unc <- sum(vals$n_filings[v %in% c("false", "0")]) / max(sum(vals$n_filings), 1)
    add("V_CHECKBOX_BLANK", "Meaning of a blank", "info",
        if (unc > 0.01) sprintf("%.0f%% of values are explicit false/0, so a missing value is not the same as unchecked", 100 * unc)
        else "values are almost always X/true when present, so a missing value usually means unchecked")
    leaves <- unique(sub(".*/", "", xp$xpath))
    negated <- grepl("(Not|No)(?=[A-Z])", leaves, perl = TRUE)
    add("V_POLARITY", "Element names agree in polarity", if (any(negated) && !all(negated)) "fail" else "pass",
        if (any(negated) && !all(negated))
          paste("negated:", paste(leaves[negated], collapse = ", "), "| not negated:", paste(leaves[!negated], collapse = ", "))
        else "all element names have the same polarity")
  }

  if (rtype == "date") {
    fmt <- shapes[, .(n = sum(n_filings)), by = shape]
    fmt[, format := data.table::fcase(shape == "9999-99-99", "date (YYYY-MM-DD)",
                                      grepl("^9999-99-99A99:99:99", shape), "timestamp",
                                      shape == "9999", "year (YYYY)", default = "other")]
    mf <- fmt[, .(n = sum(n)), by = format][order(-n)]
    share <- if (nrow(mf)) mf$n[1] / sum(mf$n) else NA
    add("V_DATE_FORMAT", "One date format",
        if (is.na(share)) "info" else if (share >= 0.99) "pass" else "warn",
        if (is.na(share)) "no values" else sprintf("%s use %s", pct(share), mf$format[1]))
  }

  if (rtype == "text") {
    pn <- wmean(st$p_num, st$n_occurrences)
    add("V_TEXT_NUMERIC", "Values are text, not numbers",
        if (is.na(pn)) "info" else if (pn < 0.5) "pass" else "warn",
        if (is.na(pn)) "no values" else sprintf("%.0f%% of values are numeric", 100 * pn))
    ml <- st[, .(max_len = max_na(max_len)), by = series]
    caps <- ml[max_len %in% c(35, 50, 70, 75, 100, 120, 250, 255, 500, 1000, 4000, 9000, 32000)]
    add("V_TEXT_TRUNCATION", "No sign of truncation", if (!nrow(caps)) "pass" else "info",
        if (!nrow(caps)) "longest values do not sit at a common field limit"
        else paste(sprintf("%s: longest value is exactly %d characters", caps$series, as.integer(caps$max_len)), collapse = "; "))
  }

  if (rtype == "code") {
    nd <- max(st$n_distinct, 0, na.rm = TRUE)
    add("V_CODE_LIST", "Small code list", if (nd <= 100) "pass" else "warn",
        sprintf("up to %s distinct values per xpath and year", nd))
    shp <- shapes[, .(n = sum(n_filings)), by = shape][order(-n)]
    s1 <- if (nrow(shp)) shp$n[1] / sum(shp$n) else NA
    add("V_CODE_FORMAT", "Codes share one format", if (is.na(s1)) "info" else if (s1 >= 0.95) "pass" else "warn",
        if (is.na(s1)) "no values" else sprintf("%.0f%% have the shape %s", 100 * s1, shp$shape[1]))
    lower <- sum(vals$n_filings[grepl("[a-z]", vals$value) & !grepl("[A-Z]", vals$value)]) / max(sum(vals$n_filings), 1)
    add("V_CODE_CASE", "Consistent letter case", if (lower < 0.01) "pass" else "warn",
        sprintf("%s of values are lower case", pct(lower)))
  }

  if (rtype == "identifier") {
    v <- xp$variable_name[1]
    kind <- data.table::fcase(grepl("EIN", v), "EIN", grepl("PTIN", v), "PTIN", grepl("PHONE", v), "Phone",
                              grepl("ZIP", v), "ZIP", grepl("CUSIP", v), "CUSIP", grepl("SSN", v), "SSN",
                              default = "Identifier")
    expected <- list(EIN = "^999999999$", PTIN = "^A99999999$", Phone = "^9999999999$",
                     ZIP = "^(99999|999999999|99999-9999)$", SSN = "^999999999$", CUSIP = "^[9A]{9}$",
                     Identifier = ".")[[kind]]
    ok <- grepl(expected, shapes$shape)
    so <- sum(shapes$n_filings[ok]) / max(sum(shapes$n_filings), 1)
    add("V_ID_FORMAT", sprintf("Values have the %s format", kind),
        if (so >= 0.98) "pass" else if (so >= 0.9) "warn" else "fail",
        sprintf("%s of values match %s", pct(so), expected))
    dts <- unique(stats::na.omit(xp$data_type_simple))
    add("V_ID_TEXT", "Stored as text", if (all(dts == "text")) "pass" else "fail",
        if (all(dts == "text")) "data type is text"
        else sprintf("data type is %s: leading zeros and letters would be lost", paste(dts, collapse = ", ")))
    ph <- sum(vals$n_filings[grepl("^(0+|9+|1+|123456789)$", vals$value)])
    add("V_ID_PLACEHOLDER", "No placeholder values", if (ph == 0) "pass" else "warn",
        if (ph == 0) "no all-zero / all-nine placeholders among the most common values"
        else sprintf("%s filings use a placeholder such as 000000000", format(ph, big.mark = ",")))
  }
  data.table::rbindlist(out)
}

#' The partial final year of the evidence, if any
#'
#' @param filings `filings.csv` from the evidence.
#' @return The last tax year when its filings are under 85% of the year
#'   before (a year still being filed), otherwise `NA`.
#' @export
partial_year <- function(filings) {
  if (is.null(filings) || !nrow(filings)) return(NA_integer_)
  t <- filings[, .(n = sum(n_filings)), by = tax_year][order(tax_year)]
  if (nrow(t) < 2) return(NA_integer_)
  last <- t[.N]
  if (last$n < 0.85 * t$n[nrow(t) - 1]) as.integer(last$tax_year) else NA_integer_
}

#' Run the value checks for every variable
#'
#' @param concordance Concordance in the v1 layout (or the v1 PF concordance).
#' @param ev Evidence from [load_evidence()].
#' @return A data.table: `variable_name`, `report_type`, then the columns of
#'   [value_checks()].
#' @export
run_value_checks <- function(concordance, ev) {
  cc <- data.table::as.data.table(concordance)
  skip <- partial_year(ev$filings)
  st <- ev$stats; data.table::setkey(st, xpath)
  va <- ev$values; data.table::setkey(va, xpath)
  sh <- ev$shapes; data.table::setkey(sh, xpath)
  vars <- unique(cc$variable_name)
  res <- lapply(vars, function(v) {
    xp <- cc[variable_name == v]
    rt <- report_type(xp)
    r <- value_checks(xp, st[list(xp$xpath), nomatch = NULL], va[list(xp$xpath), nomatch = NULL],
                      sh[list(xp$xpath), nomatch = NULL], rt, skip_year = skip)
    if (nrow(r)) r[, `:=`(variable_name = v, report_type = rt)]
    r
  })
  out <- data.table::rbindlist(res, fill = TRUE)
  data.table::setcolorder(out, c("variable_name", "report_type"))
  out
}
