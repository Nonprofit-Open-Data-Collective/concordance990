#' Resolve an issues list against the current concordance
#'
#' @description
#' Takes the cases of an earlier issues list and says what happened to each:
#'
#' * `fixed`: the case no longer fails, and the change log has changes to its
#'   variable, xpath or table since the list was made;
#' * `fixed_check`: the case no longer fails because the check was corrected
#'   (no change to the concordance);
#' * `accepted`, `needs_input`, `deferred`: the latest validation-log entry
#'   for the case;
#' * `review_only`: a context check whose catalog fix is "review only";
#' * `open`: still fails with no decision.
#'
#' @param before Issues list as written by [write_issues_report()] (the CSV).
#' @param now Issues recomputed for the current concordance with
#'   [collect_issues()] and `validation_log = NULL` (so accepted cases are
#'   still listed).
#' @param changes Change-log rows made after `before` (see [read_changelog()]).
#' @param log Validation log ([read_validation_log()]).
#' @param fixes Named character vector: fix label for each change-log reason.
#' @param xpath_var data.table with `xpath` and `variable_name` (current and
#'   earlier mappings), so that override changes, which are keyed by xpath,
#'   also count as changes to the xpath's variable.
#' @return `before` with columns `status`, `resolution`, `fix`, `files`,
#'   `change_ids`.
#' @export
resolve_issues <- function(before, now, changes, log = read_validation_log(), fixes = character(),
                           xpath_var = NULL) {
  b <- data.table::copy(data.table::as.data.table(before))
  b[is.na(variable_name), variable_name := ""]
  now <- data.table::copy(now); now[is.na(variable_name), variable_name := ""]
  still <- paste(b$check, b$variable_name, b$key) %in% paste(now$check, now$variable_name, now$key) |
    # variable-level checks keyed by variable: the variable may have been renamed
    (b$level == "variable" & paste(b$check, b$key) %in% paste(now$check, now$key))

  # change-log rows touching each case: its xpath, its variable (by name, or
  # an xpath moving to or from it), or its table
  ch <- data.table::copy(changes)
  ch[, file := src_file[level]]
  ch[, cleanup := evidence %in% c("R10", "R11", "R12", "R03; R12")]
  touch <- rbind(
    ch[, .(k = key, change_id, reason, file, cleanup)],
    ch[level == "xpath" & field == "variable_name", .(k = old_value, change_id, reason, file, cleanup)],
    ch[level == "xpath" & field == "variable_name", .(k = new_value, change_id, reason, file, cleanup)],
    ch[level == "xpath_override", .(k = sub(" \\| .*", "", key), change_id, reason, file, cleanup)],
    ch[level == "variable" & field == "table_id", .(k = old_value, change_id, reason, file, cleanup)])
  if (!is.null(xpath_var)) {
    ov <- ch[level == "xpath_override" & change_type %in% c("move_table", "resolve_conflict", "remove") & !cleanup,
             .(xpath = sub(" \\| .*", "", key), change_id, reason, file, cleanup)]
    ov <- merge(ov, unique(xpath_var), by = "xpath", allow.cartesian = TRUE)
    touch <- rbind(touch, ov[, .(k = variable_name, change_id, reason, file, cleanup)])
  }
  touch <- unique(touch[k != ""])
  data.table::setkey(touch, k)
  lookup <- function(keys, cleanup_ok = TRUE) {
    t <- touch[list(keys), nomatch = NULL]
    if (!cleanup_ok) t <- t[cleanup == FALSE]
    if (!nrow(t)) return(list(ids = "", files = "", reasons = character()))
    ids <- as.integer(sub("^C", "", t$change_id))
    rng <- if (length(ids) == 1) t$change_id[1] else sprintf("C%05d-C%05d (%d rows)", min(ids), max(ids), length(ids))
    list(ids = rng, files = paste(sort(unique(t$file)), collapse = "; "), reasons = unique(t$reason))
  }

  lg <- log[, .SD[.N], by = .(check, variable_name, key)]
  b <- merge(b, lg[, .(check, variable_name, key, log_status = status, log_note = note)],
             by = c("check", "variable_name", "key"), all.x = TRUE, sort = FALSE)
  lgv <- lg[key == ""]
  if (nrow(lgv)) {
    b <- merge(b, lgv[, .(check, variable_name, v_status = status, v_note = note)], by = c("check", "variable_name"),
               all.x = TRUE, sort = FALSE)
    b[is.na(log_status), `:=`(log_status = v_status, log_note = v_note)]
    b[, c("v_status", "v_note") := NULL]
  }
  b[, still := paste(check, variable_name, key) %in% paste(now$check, now$variable_name, now$key) |
      (level == "variable" & paste(check, key) %in% paste(now$check, now$key))]

  # an xpath case is matched on its own xpath first; a variable or table case
  # (or an xpath case with no change of its own) on its variable and table
  res <- lapply(seq_len(nrow(b)), function(i) {
    r <- b[i]
    ck <- r$check %in% c("R03", "R04", "R10", "R11", "R12")
    l <- lookup(r$key, ck)
    if (!length(l$reasons) && r$check != "R03") {
      keys <- unique(c(r$variable_name, r$rdb_table))
      l <- lookup(keys[!is.na(keys) & keys != ""], ck)
    }
    fx <- unique(stats::na.omit(unname(fixes[l$reasons])))
    list(ids = l$ids, files = l$files, fix = paste(fx, collapse = "; "),
         why = if (length(l$reasons)) paste(utils::head(l$reasons, 3), collapse = " | ") else "")
  })
  b[, `:=`(change_ids = vapply(res, `[[`, "", "ids"), files = vapply(res, `[[`, "", "files"),
           fix = vapply(res, `[[`, "", "fix"), why = vapply(res, `[[`, "", "why"))]

  review_only <- c("V_MEDIAN_JUMP")
  b[, status := data.table::fcase(
    !is.na(log_status) & log_status %in% c("needs_input", "deferred"), log_status,
    !still & change_ids != "", "fixed",
    !still, "fixed_check",
    !is.na(log_status), log_status,
    check %in% review_only, "review_only",
    default = "open")]
  b[, resolution := data.table::fcase(
    status == "fixed", why,
    status == "fixed_check", "No longer fails: the check was corrected (see the fix column).",
    status %in% c("accepted", "needs_input", "deferred"), log_note,
    status == "review_only", "Context only (catalog: review only); no change made.",
    default = "Still fails; no decision recorded.")]
  b[, c("log_status", "log_note", "still", "why") := NULL]
  b[]
}

