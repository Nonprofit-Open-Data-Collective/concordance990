#' Write the issues report (HTML and CSV)
#'
#' @param issues Output of [collect_issues()].
#' @param path HTML path; a CSV with every case is written next to it.
#' @param commit Commit the report was built from (shown in the header).
#' @param notes Named character vector of evidence notes for the header.
#' @param max_rows Rows shown per check in the HTML (the CSV has all).
#' @export
write_issues_report <- function(issues, path = "reports/issues.html", commit = "", notes = character(),
                                max_rows = 2000) {
  esc <- function(x) {
    x <- ifelse(is.na(x), "", as.character(x))
    bad <- !validUTF8(x)
    x[bad] <- iconv(x[bad], "CP1252", "UTF-8", sub = "?")  # show v1's Windows-1252 quotes readably
    htmltools::htmlEscape(one_line(x))
  }
  dir.create(dirname(path), recursive = TRUE, showWarnings = FALSE)
  csv <- sub("\\.html$", ".csv", path)
  data.table::fwrite(issues[, .(severity, check, name, source, level, key, variable_name, rdb_table,
                                detail, evidence, file, where, report)], csv)

  sev_badge <- function(s) {
    lab <- c(error = "&#9888; error", warn = "&#9650; warn", cleanup = "&#9998; clean-up", info = "&#9432; review")
    cls <- c(error = "error", warn = "warn", cleanup = "info", info = "info")
    sprintf('<span class="sev sev-%s">%s</span>', cls[s], lab[s])
  }
  sev_order <- c(error = 1, warn = 2, cleanup = 3, info = 4)
  summ <- issues[, .(cases = .N, variables = data.table::uniqueN(variable_name, na.rm = TRUE),
                     sources = paste(sort(unique(sub(",.*", "", source))), collapse = "; "),
                     files = paste(sort(unique(sub(" \\(.*", "", file))), collapse = "; ")),
                 by = .(check, name, severity)]
  summ <- summ[order(sev_order[severity], -cases)]

  body <- character()
  add <- function(...) body <<- c(body, ...)

  tot <- issues[, .N, by = severity]
  n_of <- function(s) { x <- tot[severity == s, N]; if (length(x)) x else 0L }
  fmt <- function(x) format(x, big.mark = ",")
  add('<h1 class="title index">Concordance issues</h1>',
      sprintf('<h3 class="subtitle">%s errors &middot; %s warnings &middot; %s clean-up &middot; %s for review &middot; built %s%s</h3>',
              fmt(n_of("error")), fmt(n_of("warn")), fmt(n_of("cleanup")), fmt(n_of("info")),
              format(Sys.Date()), if (nzchar(commit)) paste0(" from commit <code>", commit, "</code>") else ""))

  add('<div class="concepts"><dl class="kv">',
      '<dt>Work from</dt><dd>The <code>concordance990</code> repository (GitHub <code>main</code>). Not the v1 repository, and not <code>concordance.csv</code> or <code>concordance.xlsx</code>, which are generated.</dd>',
      '<dt>Edit</dt><dd>The component tables in <code>inst/extdata/src/</code>. Each case below names the file, the row (its key) and the column.</dd>',
      '<dt>Log</dt><dd>After editing, run <code>devtools::load_all(); draft_changes(author = "...", write = TRUE)</code>, then fill in <code>reason</code> and <code>evidence</code> in <code>inst/extdata/changelog/change_sets.csv</code>.</dd>',
      '<dt>Rebuild</dt><dd><code>Rscript data-raw/build-concordance.R</code>, then <code>devtools::test()</code>. When a structural rule improves, lower its ceiling in <code>inst/extdata/validation/rule_ceilings.csv</code>.</dd>',
      '<dt>990-PF</dt><dd>PF cases point to the v1 file <code>F990-PF-FULL.CSV</code> because the PF concordance is not yet in the v2 component tables. Fix them after the PF merge (Phase 5) so the fixes are logged.</dd>',
      '<dt>Accepting a case</dt><dd>If a flagged case is correct as it is, record that in the validation log (Phase 4) instead of changing data.</dd>',
      '</dl></div>')

  if (length(notes)) add("<h2>Evidence</h2><ul>", paste0("<li><strong>", esc(names(notes)), ":</strong> ", esc(notes), "</li>"), "</ul>")

  add('<h2 id="summary">Summary</h2>',
      '<p>Errors are likely mapping or data defects; warnings need judgement; clean-up items are mechanical; review items are context. Every case, one per row, is in <a href="issues.csv">issues.csv</a>.</p>',
      '<div class="tbl-wrap"><table class="tbl"><thead><tr><th>Severity</th><th>Check</th><th>What fails</th><th class="num">Cases</th><th class="num">Variables</th><th>Evidence</th><th>File to edit</th></tr></thead><tbody>',
      sprintf('<tr><td>%s</td><td><a href="#%s"><code>%s</code></a></td><td class="wrap">%s</td><td class="num">%s</td><td class="num">%s</td><td class="wrap">%s</td><td class="wrap">%s</td></tr>',
              sev_badge(summ$severity), summ$check, summ$check, esc(summ$name), fmt(summ$cases),
              fmt(summ$variables), esc(summ$sources), esc(summ$files)),
      '</tbody></table></div>')

  for (i in seq_len(nrow(summ))) {
    ck <- summ$check[i]
    cat_row <- issue_catalog[check == ck]
    rows <- issues[check == ck]
    add(sprintf('<h2 id="%s">%s <code>%s</code> %s</h2>', ck, sev_badge(summ$severity[i]), ck, esc(summ$name[i])),
        sprintf('<p><strong>Why it fails.</strong> %s</p>', esc(cat_row$basis)),
        sprintf('<p><strong>How to fix.</strong> %s</p>', esc(cat_row$fix)))

    if (ck == "R10") {
      agg <- rows[, .N, by = .(file, column = sub(".*; column ", "", where))][order(-N)]
      add('<p>Every listed cell holds the text <code>NA</code>. Grouped by file and column; each cell is listed in <a href="issues.csv">issues.csv</a>.</p>',
          '<div class="tbl-wrap"><table class="tbl"><thead><tr><th>File</th><th>Column</th><th class="num">Cells</th></tr></thead><tbody>',
          sprintf('<tr><td><code>%s</code></td><td><code>%s</code></td><td class="num">%s</td></tr>',
                  esc(agg$file), esc(agg$column), fmt(agg$N)),
          '</tbody></table></div>')
      next
    }
    shown <- utils::head(rows, max_rows)
    link <- ifelse(is.na(shown$report), "", sprintf('<a href="%s">report</a>', shown$report))
    tbl <- c('<div class="tbl-wrap"><table class="tbl"><thead><tr><th>Source</th><th>Case</th><th>Variable / table</th><th>Detail</th><th>Evidence</th><th>Where to fix</th><th></th></tr></thead><tbody>',
             sprintf('<tr><td class="wrap">%s</td><td class="wrap"><code>%s</code></td><td class="wrap">%s%s</td><td class="wrap">%s</td><td class="wrap">%s</td><td class="wrap"><code>%s</code><br>%s</td><td>%s</td></tr>',
                     esc(sub(",.*", "", shown$source)), esc(short_xpath(shown$key)),
                     esc(shown$variable_name),
                     ifelse(is.na(shown$rdb_table), "", paste0("<br><span class='muted'>", esc(shown$rdb_table), "</span>")),
                     esc(shown$detail), esc(shown$evidence), esc(shown$file), esc(shown$where), link),
             '</tbody></table></div>',
             if (nrow(rows) > max_rows) sprintf("<p class='muted'>First %s of %s cases shown; all are in issues.csv.</p>",
                                                fmt(max_rows), fmt(nrow(rows))))
    if (summ$severity[i] %in% c("info", "cleanup") || nrow(rows) > 300) {
      add(sprintf("<details><summary>Show %s cases</summary>", fmt(nrow(rows))), tbl, "</details>")
    } else add(tbl)
  }

  css <- readLines(file.path(dirname(report_template()), "report.css"), warn = FALSE)
  eyebrow <- 'h1.title.index::before{content:"IRS 990 Master Concordance \\00B7\\0020Issues to fix";}'
  html <- c('<!DOCTYPE html><html lang="en"><head><meta charset="utf-8">',
            '<meta name="viewport" content="width=device-width, initial-scale=1">',
            '<title>Concordance Issues</title>',
            '<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Zilla+Slab:wght@500;600;700&family=Source+Sans+3:ital,wght@0,400;0,600;0,700;1,400&family=Source+Code+Pro:wght@400;600&display=swap">',
            '<style>', css, eyebrow, 'h2 .sev{vertical-align:middle;font-family:var(--font-body);}',
            '</style></head><body><main>', body, '</main></body></html>')
  con <- file(path, "wb")
  on.exit(close(con))
  writeBin(charToRaw(enc2utf8(paste(html, collapse = "\n"))), con)
  invisible(path)
}
