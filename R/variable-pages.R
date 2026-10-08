# Light validation pages: one small static HTML page per variable, for the
# website. Unlike render_reports() they need no rmarkdown, pandoc or ggplot:
# the pages are written directly, charts are shaded HTML tables, and all
# pages share one stylesheet, so a page is ~15 KB and the full set renders in
# seconds.

#' Render light validation pages
#'
#' @description
#' Writes one static HTML page per variable to `out_dir`, plus a shared
#' stylesheet (`variables.css`) and an index. A page shows the dictionary
#' entry, the value checks, the open and reviewed flags, the xpaths pooled
#' into the variable, coverage and fill rate by tax year, a summary of the
#' values, and example filings with links to the XML. [dd()] opens these
#' pages with `report = TRUE`.
#'
#' The evidence (`evidence/`, `evidence/pf/`) is built from the ef2 DuckDB
#' files by [build_evidence()] and is not shipped with the package.
#'
#' @param variables Variable names; `NULL` for every variable in both
#'   databases.
#' @param evidence Named character vector of evidence directories: the 990 /
#'   990-EZ evidence and the 990-PF evidence.
#' @param flags Flags from [flag_xpaths()] for the current concordance (both
#'   databases bound together). `NULL` reads `xpath_flags.csv` from each
#'   evidence directory, which may be older than the concordance.
#' @param out_dir Output directory; `docs/variables` publishes the pages
#'   with the site.
#' @param index Also write `index.html` listing the pages written.
#' @return Invisibly, a data.table with one row per page.
#' @export
render_variable_pages <- function(variables = NULL, evidence = c(F990 = "evidence", F990PF = "evidence/pf"),
                                  flags = NULL, out_dir = file.path("docs", "variables"), index = TRUE) {
  dict <- dd_index()
  cc <- unique(data.table::rbindlist(lapply(c("F990", "F990PF"), function(f) concordance("v2", form = f))),
               by = c("xpath", "variable_name"))
  if (is.null(variables)) variables <- unique(dict$variable_name)
  bad <- setdiff(variables, dict$variable_name)
  if (length(bad)) stop("Unknown variables: ", paste(bad, collapse = ", "), call. = FALSE)

  ev <- page_evidence(evidence)
  if (is.null(flags)) flags <- data.table::rbindlist(lapply(evidence, function(d) {
    p <- file.path(d, "xpath_flags.csv")
    if (file.exists(p)) data.table::fread(p, encoding = "UTF-8")
  }), fill = TRUE)
  flags <- page_flags(flags)

  dir.create(out_dir, recursive = TRUE, showWarnings = FALSE)
  file.copy(system.file("reports", "variables.css", package = "concordance990", mustWork = TRUE),
            file.path(out_dir, "variables.css"), overwrite = TRUE)
  skip <- partial_year(ev$filings)
  res <- data.table::rbindlist(lapply(variables, function(v) {
    p <- variable_page(v, dict[variable_name == v], cc[variable_name == v], ev, flags, skip)
    sub_dir <- file.path(out_dir, page_dir(v))
    dir.create(sub_dir, showWarnings = FALSE)
    writeLines(p$html, file.path(sub_dir, paste0(v, ".html")), useBytes = TRUE)
    p$summary
  }))
  if (index) writeLines(variable_index(res, ev), file.path(out_dir, "index.html"), useBytes = TRUE)
  invisible(res)
}

# Folder of a variable page: its form prefix (F9, PF, SA ... SR). GitHub
# recommends at most 3,000 entries in one directory.
page_dir <- function(v) substr(v, 1L, 2L)

# Evidence of both databases bound together, keyed by xpath. Only the small
# tables are read: xpath_groups.csv (several GB for the 990-PF) is not needed.
page_evidence <- function(dirs) {
  rd <- function(d, f) {
    p <- file.path(d, f)
    if (file.exists(p)) data.table::fread(p, encoding = "UTF-8", na.strings = c("NA")) else data.table::data.table()
  }
  one <- function(d) list(
    stats = read_xpath_stats(file.path(d, "xpath_stats.csv"))[node_type == "terminal"],
    filings = rd(d, "filings.csv"), values = rd(d, "xpath_values.csv"),
    shapes = rd(d, "xpath_shapes.csv"), examples = rd(d, "xpath_examples.csv"))
  evs <- lapply(dirs, one)
  ev <- lapply(stats::setNames(nm = names(evs[[1]])), function(k) data.table::rbindlist(lapply(evs, `[[`, k), fill = TRUE))
  for (k in c("stats", "values", "shapes", "examples")) data.table::setkey(ev[[k]], xpath)
  mf <- file.path(dirs[[1]], "manifest.json")
  ev$built <- if (file.exists(mf)) jsonlite::read_json(mf)$built else ""
  ev
}

