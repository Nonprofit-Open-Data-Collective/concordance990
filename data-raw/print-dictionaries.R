# Printable data dictionaries and form outline: one clean table per database
# on landscape letter paper, and the outline on portrait letter, rendered to
# PDF with headless Chrome. The tables come from the same helpers as the
# dictionary and outline articles
# (vignettes/articles/_dictionary.R), so they match the website.
#
# From the repository root, after rebuilding the concordance:
#   Rscript data-raw/print-dictionaries.R
#
# Writes pkgdown/assets/print/data-dictionary-990.pdf, data-dictionary-990pf.pdf
# and form-outline.pdf (pkgdown copies them to docs/print/ when it
# builds the site) and copies them to docs/print/ now.

local({
  owd <- setwd("vignettes/articles")
  on.exit(setwd(owd))
  source("_dictionary.R")
})

chrome <- Sys.getenv("CHROME_PATH", unset = "")
if (chrome == "") {
  chrome <- c("C:/Program Files/Google/Chrome/Application/chrome.exe",
              "C:/Program Files (x86)/Microsoft/Edge/Application/msedge.exe",
              "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome",
              Sys.which(c("google-chrome", "chromium", "chromium-browser")))
  chrome <- chrome[nzchar(chrome) & file.exists(chrome)][1]
}
if (is.na(chrome)) stop("Chrome not found; set CHROME_PATH")

