#' Validation reports, one per variable
#'
#' @description
#' Renders an HTML validation report per variable from the evidence tables
#' ([build_evidence()], [combine_evidence()]) and flags ([flag_xpaths()]).
#' The report layout is shared; the value checks depend on the report type
#' chosen by [report_type()]: `amount`, `number`, `checkbox`, `date`, `text`,
#' `code`, `identifier`. Templates live in `inst/reports/`.
#'
#' @name reports
NULL

# Reference categorical palette (fixed order, never cycled) and chart ink
report_palette <- c("#2a78d6", "#eb6834", "#1baf7a", "#eda100",
                    "#e87ba4", "#008300", "#4a3aa7", "#e34948")
report_ink <- list(surface = "#ffffff", primary = "#1f2429", secondary = "#4d565f",
                   muted = "#6d7681", grid = "#dcdfe4", axis = "#c3c8cf", other = "#b5b9bf")

report_type_labels <- c(amount = "Amount", number = "Number", checkbox = "Checkbox",
                        date = "Date", text = "Text", code = "Code", identifier = "Identifier")

id_xsd_types <- c("EINType", "SSNType", "PTINType", "PhoneNumberType", "CUSIPNumberType",
                  "ZIPCodeType", "BusinessNameControlType")

#' Choose the report type for a variable
#'
#' @param xp Concordance rows (v1 layout) for one variable.
#' @return One of `amount`, `number`, `checkbox`, `date`, `text`, `code`,
#'   `identifier`.
#' @export
report_type <- function(xp) {
  mode1 <- function(x) { x <- x[!is.na(x)]; if (!length(x)) NA_character_ else names(sort(table(x), decreasing = TRUE))[1] }
  dts  <- mode1(xp$data_type_simple)
  xsd  <- unique(stats::na.omit(xp$data_type_xsd))
  leaf <- sub(".*/", "", xp$xpath)
  var  <- xp$variable_name[1]
  share <- function(pat) mean(grepl(pat, leaf))

  if (identical(dts, "checkbox")) return("checkbox")
  if (identical(dts, "date") || any(xsd %in% c("DateType", "TimestampType", "YearType"))) return("date")
  if (any(xsd %in% id_xsd_types) ||
      grepl("(^|_)(EIN|SSN|PTIN|PHONE|ZIP|CUSIP)(_|$)", var) && !grepl("_X$", var)) return("identifier")
  if (identical(dts, "numeric")) {
    # Amounts are the default; counts, ratios, percents and hours are numbers
    count <- any(grepl("^(Count|Count2|IntegerNN|Ratio|LargeRatio|DecimalNN|xsd:decimal)", xsd)) &&
      !any(grepl("USAmount", xsd))
    count <- count || share("(Cnt|Pct|Rt|Num|Hrs|Hours|Percentage|Count)$") >= 0.5 ||
      grepl("(_|^)(NUM|PCT|HOURS|HRS|COUNT|RATIO|YEARS)(_|$)", var)
    return(if (count) "number" else "amount")
  }
  if (!grepl("_X$", var) &&
      (any(xsd %in% c("StateType", "CountryType")) || share("(Cd|Code)$") >= 0.5 ||
       grepl("_(STATE|CNTR|CODE|CD)$", var))) return("code")
  "text"
}


#' Load evidence tables for reporting
#'
#' @param evidence_dir Directory written by [combine_evidence()].
#' @return A list of data.tables.
#' @export
load_evidence <- function(evidence_dir = "evidence") {
  rd <- function(f) {
    p <- file.path(evidence_dir, f)
    if (file.exists(p)) data.table::fread(p, encoding = "UTF-8") else data.table::data.table()
  }
  ev <- list(
    stats    = read_xpath_stats(file.path(evidence_dir, "xpath_stats.csv")),
    filings  = rd("filings.csv"),
    groups   = rd("xpath_groups.csv"),
    values   = rd("xpath_values.csv"),
    shapes   = rd("xpath_shapes.csv"),
    examples = rd("xpath_examples.csv"),
    collisions = rd("variable_collisions.csv"),
    flags    = rd("xpath_flags.csv")
  )
  ev$stats <- ev$stats[node_type == "terminal"]
  mf <- file.path(evidence_dir, "manifest.json")
  ev$manifest <- if (file.exists(mf)) jsonlite::read_json(mf) else list()
  ev
}