# Flags with the reviewer's decision from validation_log.csv. Unobserved
# xpaths show in the xpath table instead, and unmapped xpaths have no page.
page_flags <- function(flags) {
  if (is.null(flags) || !nrow(flags)) return(data.table::data.table())
  f <- data.table::copy(flags)[!flag_code %in% c("UNOBSERVED", "UNMAPPED") & !is.na(variable_name) & variable_name != ""]
  f[is.na(xpath), xpath := ""]
  lg <- read_validation_log()
  lg <- lg[, .SD[.N], by = .(check, variable_name, key)]
  f[lg, `:=`(status = i.status, note = i.note), on = c(flag_code = "check", variable_name = "variable_name", xpath = "key")]
  # a decision with an empty key covers every case of that check for the variable
  all_keys <- lg[key == ""]
  f[is.na(status) & variable_name %in% all_keys$variable_name,
    c("status", "note") := all_keys[.SD, on = c(check = "flag_code", variable_name = "variable_name"), .(i = status, j = note)],
    .SDcols = c("flag_code", "variable_name")]
  f[is.na(status), status := "open"]
  data.table::setkey(f, variable_name)
  f
}

# --- formatting helpers ---------------------------------------------------

pg_esc <- function(x) {
  x <- as.character(x)
  x[is.na(x)] <- ""
  x <- gsub("&", "&amp;", x, fixed = TRUE)
  x <- gsub("<", "&lt;", x, fixed = TRUE)
  x <- gsub(">", "&gt;", x, fixed = TRUE)
  gsub("\"", "&quot;", x, fixed = TRUE)
}
pg_n <- function(x) formatC(x, format = "d", big.mark = ",")
pg_k <- function(x) {
  a <- abs(x)
  ifelse(is.na(x), "", ifelse(a >= 1e6, sprintf("%.1fM", x / 1e6), ifelse(a >= 1e4, sprintf("%.0fk", x / 1e3),
         ifelse(a >= 1e3, sprintf("%.1fk", x / 1e3), formatC(x, format = "d", big.mark = ",")))))
}
pg_num <- function(x) {
  ifelse(is.na(x), "", ifelse(abs(x) >= 100 | x == round(x), formatC(x, format = "f", digits = 0, big.mark = ","),
                              formatC(x, format = "f", digits = 2, big.mark = ",")))
}
pg_pct <- function(x, digits = 1) ifelse(is.na(x), "", paste0(formatC(100 * x, format = "f", digits = digits), "%"))
pg_trunc <- function(x, n) ifelse(nchar(x) > n, paste0(substr(x, 1, n - 1), "…"), x)

pg_table <- function(header, rows, cls = "tbl", num = integer()) {
  th <- paste0("<th", ifelse(seq_along(header) %in% num, " class=\"num\"", ""), ">", header, "</th>", collapse = "")
  body <- vapply(rows, function(r) paste0("<tr>", paste0("<td", ifelse(seq_along(r) %in% num, " class=\"num\"", ""), ">", r, "</td>", collapse = ""), "</tr>"), "")
  paste0("<div class=\"wrap\"><table class=\"", cls, "\"><thead><tr>", th, "</tr></thead><tbody>",
         paste(body, collapse = ""), "</tbody></table></div>")
}

pg_status <- function(s) {
  lab <- c(pass = "✓ pass", warn = "▲ warn", fail = "⚠ fail", info = "ⓘ info",
           error = "⚠ error", open = "open", accepted = "✓ accepted", needs_input = "needs input",
           deferred = "deferred")
  sprintf("<span class=\"s s-%s\">%s</span>", s, ifelse(s %in% names(lab), lab[s], s))
}

# Shade 0-5 for a count (log scale) or a share
pg_shade_n <- function(n) ifelse(n <= 0, 0L, pmin(5L, 1L + as.integer(floor(log10(pmax(n, 1)) / 1.2))))
pg_shade_p <- function(p) ifelse(is.na(p) | p <= 0, 0L, as.integer(cut(p, c(0, .05, .25, .5, .8, Inf), labels = FALSE)))

# --- one page ---------------------------------------------------------------