print_css <- '
@page { size: letter landscape; margin: .45in .4in .5in;
        @bottom-left { content: var(--doc-title); font: 7pt "Segoe UI", Arial, sans-serif; color: #6d7681; }
        @bottom-right { content: "Page " counter(page) " of " counter(pages); font: 7pt "Segoe UI", Arial, sans-serif; color: #6d7681; } }
* { box-sizing: border-box; }
body { font: 7.6pt/1.3 "Segoe UI", Arial, sans-serif; color: #1b1f23; margin: 0; }
h1 { font-size: 16pt; margin: 0 0 .15em; color: #153243; }
.sub { color: #4d565f; margin: 0 0 .8em; font-size: 8.5pt; }
.legend { display: grid; grid-template-columns: 1fr 1fr; gap: .25em 2em; margin: 0 0 1em;
          padding: .6em .8em; background: #f4f6f8; border-radius: 4px; font-size: 7.4pt; }
.legend b { color: #153243; }
table.contents { border-collapse: collapse; margin: 0 0 1.2em; font-size: 8pt; }
table.contents th, table.contents td { padding: .15em .9em .15em 0; text-align: left; }
table.contents td.n, table.contents th.n { text-align: right; }
table.dict { width: 100%; border-collapse: collapse; table-layout: fixed; }
table.dict thead th { font-size: 6.6pt; text-transform: uppercase; letter-spacing: .05em; color: #4d565f;
                      text-align: left; padding: .3em .45em; border-bottom: 1.2px solid #1b1f23; }
table.dict td { padding: .22em .45em; vertical-align: top; border-bottom: .5px solid #dde1e5; }
table.dict tr { break-inside: avoid; }
col.c-var { width: 25%; } col.c-lab { width: 37%; } col.c-loc { width: 15%; }
col.c-type { width: 6.5%; } col.c-scope { width: 8%; } col.c-rate { width: 8.5%; }
td.var { font-family: "JetBrains Mono", Consolas, "Courier New", monospace; font-weight: 700; font-size: 7pt;
         overflow-wrap: anywhere; }
td.loc { font-size: 6.8pt; color: #4d565f; }
td.rate, th.rate { text-align: right; white-space: nowrap; letter-spacing: 0; font-variant-numeric: tabular-nums; }
.desc { display: block; color: #6d7681; font-size: 6.9pt; }
.list { font-size: 6pt; font-weight: 700; color: #4d565f; border: .6px solid #8a939c; border-radius: 2px;
        padding: 0 .25em; margin-left: .3em; font-family: "Segoe UI", Arial, sans-serif; }
tr.form td { background: #153243; color: #fff; font-size: 10pt; font-weight: 700; padding: .45em .5em;
             border: 0; break-after: avoid; }
tr.form td .filed { font-weight: 400; font-size: 7.5pt; color: rgba(255,255,255,.8); margin-left: .8em; }
tr.part td { font-size: 8.6pt; font-weight: 700; color: #153243; padding: .7em .45em .2em;
             border-bottom: 1px solid #8a939c; break-after: avoid; }
tr.tbl td { color: #fff; padding: .25em .45em; border: 0; break-after: avoid; }
tr.tbl-one td { background: #1f3864; } tr.tbl-many td { background: #9c5a1c; }
tr.tbl .name { font-family: "JetBrains Mono", Consolas, monospace; font-weight: 700; font-size: 7.6pt; }
tr.tbl .card { font-size: 6.4pt; font-weight: 700; letter-spacing: .05em; border: 1px solid #fff;
               border-radius: 1em; padding: 0 .45em; margin: 0 .5em 0 .7em; }
tr.tbl .ctext { font-size: 7pt; color: rgba(255,255,255,.85); }
'

print_dictionary <- function(form, out_dir) {
  dd <- data_dictionary(form)
  fm <- cc_forms()[, .(form_id, form_title = title, form_order = as.integer(sort_order))]
  dd <- merge(dd, fm, by = "form_id", all.x = TRUE, sort = FALSE)
  dd[, order := seq_len(.N)]
  if (form == "F990PF") dd[form_id == "F990", `:=`(form_title = "Return header (shared with the Form 990 and 990-EZ)", form_order = 0L)]
  rates <- variable_rates(form)
  dd <- merge(dd, rates, by = "variable_name", all.x = TRUE, sort = FALSE)
  dd[is.na(rate), rate := ""]
  setorder(dd, form_order, order)
  filed <- function(f) if (form == "F990PF" && f == "F990") "all returns" else filed_with[[f]]

  title <- if (form == "F990") "Data dictionary: Form 990 and 990-EZ" else "Data dictionary: Form 990-PF"
  rows <- character()
  for (f in unique(dd$form_id)) {
    df <- dd[form_id == f]
    rows <- c(rows, sprintf("<tr class='form'><td colspan='6'>%s<span class='filed'>Filed with: %s &middot; %s variables in %s tables</span></td></tr>",
                            esc(df$form_title[1]), filed(f), n_fmt(uniqueN(df$variable_name)), uniqueN(df$rdb_table)))
    for (p in unique(df$part_id)) {
      dp <- df[part_id == p]
      rows <- c(rows, sprintf("<tr class='part'><td colspan='6'>%s</td></tr>", esc(dp$part_title[1])))
      for (t in unique(dp$rdb_table)) {
        dt <- dp[rdb_table == t]
        card <- dt$rdb_relationship[1]
        rows <- c(rows, sprintf("<tr class='tbl tbl-%s'><td colspan='6'><span class='name'>%s</span><span class='card'>%s</span><span class='ctext'>%s</span></td></tr>",
                                tolower(card), t, card, card_text[[card]]))
        lab <- ifelse(dt$description == "" | dt$description == dt$label, esc(dt$label),
                      sprintf("%s<span class='desc'>%s</span>", esc(dt$label), esc(dt$description)))
        rows <- c(rows, sprintf("<tr><td class='var'>%s%s</td><td>%s</td><td class='loc'>%s</td><td>%s</td><td>%s</td><td class='rate'>%s</td></tr>",
                                dt$variable_name, ifelse(dt$multi_value == "TRUE", "<span class='list'>LIST</span>", ""),
                                lab, esc(dt$location_code_family), dt$data_type_simple,
                                unname(scope_names[dt$variable_scope]), esc(dt$rate)))
      }
    }
  }

  summ <- dd[, .(tables = uniqueN(rdb_table), variables = uniqueN(variable_name)), by = .(form_id, form_title, form_order)][order(form_order)]
  contents <- paste0("<table class='contents'><tr><th>Form</th><th>Filed with</th><th class='n'>Tables</th><th class='n'>Variables</th></tr>",
                     paste(sprintf("<tr><td>%s</td><td>%s</td><td class='n'>%s</td><td class='n'>%s</td></tr>",
                                   esc(summ$form_title), vapply(summ$form_id, filed, ""), summ$tables, n_fmt(summ$variables)), collapse = ""),
                     "</table>")
  rate_note <- if (form == "F990") "the percent of filers in the variable's scope whose return reports it in the newest schema year. 990 + 990-EZ variables show 990/990-EZ." else
    "the percent of filers in the variable's scope whose return reports it in the newest schema year."
  legend <- paste0("<div class='legend'>",
    "<div><b>Variable</b>: the column name in the research database. <span class='list'>LIST</span> marks a field whose repeated values are joined into one cell.</div>",
    "<div><b>Tables</b>: <b style='color:#1f3864'>ONE</b> tables have one row per filing; <b style='color:#9c5a1c'>MANY</b> tables one row per repeated item.</div>",
    "<div><b>Location</b>: form, part and line code. <b>Type</b>: numeric, text, checkbox or date.</div>",
    "<div><b>Scope</b>: the returns that report the variable. <b>% Reporting</b>: ", rate_note,
    " Blank: not in the current schema; &lt;0.1%: under one in a thousand.</div></div>")

  html <- paste0(
    "<!doctype html><html><head><meta charset='utf-8'><title>", title, "</title>",
    "<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@700&display=swap'>",
    "<style>:root { --doc-title: \"", title, " \\00b7  concordance990 ", as.character(packageVersion("concordance990")), "\"; }", print_css, "</style></head><body>",
    "<h1>", title, "</h1>",
    sprintf("<p class='sub'>concordance990 version %s &middot; generated %s &middot; %s variables in %s tables &middot; nonprofit-open-data-collective.github.io/concordance990</p>",
            packageVersion("concordance990"), format(Sys.Date(), "%B %e, %Y"), n_fmt(uniqueN(dd$variable_name)), uniqueN(dd$rdb_table)),
    contents, legend,
    "<table class='dict'><colgroup><col class='c-var'><col class='c-lab'><col class='c-loc'><col class='c-type'><col class='c-scope'><col class='c-rate'></colgroup>",
    "<thead><tr><th>Variable</th><th>Label / description</th><th>Location</th><th>Type</th><th>Scope</th><th class='rate'>% Reporting</th></tr></thead><tbody>",
    paste(rows, collapse = "\n"), "</tbody></table></body></html>")

  chrome_pdf(html, if (form == "F990") "data-dictionary-990" else "data-dictionary-990pf", out_dir)
}

# Print an html page to <out_dir>/<base>.pdf with headless Chrome
chrome_pdf <- function(html, base, out_dir) {
  src <- file.path(tempdir(), paste0(base, ".html"))
  writeLines(html, src, useBytes = TRUE)
  pdf <- normalizePath(file.path(out_dir, paste0(base, ".pdf")), mustWork = FALSE)
  status <- system2(chrome, c("--headless=new", "--disable-gpu", "--no-pdf-header-footer", "--run-all-compositor-stages-before-draw",
                              "--virtual-time-budget=10000",
                              shQuote(paste0("--user-data-dir=", file.path(tempdir(), "chrome"))), shQuote(paste0("--print-to-pdf=", pdf)),
                              shQuote(paste0("file:///", normalizePath(src, winslash = "/")))))
  if (status != 0 || !file.exists(pdf)) stop("Chrome failed to print ", base)
  message("Wrote ", pdf)
  pdf
}

# The outline of forms, parts and tables (as the form-outline article):
# portrait, one row per table with its part, cardinality and variable count
outline_css <- '
@page { size: letter portrait; margin: .5in .55in .55in; }
table.outline { width: 100%; border-collapse: collapse; table-layout: fixed; font-size: 7.8pt; }
table.outline thead th { font-size: 6.6pt; text-transform: uppercase; letter-spacing: .05em; color: #4d565f;
                         text-align: left; padding: .3em .5em; border-bottom: 1.2px solid #1b1f23; }
table.outline td { padding: .2em .5em; vertical-align: top; border-bottom: .5px solid #dde1e5; }
table.outline tr { break-inside: avoid; }
col.c-part { width: 46%; } col.c-tbl { width: 36%; } col.c-card { width: 9%; } col.c-n { width: 9%; }
td.part { font-weight: 600; color: #153243; border-bottom: 0; }
tr.pfirst td { border-top: .6px solid #8a939c; }
td.tname { font-family: "JetBrains Mono", Consolas, "Courier New", monospace; font-weight: 700; font-size: 7.2pt; }
td.n, th.n { text-align: right; font-variant-numeric: tabular-nums; }
td.none { color: #8a939c; font-style: italic; }
.cbadge { font-size: 6.3pt; font-weight: 700; letter-spacing: .05em; color: #fff; border-radius: 1em; padding: .05em .5em; }
.cbadge-one { background: #1f3864; } .cbadge-many { background: #9c5a1c; }
tr.form td { background: #153243; color: #fff; font-size: 9.5pt; font-weight: 700; padding: .4em .5em; border: 0; break-after: avoid; }
tr.form td .filed { font-weight: 400; font-size: 7.3pt; color: rgba(255,255,255,.8); margin-left: .8em; }
'

print_outline <- function(out_dir) {
  tb <- cc_tables()
  v990 <- data_dictionary("F990")[, .(n = uniqueN(variable_name)), by = rdb_table]
  vpf <- data_dictionary("F990PF")[, .(n = uniqueN(variable_name)), by = rdb_table]
  nv <- rbind(v990, vpf[!rdb_table %in% v990$rdb_table])
  tb <- merge(tb, nv, by.x = "table_id", by.y = "rdb_table", all.x = TRUE)
  tb[is.na(n), n := 0L]
  pt <- cc_parts()
  fm <- cc_forms()[order(as.integer(sort_order))]
  fm <- rbind(fm[form_id == "F990"], fm[form_id == "F990PF"], fm[!form_id %in% c("F990", "F990PF")])

  rows <- character()
  for (f in fm$form_id) {
    ft <- tb[form_id == f]
    rows <- c(rows, sprintf("<tr class='form'><td colspan='4'>%s<span class='filed'>Filed with: %s &middot; %s tables, %s variables</span></td></tr>",
                            esc(fm[form_id == f, title]), filed_with[[f]], nrow(ft), n_fmt(sum(ft$n))))
    for (p in pt[form_id == f][order(part_id), part_id]) {
      tp <- tb[part_id == p][order(table_id)]
      part <- esc(pt[part_id == p, title])
      if (!nrow(tp)) {
        rows <- c(rows, sprintf("<tr class='pfirst'><td class='part'>%s</td><td class='none' colspan='3'>no tables</td></tr>", part))
        next
      }
      for (i in seq_len(nrow(tp))) {
        rows <- c(rows, sprintf("<tr%s><td class='part'>%s</td><td class='tname'>%s</td><td><span class='cbadge cbadge-%s'>%s</span></td><td class='n'>%s</td></tr>",
                                if (i == 1) " class='pfirst'" else "", if (i == 1) part else "",
                                tp$table_id[i], tolower(tp$cardinality[i]), tp$cardinality[i], n_fmt(tp$n[i])))
      }
    }
  }

  title <- "Outline of forms, parts and schedules"
  legend <- paste0("<div class='legend'>",
    "<div><b>Tables</b> are named <code>FF-PNN-TNN-NAME</code>: form, part, table number and a short name. By convention <code>T00</code> tables have one row per filing, <code>T01</code> and higher one row per repeated item, <code>T99</code> supplemental explanations.</div>",
    "<div><b style='color:#1f3864'>ONE</b>: one row per filing. <b style='color:#9c5a1c'>MANY</b>: one row per repeated item. 990-EZ lines are mapped into the matching part of the 990; 990-PF parts are numbered as before the 2023 redesign (the 2023 number in parentheses). Variables are documented in the data dictionaries.</div></div>")
  html <- paste0(
    "<!doctype html><html><head><meta charset='utf-8'><title>", title, "</title>",
    "<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@700&display=swap'>",
    "<style>:root { --doc-title: \"", title, " \\00b7  concordance990 ", as.character(packageVersion("concordance990")), "\"; }",
    print_css, outline_css, "</style></head><body>",
    "<h1>", title, "</h1>",
    sprintf("<p class='sub'>concordance990 version %s &middot; generated %s &middot; %s forms and schedules, %s parts, %s tables &middot; nonprofit-open-data-collective.github.io/concordance990</p>",
            packageVersion("concordance990"), format(Sys.Date(), "%B %e, %Y"), nrow(fm), nrow(pt), nrow(tb)),
    legend,
    "<table class='outline'><colgroup><col class='c-part'><col class='c-tbl'><col class='c-card'><col class='c-n'></colgroup>",
    "<thead><tr><th>Part</th><th>Table</th><th>Rows</th><th class='n'>Variables</th></tr></thead><tbody>",
    paste(rows, collapse = "\n"), "</tbody></table></body></html>")
  chrome_pdf(html, "form-outline", out_dir)
}

out_dir <- file.path("pkgdown", "assets", "print")
dir.create(out_dir, recursive = TRUE, showWarnings = FALSE)
pdfs <- c(vapply(c("F990", "F990PF"), print_dictionary, "", out_dir = out_dir), print_outline(out_dir))
dir.create(file.path("docs", "print"), recursive = TRUE, showWarnings = FALSE)
file.copy(pdfs, file.path("docs", "print"), overwrite = TRUE)
