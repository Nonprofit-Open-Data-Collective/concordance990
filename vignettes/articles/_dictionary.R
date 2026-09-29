# Helpers for the data dictionary and outline articles.
library(concordance990)
library(data.table)

n_fmt <- function(x) format(x, big.mark = ",")
esc <- function(x) htmltools::htmlEscape(ifelse(is.na(x), "", x))

scope_names <- c(HD = "header", PC = "990", EZ = "990-EZ", PZ = "990 + 990-EZ", PF = "990-PF", SG = "990 + 990-EZ")
filed_with <- c(F990 = "990 and 990-EZ", F990PF = "990-PF",
                "SCHED-A" = "990, 990-EZ", "SCHED-B" = "990, 990-EZ, 990-PF", "SCHED-C" = "990, 990-EZ",
                "SCHED-D" = "990", "SCHED-E" = "990, 990-EZ", "SCHED-F" = "990", "SCHED-G" = "990, 990-EZ",
                "SCHED-H" = "990", "SCHED-I" = "990", "SCHED-J" = "990", "SCHED-K" = "990",
                "SCHED-L" = "990, 990-EZ", "SCHED-M" = "990", "SCHED-N" = "990, 990-EZ", "SCHED-O" = "990, 990-EZ",
                "SCHED-R" = "990")
card_text <- c(ONE = "one row per filing", MANY = "one row per repeated item")

# The dictionary sections: form > part > table > variables
dictionary_sections <- function(form) {
  dd <- data_dictionary(form)
  fm <- cc_forms()[, .(form_id, form_title = title, form_order = as.integer(sort_order))]
  dd <- merge(dd, fm, by = "form_id", all.x = TRUE, sort = FALSE)
  dd[, order := seq_len(.N)]
  out <- character()
  if (form == "F990PF") { dd[form_id == "F990", form_title := "Return header (shared with the Form 990 and 990-EZ)"]; dd[form_id == "F990", form_order := 0L] }
  for (f in dd[order(form_order, order), unique(form_id)]) {
    df <- dd[form_id == f]
    out <- c(out, sprintf("\n## %s\n", df$form_title[1]),
             sprintf("*Filed with: %s. %s variables in %s tables.*\n", filed_with[[f]],
                     n_fmt(uniqueN(df$variable_name)), uniqueN(df$rdb_table)))
    if (form == "F990PF" && f == "F990") out[length(out)] <- sprintf("*Filed with: all returns. %s variables.*
", n_fmt(uniqueN(df$variable_name)))
    for (p in unique(df$part_id)) {
      dp <- df[part_id == p]
      out <- c(out, sprintf("\n### %s\n", dp$part_title[1]))
      for (t in unique(dp$rdb_table)) {
        dt <- dp[rdb_table == t]
        card <- dt$rdb_relationship[1]
        desc <- ifelse(dt$description == "" | dt$description == dt$label, esc(dt$label),
                       sprintf("%s<br><span class='dict-desc'>%s</span>", esc(dt$label), esc(dt$description)))
        tbl <- data.table(
          Variable = sprintf("<code>%s</code>%s", dt$variable_name, ifelse(dt$multi_value == "TRUE", " <span class='badge bg-secondary'>list</span>", "")),
          Description = desc,
          Location = sprintf("<span class='dict-loc'>%s</span>", esc(dt$location_code_family)),
          Type = dt$data_type_simple,
          Scope = unname(scope_names[dt$variable_scope]))
        # one block per table: a header bar with the table name and cardinality, then the variables
        # (a raw html block: pandoc passes it through instead of parsing ~1 MB of HTML)
        out <- c(out,
                 "\n```{=html}",
                 sprintf("<div class='dict-table' id='%s'>", tolower(t)),
                 sprintf("<div class='dict-head'><code class='dict-name'>%s</code><span class='dict-card dict-card-%s'>%s</span><span class='dict-card-text'>%s</span></div>",
                         t, tolower(card), card, card_text[[card]]),
                 knitr::kable(tbl, format = "html", escape = FALSE, table.attr = "class='table table-sm dictionary'"),
                 "</div>", "```\n")
      }
    }
  }
  paste(out, collapse = "\n")
}

dictionary_summary <- function(form) {
  dd <- data_dictionary(form)
  fm <- cc_forms()[, .(form_id, form_title = title, form_order = as.integer(sort_order))]
  if (form == "F990PF") fm[form_id == "F990", `:=`(form_title = "Return header (shared)", form_order = 0L)]
  x <- merge(dd[, .(variables = uniqueN(variable_name), tables = uniqueN(rdb_table), xpaths = sum(n_xpaths)), by = form_id],
             fm, by = "form_id")[order(form_order)]
  x[, filed := unname(filed_with[form_id])]; if (form == "F990PF") x[form_id == "F990", filed := "all returns"]
  knitr::kable(x[, .(Form = form_title, `Filed with` = filed, Tables = tables,
                     Variables = n_fmt(variables), Xpaths = n_fmt(xpaths))])
}

# Styles for the dictionary pages: crisp breaks between parts and tables,
# one header bar per table, fixed column widths
dictionary_css <- function() {
  '<style>
main h2 { margin-top: 3rem; padding-top: 1rem; border-top: 3px solid #153243; }
main h3 { margin-top: 2.25rem; padding-bottom: .35rem; border-bottom: 1px solid #c3c8cf; font-size: 1.3rem; }
.dict-table { margin: 1.25rem 0 1.75rem; border: 1px solid #c3c8cf; border-radius: 6px; overflow: hidden; }
.dict-head { display: flex; align-items: center; gap: .6rem; flex-wrap: wrap;
             background: #eef1f4; border-bottom: 1px solid #c3c8cf; padding: .45rem .75rem; }
.dict-head .dict-name { background: transparent; font-weight: 600; font-size: .95rem; color: #153243; padding: 0; }
.dict-card { font-size: .72rem; font-weight: 700; letter-spacing: .05em; padding: .1rem .5rem; border-radius: 1rem;
             border: 1.5px solid currentColor; }
.dict-card-one { color: #1b6e2b; }
.dict-card-many { color: #8f3f10; }
.dict-card-text { font-size: .85rem; color: #6d7681; }
table.dictionary { margin: 0; font-size: .85rem; table-layout: fixed; width: 100%; }
table.dictionary thead th { background: #fafbfc; font-size: .72rem; text-transform: uppercase; letter-spacing: .06em;
                            color: #4d565f; border-bottom: 1px solid #c3c8cf; }
table.dictionary th, table.dictionary td { padding: .4rem .75rem; vertical-align: top; }
table.dictionary tbody tr:nth-child(even) { background: #fafbfc; }
table.dictionary th:nth-child(1), table.dictionary td:nth-child(1) { width: 29%; overflow-wrap: anywhere; }
table.dictionary th:nth-child(2), table.dictionary td:nth-child(2) { width: 37%; }
table.dictionary th:nth-child(3), table.dictionary td:nth-child(3) { width: 17%; overflow-wrap: normal; word-break: normal; }
table.dictionary th:nth-child(4), table.dictionary td:nth-child(4) { width: 8%; white-space: nowrap; }
table.dictionary th:nth-child(5), table.dictionary td:nth-child(5) { width: 10%; white-space: nowrap; }
table.dictionary code { font-size: .8rem; }
.dict-desc { display: block; margin-top: .15rem; color: #6d7681; font-size: .8rem; }
.dict-loc { font-size: .75rem; color: #4d565f; hyphens: none; }
</style>'
}