variable_page <- function(v, d, xp, ev, flags, skip) {
  d1 <- d[1]
  rtype <- report_type(xp)
  st <- ev$stats[list(xp$xpath), nomatch = NULL]
  vals <- ev$values[list(xp$xpath), nomatch = NULL]
  shp <- ev$shapes[list(xp$xpath), nomatch = NULL]
  checks <- value_checks(xp, st, vals, shp, rtype, skip_year = skip)
  fl <- if (nrow(flags)) flags[list(v), nomatch = NULL] else data.table::data.table()

  # xpaths, oldest first, numbered x1, x2, ... for the coverage grid
  xs <- if (nrow(st)) st[, .(n = sum(n_filings), y0 = min(tax_year), y1 = max(tax_year),
                             n_rep = sum(n_filings_repeat)), by = xpath] else
    data.table::data.table(xpath = character(), n = numeric(), y0 = integer(), y1 = integer(), n_rep = numeric())
  x <- merge(xp[, .(xpath, form_type, pct_filers_reporting, schema_versions)], xs, by = "xpath", all.x = TRUE)
  x[is.na(n), n := 0]
  data.table::setorder(x, y0, -n, na.last = TRUE)
  x[, id := paste0("x", seq_len(.N))]
  years <- sort(unique(ev$filings$tax_year))

  parts <- c(
    pg_head(v, d1$label),
    "<header>",
    "<p class=\"kicker\"><a href=\"../index.html\">Variable pages</a> · IRS 990 Master Concordance</p>",
    sprintf("<h1>%s</h1>", pg_esc(v)),
    sprintf("<p class=\"lede\">%s</p>", pg_esc(d1$label)),
    "</header>",
    pg_dictionary(d, xp),
    pg_tiles(x, fl, years),
    "<h2>Checks</h2>", pg_checks(checks, fl),
    "<h2>Xpaths</h2>", pg_xpaths(x),
    "<h2>Coverage by tax year</h2>", pg_coverage(x, st, ev$filings, years),
    "<h2>Values</h2>", pg_values(rtype, st, vals, shp, x),
    "<h2>Example filings</h2>", pg_examples(ev$examples[list(xp$xpath), nomatch = NULL], x),
    sprintf("<footer><p>Evidence: e-filed returns TY%s, built %s from the ef2 DuckDB builds. Checks and flags are recomputed for the current concordance; reviewer decisions come from <code>validation_log.csv</code>. Variable %s, report type <i>%s</i>. Source: <a href=\"https://github.com/Nonprofit-Open-Data-Collective/concordance990\">concordance990</a>.</p></footer>",
            if (length(years)) paste0(min(years), "–", max(years)) else "?", pg_esc(sub(" .*", "", ev$built)), pg_esc(v), rtype),
    "</main></body></html>")
  fl_open <- if (nrow(fl)) fl[status != "accepted"] else fl
  list(html = paste(parts, collapse = "\n"),
       summary = data.table::data.table(
         variable_name = v, label = d1$label, rdb_table = d1$rdb_table, database = d1$database, report_type = rtype,
         n_xpaths = nrow(x), n_filings = sum(x$n),
         n_fail = sum(checks$result == "fail"), n_warn = sum(checks$result == "warn"),
         n_flags_open = nrow(fl_open), n_flags_error = sum(fl_open$severity == "error")))
}

pg_head <- function(v, label, root = "../") {
  sprintf(paste0("<!doctype html><html lang=\"en\"><head><meta charset=\"utf-8\">",
                 "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">",
                 "<title>%s · concordance990</title><meta name=\"description\" content=\"%s\">",
                 "<link rel=\"stylesheet\" href=\"%svariables.css\"></head><body><main>"), pg_esc(v), pg_esc(label), root)
}

