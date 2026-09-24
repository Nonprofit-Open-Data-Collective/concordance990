# Shared by _amount.Rmd and _number.Rmd. Expects `st`, `xp`, `scale_series()`.

numeric_summary <- function(st) {
  st[, .(Filings = sum(n_filings),
         `% numeric` = 100 * wmean(p_num, n_occurrences),
         `% zero` = 100 * wmean(p_zero, n_occurrences),
         `% negative` = 100 * wmean(p_negative, n_occurrences),
         `Median (typical year)` = stats::median(q50, na.rm = TRUE),
         `P99 (typical year)` = stats::median(q99, na.rm = TRUE)),
     by = .(Series = series, Return = return_type)][order(Series, Return)]
}

numeric_by_year <- function(st) {
  st[!is.na(q50) & return_type %in% c("990", "990EZ"), .(q25 = wmean(q25, n_filings), q50 = wmean(q50, n_filings),
                    q75 = wmean(q75, n_filings), n = sum(n_filings)),
     by = .(tax_year, series, return_type)]
}

numeric_checks <- function(st, by_year) {
  out <- list()
  add <- function(check, result, detail) out[[length(out) + 1]] <<- data.frame(check = check, result = result, detail = detail)
  pn <- wmean(st$p_num, st$n_occurrences)
  add("Values parse as numbers", if (is.na(pn)) "info" else if (pn >= 0.99) "pass" else if (pn >= 0.95) "warn" else "fail",
      if (is.na(pn)) "no values" else sprintf("%.1f%% of values are numeric", 100 * pn))
  # year-on-year jumps in the median, per series and return type
  data.table::setorder(by_year, series, return_type, tax_year)
  by_year[, prev := data.table::shift(q50), by = .(series, return_type)]
  j <- by_year[!is.na(prev) & prev > 0 & q50 > 0 & n >= 100, .(tax_year, series, return_type, r = pmax(q50 / prev, prev / q50))]
  jmax <- if (nrow(j)) j[which.max(r)] else NULL
  add("No sudden change in the median between adjacent years",
      if (is.null(jmax) || jmax$r < 3) "pass" else if (jmax$r < 10) "warn" else "fail",
      if (is.null(jmax)) "not enough data" else sprintf("largest change %.1fx (%s, %s, TY%d)", jmax$r, jmax$series, jmax$return_type, jmax$tax_year))
  # medians of different xpaths for the same return type
  m <- st[!is.na(q50) & q50 > 0, .(med = stats::median(q50), n = sum(n_filings)), by = .(series, return_type)][n >= 100]
  sc <- m[, .(r = if (.N > 1) max(med) / min(med) else 1), by = return_type]
  worst <- if (nrow(sc)) max(sc$r) else 1
  add("Pooled xpaths are on the same scale (same return type)",
      if (worst < 3) "pass" else if (worst < 10) "warn" else "fail",
      sprintf("largest ratio of medians between xpaths: %.1fx", worst))
  do.call(rbind, out)
}

numeric_plot <- function(by_year, log_scale, title, ylab) {
  by_year[, rt := factor(return_type, levels = c("990", "990EZ"), labels = c("Form 990", "Form 990-EZ"))]
  p <- ggplot2::ggplot(by_year, ggplot2::aes(tax_year, q50, colour = series, fill = series)) +
    ggplot2::geom_ribbon(ggplot2::aes(ymin = q25, ymax = q75), alpha = 0.15, colour = NA) +
    ggplot2::geom_line(linewidth = 0.9) + ggplot2::geom_point(size = 1.6) +
    scale_series(c("colour", "fill")) +
    ggplot2::facet_wrap(~ rt, nrow = 1) +
    ggplot2::scale_x_continuous(breaks = seq(2009, 2024, 3)) +
    ggplot2::labs(title = title, subtitle = "Line: median. Band: 25th to 75th percentile.", x = NULL, y = ylab) +
    theme_report()
  dollars <- function(x) {
    a <- abs(x)
    s <- ifelse(a >= 1e9, paste0(a / 1e9, "B"), ifelse(a >= 1e6, paste0(a / 1e6, "M"),
                ifelse(a >= 1e3, paste0(a / 1e3, "K"), as.character(a))))
    paste0(ifelse(x < 0, "-$", "$"), s)
  }
  if (log_scale) p + ggplot2::scale_y_continuous(trans = scales::pseudo_log_trans(sigma = 1, base = 10),
                                                 labels = dollars, breaks = c(0, 10^(0:12)))
  else p + ggplot2::scale_y_continuous(labels = scales::label_comma())
}