#' Write the resolved-issues report (HTML and CSV)
#'
#' @param resolved Output of [resolve_issues()].
#' @param path HTML path; a CSV with every case is written next to it.
#' @param fixes_tbl data.table describing each fix: `fix`, `title`,
#'   `script`, `commit`, `summary`.
#' @param memo Character vector of HTML for the outstanding-issues memo.
#' @param new_cases Cases raised by the current concordance that were not in
#'   the earlier list (data.table from [collect_issues()]).
#' @param header Named character vector of header facts.
#' @param max_rows Rows shown per check (the CSV has all).
#' @export
write_resolved_report <- function(resolved, path = "reports/issues-resolved.html", fixes_tbl = NULL,
                                  memo = character(), new_cases = NULL, header = character(), max_rows = 2000) {
  esc <- function(x) htmltools::htmlEscape(one_line(ifelse(is.na(x), "", as.character(x))))
  fmt <- function(x) format(x, big.mark = ",")
  data.table::fwrite(resolved[, .(status, severity, check, name, source, level, key, variable_name, rdb_table,
                                  resolution, fix, files, change_ids, detail, evidence)],
                     sub("\\.html$", ".csv", path))
  st_lab <- c(fixed = "&#10004; fixed", fixed_check = "&#10004; check corrected", accepted = "&#10003; accepted",
              needs_input = "&#10067; needs input", deferred = "&#8987; deferred (PF)",
              review_only = "&#9432; review only", open = "&#9888; open")
  st_cls <- c(fixed = "ok", fixed_check = "ok", accepted = "ok", needs_input = "warn", deferred = "info",
              review_only = "info", open = "error")
  badge <- function(s) sprintf('<span class="sev sev-%s">%s</span>', st_cls[s], st_lab[s])
  sev_badge <- function(s) {
    lab <- c(error = "&#9888; error", warn = "&#9650; warn", cleanup = "&#9998; clean-up", info = "&#9432; review")
    cls <- c(error = "error", warn = "warn", cleanup = "info", info = "info")
    sprintf('<span class="sev sev-%s">%s</span>', cls[s], lab[s])
  }
  statuses <- names(st_lab)
  body <- character(); add <- function(...) body <<- c(body, ...)
  n <- resolved[, .N, by = status]; nn <- function(s) { x <- n[status == s, N]; if (length(x)) x else 0L }

  add('<h1 class="title index">Concordance issues: resolved</h1>',
      sprintf('<h3 class="subtitle">%s cases from issues.html &middot; %s fixed &middot; %s fixed by correcting a check &middot; %s accepted &middot; %s need input &middot; %s deferred to the 990-PF merge &middot; %s review only &middot; %s open</h3>',
              fmt(nrow(resolved)), fmt(nn("fixed")), fmt(nn("fixed_check")), fmt(nn("accepted")),
              fmt(nn("needs_input")), fmt(nn("deferred")), fmt(nn("review_only")), fmt(nn("open"))))
  if (length(header)) add('<div class="concepts"><dl class="kv">',
                          paste0("<dt>", esc(names(header)), "</dt><dd>", header, "</dd>"), '</dl></div>')

  add('<h2 id="summary">Summary</h2>',
      '<p>Every case listed in <a href="issues.html">issues.html</a> appears once below with what happened to it. Status is decided by re-running the checks on the current component tables: a case is <strong>fixed</strong> when it no longer fails and the change log has a change to its variable, xpath or table; <strong>accepted</strong>, <strong>needs input</strong> and <strong>deferred</strong> come from the validation log. Every case, one per row, is in <a href="issues-resolved.csv">issues-resolved.csv</a>.</p>')
  sm <- data.table::dcast(resolved, check + name + severity ~ status, value.var = "key", fun.aggregate = length)
  for (s in setdiff(statuses, names(sm))) sm[, (s) := 0L]
  sm[, total := rowSums(.SD), .SDcols = statuses]
  sev_order <- c(error = 1, warn = 2, cleanup = 3, info = 4)
  sm <- sm[order(sev_order[severity], -total)]
  add('<div class="tbl-wrap"><table class="tbl"><thead><tr><th>Severity</th><th>Check</th><th>What failed</th><th class="num">Cases</th>',
      paste0('<th class="num">', c("Fixed", "Check corrected", "Accepted", "Needs input", "Deferred (PF)", "Review only", "Open"), '</th>', collapse = ""),
      '</tr></thead><tbody>',
      sprintf('<tr><td>%s</td><td><a href="#%s"><code>%s</code></a></td><td class="wrap">%s</td><td class="num">%s</td>%s</tr>',
              sev_badge(sm$severity), sm$check, sm$check, esc(sm$name), fmt(sm$total),
              do.call(paste0, lapply(statuses, function(s) sprintf('<td class="num">%s</td>', ifelse(sm[[s]] == 0, "&middot;", fmt(sm[[s]])))))),
      '</tbody></table></div>')

  if (!is.null(fixes_tbl) && nrow(fixes_tbl)) {
    add('<h2 id="fixes">Fixes applied</h2>',
        '<p>Each fix is a script in <code>data-raw/fixes/</code> that edits the component tables and logs every changed cell in <code>inst/extdata/changelog/changes.csv</code> (reason, evidence, <code>affects_data</code>). The generated <code>concordance.csv</code>, <code>concordance.xlsx</code> and <code>inst/extdata/changelog/v1_to_v2_crosswalk.csv</code> are rebuilt after each fix.</p>',
        '<div class="tbl-wrap"><table class="tbl"><thead><tr><th>Fix</th><th>What changed</th><th class="num">Cases resolved</th><th>Files</th><th>Commit</th></tr></thead><tbody>',
        sprintf('<tr><td class="wrap"><strong>%s</strong><br><code>%s</code></td><td class="wrap">%s</td><td class="num">%s</td><td class="wrap">%s</td><td><code>%s</code></td></tr>',
                esc(fixes_tbl$title), esc(fixes_tbl$script), fixes_tbl$summary,
                fmt(vapply(fixes_tbl$fix, function(f) sum(grepl(f, resolved$fix, fixed = TRUE)), 1L)),
                esc(fixes_tbl$files), esc(fixes_tbl$commit)),
        '</tbody></table></div>')
  }

  if (length(memo)) add('<h2 id="outstanding">Outstanding issues that need input</h2>', memo)

  add('<h2 id="cases">Cases by check</h2>')
  for (i in seq_len(nrow(sm))) {
    ck <- sm$check[i]
    rows <- resolved[check == ck]
    rows <- rows[order(match(status, statuses), variable_name, key)]
    add(sprintf('<h3 id="%s">%s <code>%s</code> %s</h3>', ck, sev_badge(sm$severity[i]), ck, esc(sm$name[i])),
        sprintf('<p class="muted">%s</p>', paste(sprintf("%s %s", fmt(unlist(sm[i, statuses, with = FALSE])),
                                                         gsub("&[^;]+; ", "", st_lab)), collapse = " &middot; ")))
    if (ck == "R10") {
      agg <- rows[, .N, by = .(status, files, fix)]
      add('<p>Every cell that held the text <code>NA</code> is now empty. Each cell is a row of <a href="issues-resolved.csv">issues-resolved.csv</a> and of the change log.</p>',
          '<div class="tbl-wrap"><table class="tbl"><thead><tr><th>Status</th><th class="num">Cells</th><th>Fix</th><th>Files</th></tr></thead><tbody>',
          sprintf('<tr><td>%s</td><td class="num">%s</td><td>%s</td><td><code>%s</code></td></tr>',
                  badge(agg$status), fmt(agg$N), esc(agg$fix), esc(agg$files)),
          '</tbody></table></div>')
      next
    }
    shown <- utils::head(rows, max_rows)
    link <- ifelse(is.na(shown$report) | shown$report == "", "", sprintf('<a href="%s">report</a>', shown$report))
    tbl <- c('<div class="tbl-wrap"><table class="tbl"><thead><tr><th>Status</th><th>Case</th><th>Variable / table</th><th>Resolution</th><th>Where it landed</th><th></th></tr></thead><tbody>',
             sprintf('<tr><td>%s</td><td class="wrap"><code>%s</code><br><span class="muted">%s</span></td><td class="wrap">%s%s</td><td class="wrap">%s</td><td class="wrap">%s%s%s</td><td>%s</td></tr>',
                     badge(shown$status), esc(short_xpath(shown$key)), esc(sub(",.*", "", shown$source)),
                     esc(shown$variable_name),
                     ifelse(is.na(shown$rdb_table), "", paste0("<br><span class='muted'>", esc(shown$rdb_table), "</span>")),
                     esc(shown$resolution),
                     ifelse(shown$fix == "", "", paste0("<strong>", esc(shown$fix), "</strong><br>")),
                     ifelse(shown$files == "", "", paste0("<code>", esc(shown$files), "</code><br>")),
                     ifelse(shown$change_ids == "", "", paste0("<span class='muted'>change log ", esc(shown$change_ids), "</span>")),
                     link),
             '</tbody></table></div>',
             if (nrow(rows) > max_rows) sprintf("<p class='muted'>First %s of %s cases shown; all are in issues-resolved.csv.</p>", fmt(max_rows), fmt(nrow(rows))))
    if (nrow(rows) > 60) add(sprintf("<details><summary>Show %s cases</summary>", fmt(nrow(rows))), tbl, "</details>") else add(tbl)
  }

  if (!is.null(new_cases) && nrow(new_cases)) {
    nc <- new_cases[, .N, by = .(severity, check, name)][order(sev_order[severity], -N)]
    add('<h2 id="new">New cases raised by the current concordance</h2>',
        '<p>Re-running the checks on the fixed tables raises these cases that were not in issues.html (mostly because new or moved variables are now checked). They are listed here so nothing is hidden; they are the start of the next issues list.</p>',
        '<div class="tbl-wrap"><table class="tbl"><thead><tr><th>Severity</th><th>Check</th><th>What fails</th><th class="num">Cases</th></tr></thead><tbody>',
        sprintf('<tr><td>%s</td><td><code>%s</code></td><td class="wrap">%s</td><td class="num">%s</td></tr>',
                sev_badge(nc$severity), nc$check, esc(nc$name), fmt(nc$N)), '</tbody></table></div>')
    ncs <- new_cases[severity %in% c("error", "warn")]
    if (nrow(ncs)) add('<details><summary>Show the error and warning cases</summary><div class="tbl-wrap"><table class="tbl"><thead><tr><th>Check</th><th>Case</th><th>Variable</th><th>Detail</th></tr></thead><tbody>',
                       sprintf('<tr><td><code>%s</code></td><td class="wrap"><code>%s</code></td><td>%s</td><td class="wrap">%s</td></tr>',
                               ncs$check, esc(short_xpath(ncs$key)), esc(ncs$variable_name), esc(ncs$detail)),
                       '</tbody></table></div></details>')
  }

  css <- readLines(file.path(dirname(report_template()), "report.css"), warn = FALSE)
  eyebrow <- 'h1.title.index::before{content:"IRS 990 Master Concordance \\00B7\\0020Issues resolved";}'
  extra <- '.sev-ok{color:var(--good);} h2 .sev,h3 .sev{vertical-align:middle;font-family:var(--font-body);} .memo{border-left:3px solid var(--accent);padding:.25rem 0 .25rem 1.25rem;margin:1.5rem 0;} .memo h3{margin-top:.5rem;} .memo ol,.memo ul{max-width:none;}'
  html <- c('<!DOCTYPE html><html lang="en"><head><meta charset="utf-8">',
            '<meta name="viewport" content="width=device-width, initial-scale=1">',
            '<title>Concordance Issues Resolved</title>',
            '<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Zilla+Slab:wght@500;600;700&family=Source+Sans+3:ital,wght@0,400;0,600;0,700;1,400&family=Source+Code+Pro:wght@400;600&display=swap">',
            '<style>', css, eyebrow, extra, '</style></head><body><main>', body, '</main></body></html>')
  con <- file(path, "wb"); on.exit(close(con))
  writeBin(charToRaw(enc2utf8(paste(html, collapse = "\n"))), con)
  invisible(path)
}