pg_dictionary <- function(d, xp) {
  d1 <- d[1]
  dict_page <- if (grepl("^PF", d1$rdb_table)) "data-dictionary-990pf.html" else "data-dictionary-990.html"
  tbl <- paste(sprintf("<a href=\"../../articles/%s#%s\"><code>%s</code></a> (%s)", dict_page, tolower(d$rdb_table),
                       pg_esc(d$rdb_table), tolower(d$rdb_relationship)), collapse = "<br>")
  scope <- d1$variable_scope
  if (scope %in% names(scope_text)) scope <- paste0(scope, " – ", scope_text[[scope]])
  kv <- c(Description = pg_esc(d1$description),
          Table = tbl,
          Part = pg_esc(d1$part_title),
          Location = sprintf("<code>%s</code>", pg_esc(d1$location_code_family)),
          Type = sprintf("%s%s", pg_esc(d1$data_type_simple), if (isTRUE(d1$multi_value == "TRUE")) " (multi-value: repeated values joined in one cell)" else ""),
          Scope = pg_esc(scope),
          Database = pg_esc(gsub(";", ", ", d1$database)),
          Forms = pg_esc(gsub(";", ", ", d1$form_types)))
  if (!is.na(d1$family_id)) {
    others <- setdiff(strsplit(d1$family_members, ";")[[1]], d1$variable_name)
    kv["Family"] <- sprintf("%s: pooled with %s. %s", pg_esc(d1$family_label),
                            paste(sprintf("<a href=\"../%s/%s.html\"><code>%s</code></a>", page_dir(others), others, others), collapse = ", "),
                            pg_esc(d1$family_definition))
  }
  kv <- kv[nzchar(kv)]
  paste0("<dl class=\"kv\">", paste0("<dt>", names(kv), "</dt><dd>", kv, "</dd>", collapse = ""), "</dl>")
}

pg_tiles <- function(x, fl, years) {
  obs <- x[n > 0]
  yrs <- if (nrow(obs)) paste0(min(obs$y0), "–", max(obs$y1)) else "never"
  open <- if (nrow(fl)) fl[status != "accepted"] else fl
  tile <- function(v, k) sprintf("<div class=\"tile\"><div class=\"v\">%s</div><div class=\"k\">%s</div></div>", v, k)
  paste0("<div class=\"tiles\">",
         tile(sprintf("%d<small> / %d</small>", nrow(obs), nrow(x)), "xpaths observed / mapped"),
         tile(pg_k(sum(x$n)), "filings with a value"),
         tile(yrs, "tax years observed"),
         tile(sprintf("%d<small>%s</small>", nrow(open), if (nrow(fl) > nrow(open)) sprintf(" + %d reviewed", nrow(fl) - nrow(open)) else ""),
              "open flags"),
         "</div>")
}

pg_checks <- function(checks, fl) {
  out <- character()
  if (nrow(checks)) {
    out <- c("<h3>Value checks</h3>", pg_table(c("Result", "Value check", "Detail"),
                    lapply(seq_len(nrow(checks)), function(i) c(pg_status(checks$result[i]), pg_esc(checks$check[i]), pg_esc(checks$detail[i]))),
                    cls = "tbl checks"))
  }
  if (nrow(fl)) {
    fl <- fl[order(status == "accepted", match(severity, c("error", "warn", "info")))]
    out <- c(out, "<h3>Flags</h3>", pg_table(c("Flag", "Severity", "Xpath", "Detail", "Review"),
      lapply(seq_len(nrow(fl)), function(i) c(
        sprintf("<code>%s</code>", fl$flag_code[i]), pg_status(fl$severity[i]),
        if (nzchar(fl$xpath[i])) sprintf("<code class=\"xp\">%s</code>", pg_esc(short_xpath(fl$xpath[i]))) else "(variable)",
        pg_esc(pg_trunc(fl$detail[i], 220)),
        paste0(pg_status(fl$status[i]), if (!is.na(fl$note[i]) && nzchar(fl$note[i])) sprintf("<details><summary>note</summary>%s</details>", pg_esc(fl$note[i])) else "")
      )), cls = "tbl flags"))
  } else out <- c(out, "<p class=\"muted\">No flags.</p>")
  paste(out, collapse = "\n")
}

pg_xpaths <- function(x) {
  rows <- lapply(seq_len(nrow(x)), function(i) {
    r <- x[i]
    c(r$id, sprintf("<code class=\"xp\">%s</code>", pg_esc(short_xpath(r$xpath))), pg_esc(r$form_type),
      if (r$n > 0) paste0(r$y0, "–", r$y1) else "<span class=\"muted\">not observed</span>",
      pg_n(r$n),
      if (!is.na(r$pct_filers_reporting) && nzchar(r$pct_filers_reporting)) paste0(r$pct_filers_reporting, "%") else "",
      if (r$n > 0 && r$n_rep > 0) pg_pct(r$n_rep / r$n) else "")
  })
  paste0(pg_table(c("", "Xpath (under /Return/ReturnData or /Return/ReturnHeader)", "Form", "Years", "Filings", "% filers", "Repeats in"),
                  rows, num = 5:7),
         "<p class=\"note\"><b>% filers</b>: percent of in-scope filers whose return has the xpath, in its latest year. <b>Repeats in</b>: share of filings where the element occurs more than once.</p>")
}