#' Render validation reports
#'
#' @param variables Character vector of variable names.
#' @param concordance Concordance in the v1 layout.
#' @param ev Evidence list from [load_evidence()].
#' @param out_dir Output directory for HTML files.
#' @param template Parent template (default: the package's
#'   `inst/reports/variable-report.Rmd`).
#' @param index Also write `index.html` listing the rendered reports.
#'
#' @return Invisibly, a data.frame with one row per report.
#' @export
render_reports <- function(variables, concordance, ev, out_dir = "reports",
                           template = report_template(), index = TRUE) {
  dir.create(out_dir, recursive = TRUE, showWarnings = FALSE)
  cc <- data.table::as.data.table(concordance)
  rows <- lapply(variables, function(v) {
    xp <- cc[variable_name == v]
    if (!nrow(xp)) { warning("Unknown variable: ", v); return(NULL) }
    rtype <- report_type(xp)
    file  <- paste0(v, ".html")
    env <- new.env(parent = globalenv())
    env$cc <- cc; env$ev <- ev; env$template_dir <- dirname(template)
    rmarkdown::render(template, output_file = file,
                      output_dir = normalizePath(out_dir, winslash = "/"),
                      intermediates_dir = tempdir(),
                      params = list(variable = v, report_type = rtype,
                                    subtitle = sprintf("%s · %s report",
                                                       ifelse(is.na(xp$label[1]), "(no label)", gsub("\"", "'", xp$label[1], fixed = TRUE)),
                                                       report_type_labels[[rtype]])),
                      envir = env, quiet = TRUE)
    # self-contained output; drop the (sometimes empty) figure folder
    unlink(file.path(out_dir, paste0(v, "_files")), recursive = TRUE)
    fl <- ev$flags[variable_name == v | xpath %in% xp$xpath]
    data.frame(variable_name = v, report_type = rtype,
               label = xp$label[1], rdb_table = xp$rdb_table[1],
               n_error = sum(fl$severity == "error"), n_warn = sum(fl$severity == "warn"),
               n_info = sum(fl$severity == "info"), file = file)
  })
  res <- do.call(rbind, rows)
  # output is self-contained; figure folders left behind by rendering are not referenced
  unlink(file.path(out_dir, paste0(variables, "_files")), recursive = TRUE)
  if (index && !is.null(res)) write_report_index(res, file.path(out_dir, "index.html"))
  invisible(res)
}

#' @keywords internal
report_template <- function() {
  p <- system.file("reports", "variable-report.Rmd", package = "concordance990")
  if (!nzchar(p)) p <- file.path("inst", "reports", "variable-report.Rmd")
  normalizePath(p, winslash = "/")
}

#' @keywords internal
write_report_index <- function(res, path) {
  esc <- function(x) htmltools::htmlEscape(ifelse(is.na(x), "", x))
  badge <- function(n, sev) if (n > 0) sprintf('<span class="sev sev-%s">%s %d</span>', sev,
                                                 c(error = "&#9888; error", warn = "&#9650; warn", info = "&#9432; info")[[sev]], n) else ""
  res <- res[order(res$report_type, res$variable_name), ]
  trs <- vapply(seq_len(nrow(res)), function(i) {
    r <- res[i, ]
    sprintf('<tr><td><a href="%s">%s</a></td><td>%s</td><td class="wrap">%s</td><td>%s</td><td>%s %s %s</td></tr>',
            r$file, esc(r$variable_name), esc(r$report_type), esc(r$label), esc(r$rdb_table),
            badge(r$n_error, "error"), badge(r$n_warn, "warn"), badge(r$n_info, "info"))
  }, character(1))
  css <- readLines(file.path(dirname(report_template()), "report.css"), warn = FALSE)
  html <- c('<!DOCTYPE html><html lang="en"><head><meta charset="utf-8">',
            '<meta name="viewport" content="width=device-width, initial-scale=1">',
            '<title>Concordance Validation Reports</title>',
            '<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Zilla+Slab:wght@500;600;700&family=Source+Sans+3:ital,wght@0,400;0,600;0,700;1,400&family=Source+Code+Pro:wght@400;600&display=swap">',
            '<style>', css, '</style></head><body><main>',
            '<h1 class="title index">Variable validation reports</h1>',
            sprintf('<h3 class="subtitle">%d variables &middot; filing evidence TY2009&ndash;2024 &middot; built %s</h3>',
                    nrow(res), format(Sys.Date())),
            '<h2>How to read these reports</h2>',
            '<p>Each report checks one concordance variable against how its xpaths are actually used in e-filed returns: which xpaths carry values in which years, whether the values look like the variable&rsquo;s data type, and whether pooled xpaths agree. <strong>Errors</strong> are likely mapping mistakes; <strong>warnings</strong> need a reviewer&rsquo;s judgement; <strong>info</strong> lines are context.</p>',
            '<h2>Reports</h2>',
            '<div class="tbl-wrap"><table class="tbl"><thead><tr><th>Variable</th><th>Report type</th><th>Label</th><th>Table</th><th>Flags</th></tr></thead><tbody>',
            trs, '</tbody></table></div></main></body></html>')
  writeLines(html, path, useBytes = TRUE)
}


# ---- helpers used inside the templates --------------------------------------

#' @keywords internal
short_xpath <- function(x) sub("^/Return/(ReturnData|ReturnHeader)/", "", x)

#' @keywords internal
xpath_form <- function(x) {
  root <- vapply(strsplit(x, "/", fixed = TRUE), function(p) if (length(p) >= 4) p[4] else "", character(1))
  data.table::fcase(grepl("^/Return/ReturnHeader", x), "Header",
                    root == "IRS990", "990",
                    root == "IRS990EZ", "990-EZ",
                    grepl("^IRS990Schedule", root), paste("Sched", sub("IRS990Schedule", "", root)),
                    default = root)
}

#' @keywords internal
xml_url <- function(objectid) {
  sprintf("https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/%s_public.xml",
          sub("^OID-", "", objectid))
}

#' Series labels and colors for a variable's xpaths (8 slots, then "Other")
#' @keywords internal
series_map <- function(xpaths, n_filings, first_year) {
  o <- order(first_year, -n_filings)
  x <- xpaths[o]
  lab <- short_xpath(x)
  lab <- ifelse(nchar(lab) > 60, paste0("...", substring(lab, nchar(lab) - 56)), lab)
  if (length(x) > 8) lab[8:length(x)] <- "Other"
  col <- c(report_palette, report_ink$other)[pmin(seq_along(x), 9)]
  col[lab == "Other"] <- report_ink$other
  data.table::data.table(xpath = x, series = factor(lab, levels = unique(lab)), color = col)
}

#' @keywords internal
theme_report <- function() {
  ggplot2::theme_minimal(base_size = 11, base_family = "sans") +
    ggplot2::theme(
      plot.background  = ggplot2::element_rect(fill = report_ink$surface, colour = NA),
      panel.grid.major = ggplot2::element_line(colour = report_ink$grid, linewidth = 0.3),
      panel.grid.minor = ggplot2::element_blank(),
      axis.line.x      = ggplot2::element_line(colour = report_ink$axis, linewidth = 0.3),
      axis.text        = ggplot2::element_text(colour = report_ink$secondary),
      axis.title       = ggplot2::element_text(colour = report_ink$secondary),
      strip.text       = ggplot2::element_text(colour = report_ink$primary, face = "bold", hjust = 0),
      legend.position  = "bottom", legend.justification = "left",
      legend.title     = ggplot2::element_blank(),
      legend.text      = ggplot2::element_text(colour = report_ink$secondary, size = 9),
      plot.title       = ggplot2::element_text(colour = report_ink$primary, face = "bold", size = 12),
      plot.subtitle    = ggplot2::element_text(colour = report_ink$secondary, size = 10))
}