pg_coverage <- function(x, st, filings, years) {
  if (!nrow(st) || !length(years)) return("<p class=\"muted\">This variable was never observed in the filing evidence.</p>")
  yh <- sprintf("<th class=\"num\">&rsquo;%02d</th>", years %% 100)
  by <- st[, .(n = sum(n_filings)), by = .(xpath, tax_year)]
  obs <- x[n > 0]
  rows <- vapply(seq_len(nrow(obs)), function(i) {
    b <- by[xpath == obs$xpath[i]]
    n <- b$n[match(years, b$tax_year)]
    n[is.na(n)] <- 0
    cells <- sprintf("<td class=\"c c%d\" title=\"%s, TY%d: %s filings\">%s</td>", pg_shade_n(n), obs$id[i], years, pg_n(n),
                     ifelse(n > 0, pg_k(n), ""))
    sprintf("<tr><th title=\"%s\">%s</th>%s</tr>", pg_esc(short_xpath(obs$xpath[i])), obs$id[i], paste(cells, collapse = ""))
  }, "")
  # fill rate: filings with a value / all filings of that return type
  den <- filings[, .(den = sum(n_filings)), by = .(tax_year, return_type)]
  # xpaths of one variable can sit in the same filing (Part III programs), so
  # counts are not summed: the largest xpath is a lower bound on the fill rate
  fr <- st[, .(n = sum(n_filings)), by = .(tax_year, return_type, xpath)][, .(n = max(n)), by = .(tax_year, return_type)]
  fr <- merge(fr, den, by = c("tax_year", "return_type"))
  rt_lab <- c("990" = "990", "990EZ" = "990-EZ", "990PF" = "990-PF")
  fr_rows <- vapply(intersect(names(rt_lab), unique(fr$return_type)), function(rt) {
    b <- fr[return_type == rt]
    p <- pmin(1, b$n / b$den)[match(years, b$tax_year)]
    cells <- sprintf("<td class=\"c p%d\" title=\"%s, TY%d: %s of filings\">%s</td>", pg_shade_p(p), rt_lab[[rt]], years,
                     pg_pct(p), ifelse(is.na(p), "", ifelse(p >= 0.995, "100", ifelse(p < 0.005, "<1", formatC(100 * p, format = "f", digits = 0)))))
    sprintf("<tr><th>%s</th>%s</tr>", rt_lab[[rt]], paste(cells, collapse = ""))
  }, "")
  paste0("<div class=\"wrap\"><table class=\"grid\"><thead><tr><th>Filings</th>", paste(yh, collapse = ""), "</tr></thead><tbody>",
         paste(rows, collapse = ""), "</tbody><tbody class=\"fill\"><tr><th colspan=\"", length(years) + 1L,
         "\">Fill rate: % of all filings of the return type (largest xpath)</th></tr>", paste(fr_rows, collapse = ""), "</tbody></table></div>",
         "<p class=\"note\">Filings with a value, by xpath (rows, numbered as in the xpath table) and tax year. A change of row from one year to the next is usually the IRS renaming the element (most were renamed in 2013). Hover a cell for the exact count.</p>")
}

pg_values <- function(rtype, st, vals, shp, x) {
  if (!nrow(st)) return("<p class=\"muted\">No values observed.</p>")
  id <- stats::setNames(x$id, x$xpath)
  rt_lab <- c("990" = "990", "990EZ" = "990-EZ", "990PF" = "990-PF")
  rtl <- function(r) ifelse(r %in% names(rt_lab), rt_lab[r], r)
  top_values <- function(n = 8, what = "Value") {
    if (!nrow(vals)) return("")
    t <- vals[, .(n = sum(n_filings)), by = value][order(-n)]
    tot <- sum(t$n)
    t <- t[seq_len(min(.N, n))]
    pg_table(c(what, "Filings", "Share"),
             lapply(seq_len(nrow(t)), function(i) c(if (nzchar(t$value[i])) sprintf("<code>%s</code>", pg_esc(pg_trunc(t$value[i], 90))) else "<span class=\"muted\">(blank)</span>",
                                                    pg_n(t$n[i]), pg_pct(t$n[i] / tot))), num = 2:3)
  }
  if (rtype %in% c("amount", "number")) {
    s <- st[return_type %in% names(rt_lab), .(filings = sum(n_filings), p_num = wmean(p_num, n_occurrences),
              p_zero = wmean(p_zero, n_occurrences), p_neg = wmean(p_negative, n_occurrences),
              q25 = stats::median(q25, na.rm = TRUE), q50 = stats::median(q50, na.rm = TRUE),
              q75 = stats::median(q75, na.rm = TRUE), q99 = stats::median(q99, na.rm = TRUE)), by = return_type][order(match(return_type, names(rt_lab)))]
    return(paste0(pg_table(c("Return", "Filings", "% numeric", "% zero", "% negative", "P25", "Median", "P75", "P99"),
      lapply(seq_len(nrow(s)), function(i) with(s[i], c(rtl(return_type), pg_n(filings), pg_pct(p_num), pg_pct(p_zero), pg_pct(p_neg),
                                                        pg_num(q25), pg_num(q50), pg_num(q75), pg_num(q99)))), num = 2:9),
      "<p class=\"note\">Percentiles are the median over tax years of each year's percentile.</p>"))
  }
  if (rtype %in% c("checkbox", "code")) return(top_values())
  if (rtype %in% c("date", "identifier")) {
    if (!nrow(shp)) return("")
    t <- shp[, .(n = sum(n_filings)), by = shape][order(-n)]
    tot <- sum(t$n)
    t <- t[seq_len(min(.N, 6))]
    return(paste0(pg_table(c("Format", "Filings", "Share"),
                           lapply(seq_len(nrow(t)), function(i) c(sprintf("<code>%s</code>", pg_esc(pg_trunc(t$shape[i], 60))), pg_n(t$n[i]), pg_pct(t$n[i] / tot))), num = 2:3),
                  "<p class=\"note\">Format of the values: <code>9</code> a digit, <code>A</code> a letter.</p>"))
  }
  # text: length, then the most common values (boilerplate)
  s <- st[, .(filings = sum(n_filings), avg_len = wmean(avg_len, n_occurrences), max_len = suppressWarnings(as.numeric(max(max_len, na.rm = TRUE)))), by = return_type][is.finite(max_len)][order(match(return_type, names(rt_lab)))]
  paste0(pg_table(c("Return", "Filings", "Average length", "Longest"),
                  lapply(seq_len(nrow(s)), function(i) with(s[i], c(rtl(return_type), pg_n(filings), formatC(avg_len, format = "f", digits = 0), pg_n(max_len)))), num = 2:4),
         "<h3>Most common values</h3>", top_values(6))
}

pg_examples <- function(ex, x) {
  if (!nrow(ex)) return("<p class=\"muted\">No examples.</p>")
  ex <- ex[order(-tax_year)][, .SD[1], by = .(xpath)][order(-tax_year)][seq_len(min(.N, 8))]
  id <- stats::setNames(x$id, x$xpath)
  pg_table(c("Tax year", "Return", "Xpath", "Organization", "Value", ""),
           lapply(seq_len(nrow(ex)), function(i) c(ex$tax_year[i], pg_esc(ex$return_type[i]), id[[ex$xpath[i]]],
                                                   pg_esc(pg_trunc(one_line(ex$org_name[i]), 40)),
                                                   pg_esc(pg_trunc(one_line(ex$value[i]), 80)),
                                                   sprintf("<a href=\"%s\">XML</a>", xml_url(ex$objectid[i])))),
           cls = "tbl ex", num = 1)
}

variable_index <- function(res, ev) {
  res <- res[order(variable_name)]
  rows <- lapply(seq_len(nrow(res)), function(i) with(res[i], c(
    sprintf("<a href=\"%s/%s.html\"><code>%s</code></a>", page_dir(variable_name), variable_name, variable_name), pg_esc(label),
    sprintf("<code>%s</code>", rdb_table), report_type, pg_k(n_filings),
    paste(c(if (n_fail) pg_status("fail"), if (n_warn) pg_status("warn"),
            if (n_flags_open) sprintf("%d open flag%s", n_flags_open, if (n_flags_open > 1) "s" else "")), collapse = " ")
  )))
  paste(c(pg_head("Variable pages", "Light validation pages, one per variable", root = ""),
          "<header><p class=\"kicker\"><a href=\"../index.html\">concordance990</a> · IRS 990 Master Concordance</p>",
          "<h1>Variable pages</h1>",
          sprintf("<p class=\"lede\">One page per variable: its dictionary entry, checks and flags, the xpaths pooled into it, coverage by tax year, values, and example filings. %d pages.</p></header>", nrow(res)),
          pg_table(c("Variable", "Label", "Table", "Type", "Filings", "Attention"), rows, num = 5),
          "</main></body></html>"), collapse = "\n")
}