#' Status line for a check: icon + label, never color alone
#' @keywords internal
check_table <- function(checks) {
  if (!nrow(checks)) return(invisible())
  icon <- c(pass = "&#10003; pass", warn = "&#9650; warn", fail = "&#9888; fail", info = "&#9432; info")
  cls  <- c(pass = "ok", warn = "warn", fail = "error", info = "info")
  rows <- sprintf('<tr><td><span class="sev sev-%s">%s</span></td><td class="wrap">%s</td><td class="wrap">%s</td></tr>',
                  cls[checks$result], icon[checks$result],
                  htmltools::htmlEscape(one_line(checks$check)), htmltools::htmlEscape(one_line(checks$detail)))
  cat('<div class="tbl-wrap"><table class="tbl checks"><thead><tr><th>Result</th><th>Check</th><th>Detail</th></tr></thead><tbody>',
      rows, '</tbody></table></div>', sep = "\n")
}

#' Plain HTML table with a caption (the table view for each chart)
#' @keywords internal
html_table <- function(d, caption = NULL, digits = 2, max_rows = 60, collapse = FALSE) {
  d <- as.data.frame(d)
  if (!nrow(d)) { cat("<p class='muted'>No data.</p>"); return(invisible()) }
  more <- nrow(d) > max_rows
  d <- utils::head(d, max_rows)
  fmt <- function(x) {
    if (is.numeric(x)) {
      ifelse(is.na(x), "", ifelse(abs(x) >= 1000 | x == round(x),
                                  formatC(x, format = "f", digits = 0, big.mark = ","),
                                  formatC(x, format = "f", digits = digits, big.mark = ",")))
    } else htmltools::htmlEscape(ifelse(is.na(x), "", one_line(as.character(x))))
  }
  # years are labels, not quantities
  for (nm in grep("year", names(d), ignore.case = TRUE, value = TRUE)) {
    if (is.numeric(d[[nm]])) d[[nm]] <- ifelse(is.na(d[[nm]]), "", as.character(as.integer(d[[nm]])))
  }
  # long text columns wrap; everything else stays on one line
  cls <- vapply(d, function(col) {
    if (is.numeric(col)) ' class="num"'
    else if (max(nchar(as.character(col)), 0, na.rm = TRUE) > 24) ' class="wrap"'
    else ""
  }, character(1))
  body <- vapply(seq_len(nrow(d)), function(i) {
    paste0("<tr>", paste0(vapply(seq_along(d), function(j) {
      sprintf("<td%s>%s</td>", cls[j], fmt(d[[j]][i]))
    }, character(1)), collapse = ""), "</tr>")
  }, character(1))
  head <- paste0("<tr>", paste0(sprintf("<th>%s</th>", htmltools::htmlEscape(names(d))), collapse = ""), "</tr>")
  tbl <- c('<div class="tbl-wrap"><table class="tbl">', if (!is.null(caption)) sprintf("<caption>%s</caption>", caption),
           "<thead>", head, "</thead><tbody>", body, "</tbody></table></div>",
           if (more) "<p class='muted'>First rows shown.</p>")
  if (collapse) tbl <- c("<details><summary>Table view</summary>", tbl, "</details>")
  cat(tbl, sep = "\n")
}

#' Weighted mean that tolerates all-NA input
#' @keywords internal
wmean <- function(x, w) { ok <- !is.na(x) & !is.na(w); if (!any(ok)) NA_real_ else sum(x[ok] * w[ok]) / sum(w[ok]) }

#' Maximum as double, NA when there are no values
#' @keywords internal
max_na <- function(x) if (all(is.na(x))) NA_real_ else as.numeric(max(x, na.rm = TRUE))

#' Collapse line breaks so values stay inside one raw-HTML block
#' @keywords internal
one_line <- function(x) gsub("[[:space:]]+", " ", x)
