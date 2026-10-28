# Helpers for the concordance preview pages: a searchable, paged table of the
# concordance and a CSV download, laid out like the NCCS NTEE v2 code table
# (nccs.urban.org/nccs/datasets/ntee/v2/).
#
# The CSV is written here from concordance(), the call that writes the
# repository copy, and the page loads that same file in the browser, so the
# table, the download and the package always agree.
library(concordance990)

# The pages are knitted in vignettes/articles; the site is built in docs/.
data_dir  <- file.path("..", "..", "docs", "data")
pages_dir <- file.path("..", "..", "docs", "variables")

json_strings <- function(x) paste0('["', paste(x, collapse = '","'), '"]')

# Variables with a validation page (docs/variables/<FF>/<name>.html)
variables_with_pages <- function(v) {
  v <- unique(v)
  v[file.exists(file.path(pages_dir, substr(v, 1, 2), paste0(v, ".html")))]
}

preview_css <- function() {
  '<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
<style>
/* these pages have no sidebar, so the table gets the full page width */
.template-article > .row > main.col-md-9 { flex: 0 0 100%; max-width: 100%; }
.template-article > .row > main > .page-header, main > .section > p, main > p { max-width: 52rem; }
.cc-toolbar { display: flex; flex-wrap: wrap; gap: .75rem 1rem; align-items: center; justify-content: space-between; margin: 1.5rem 0 1rem; }
.cc-toolbar .btn { font-weight: 700; }
.cc-meta, .cc-count { color: var(--tc-ink-mid); font-size: .9rem; }
.cc-search { display: flex; flex-wrap: wrap; gap: .5rem 1rem; align-items: center; margin: 0 0 .75rem; }
.cc-search input { flex: 1 1 18rem; max-width: 30rem; padding: .55rem .8rem; border: 1px solid var(--tc-rule-strong);
  border-radius: 6px; font: inherit; background: var(--tc-ground); color: var(--tc-ink); }
.cc-search input:focus { outline: 2px solid var(--tc-accent); outline-offset: 1px; }
.cc-chips { display: flex; flex-wrap: wrap; gap: .4rem; margin: 0 0 1.25rem; padding: 0; list-style: none; }
.cc-chips li { margin: 0; }
.cc-chips button { border: 1px solid var(--tc-rule-strong); background: var(--tc-ground); color: var(--tc-navy); border-radius: 999px;
  padding: .25rem .75rem; font: inherit; font-size: .85rem; cursor: pointer; }
[data-bs-theme="dark"] .cc-chips button { color: var(--tc-ink); }
.cc-chips button:hover { border-color: var(--tc-accent); }
.cc-chips button.cc-on { background: var(--tc-navy); border-color: var(--tc-navy); color: #fff; }
.cc-chips button span { opacity: .7; }

main table.dataTable.cc-table { width: 100%; min-width: 0; margin: 0; font-size: .92rem; border-collapse: collapse; }
table.dataTable.cc-table thead th { text-align: left; font-size: .9rem; font-weight: 700; letter-spacing: 0; color: var(--tc-navy);
  background: var(--tc-ground); border-bottom: 2px solid var(--tc-navy); padding: .6rem .75rem; }
[data-bs-theme="dark"] table.dataTable.cc-table thead th { color: var(--tc-ink); border-bottom-color: var(--tc-accent); }
table.dataTable.cc-table tbody tr { background: transparent; }
table.dataTable.cc-table tbody td { padding: .65rem .75rem; border-top: none; border-bottom: 1px solid var(--tc-rule); vertical-align: top; }
table.dataTable.cc-table tbody tr:hover > td { background: var(--tc-accent-wash); }
table.dataTable.cc-table td.cc-xpath { font-family: "Source Code Pro", ui-monospace, monospace; font-size: .78rem; color: var(--tc-ink-mid);
  overflow-wrap: anywhere; width: 34%; }
table.dataTable.cc-table td.cc-var { font-family: "Source Code Pro", ui-monospace, monospace; font-size: .82rem; font-weight: 700;
  color: var(--tc-navy); overflow-wrap: anywhere; width: 20%; }
[data-bs-theme="dark"] table.dataTable.cc-table td.cc-var { color: var(--tc-ink); }
table.dataTable.cc-table td.cc-var a { color: inherit; text-decoration-color: var(--tc-accent); }
table.dataTable.cc-table td.cc-tbl { font-size: .82rem; overflow-wrap: anywhere; width: 18%; }
table.dataTable.cc-table td.cc-type { white-space: nowrap; width: 6rem; }
.cc-badge { display: inline-block; font-size: .68rem; font-weight: 700; letter-spacing: .05em; padding: 0 .4rem; border-radius: 1rem;
  border: 1px solid currentColor; color: var(--tc-ink-soft); margin-left: .25rem; }
table.dataTable.cc-table td.cc-label { cursor: pointer; }
table.dataTable.cc-table td.cc-label::after { content: " \\25BE"; color: var(--tc-accent); }
table.dataTable.cc-table tr.shown td.cc-label::after { content: " \\25B4"; }
table.dataTable.cc-table tr.shown > td { background: var(--tc-accent-wash); border-bottom-color: transparent; }
table.dataTable.cc-table tr.cc-child > td { background: var(--tc-accent-wash); padding: .25rem .75rem 1rem; }
.cc-details { display: grid; grid-template-columns: max-content 1fr; gap: .2rem 1rem; font-size: .85rem; margin: 0; }
.cc-details dt { font-weight: 600; color: var(--tc-ink-mid); }
.cc-details dd { margin: 0; overflow-wrap: anywhere; }
.cc-details code { font-size: .8rem; }

.dataTables_wrapper .dataTables_length, .dataTables_wrapper .dataTables_filter { display: none; }
.dataTables_wrapper .dataTables_info { color: var(--tc-ink-mid) !important; font-size: .9rem; padding-top: 1rem; }
.dataTables_wrapper .dataTables_paginate { margin-top: .75rem; }
.dataTables_wrapper .dataTables_paginate .paginate_button { color: var(--tc-ink) !important; border-radius: 4px; }
.dataTables_wrapper .dataTables_paginate .paginate_button:hover { background: var(--tc-accent-wash) !important;
  border-color: var(--tc-rule-strong) !important; color: var(--tc-ink) !important; }
.dataTables_wrapper .dataTables_paginate .paginate_button.current,
.dataTables_wrapper .dataTables_paginate .paginate_button.current:hover { background: var(--tc-navy) !important;
  border-color: var(--tc-navy) !important; color: #fff !important; }
.dataTables_wrapper .dataTables_paginate .paginate_button.disabled,
.dataTables_wrapper .dataTables_paginate .paginate_button.disabled:hover { color: var(--tc-ink-soft) !important; background: none !important; border-color: transparent !important; }
.cc-error { padding: 1rem; border: 1px solid #db2b27; border-radius: 6px; background: var(--tc-accent-wash); margin: 1rem 0; }
@media (max-width: 760px) { table.dataTable.cc-table td.cc-xpath, table.dataTable.cc-table th.cc-xpath { display: none; } }
</style>'
}

# Form labels for the filter chips
form_label <- function(f) {
  ifelse(f == "F990", "Form 990 / 990-EZ",
  ifelse(f == "F990PF", "Form 990-PF", sub("^SCHED-", "Schedule ", f)))
}

preview_js <- function(id, file, forms, pages) {
  sprintf('<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.4.1/papaparse.min.js"></script>
<script>
(function () {
  "use strict";
  var ID = "%1$s", FILE = "../data/%2$s", FORMS = %3$s, PAGES = new Set(%4$s);
  var SHOWN = ["xpath", "variable_name", "label", "rdb_table", "data_type_simple"];
  function esc(v) { return String(v == null ? "" : v).replace(/[&<>"]/g, function (c) {
    return { "&": "&amp;", "<": "&lt;", ">": "&gt;", "\\"": "&quot;" }[c]; }); }
  function pageUrl(v) { return "../variables/" + v.slice(0, 2) + "/" + v + ".html"; }

  function details(r, fields) {
    var out = "<dl class=\\"cc-details\\">";
    fields.forEach(function (f) {
      if (SHOWN.indexOf(f) >= 0 || r[f] === "" || r[f] == null) { return; }
      var v = esc(r[f]);
      if (f === "schema_versions") { v = v.split(";").join("; "); }
      out += "<dt>" + f + "</dt><dd>" + v + "</dd>";
    });
    if (PAGES.has(r.variable_name)) {
      out += "<dt>validation</dt><dd><a href=\\"" + pageUrl(r.variable_name) + "\\">Validation page for " + esc(r.variable_name) + "</a></dd>";
    }
    return out + "</dl>";
  }

  function toCsv(fields, rows) {
    function q(v) { v = v == null ? "" : String(v); return /[,"\\r\\n\\t]/.test(v) ? "\\"" + v.replace(/"/g, "\\"\\"") + "\\"" : v; }
    var lines = [fields.map(q).join(",")];
    rows.forEach(function (r) { lines.push(fields.map(function (f) { return q(r[f]); }).join(",")); });
    return lines.join("\\r\\n") + "\\r\\n";
  }

  function render(rows, fields) {
    var cols = fields.map(function (f) {
      var c = { data: f, title: f, visible: SHOWN.indexOf(f) >= 0, defaultContent: "" };
      if (f === "xpath") { c.className = "cc-xpath"; }
      if (f === "variable_name") { c.className = "cc-var"; c.render = function (v, t) {
        return t === "display" && PAGES.has(v) ? "<a href=\\"" + pageUrl(v) + "\\" title=\\"Validation page\\">" + esc(v) + "</a>" : (t === "display" ? esc(v) : v); }; }
      if (f === "label") { c.className = "cc-label"; c.render = function (v, t) { return t === "display" ? esc(v) : v; }; }
      if (f === "rdb_table") { c.className = "cc-tbl"; c.render = function (v, t, r) {
        return t === "display" ? esc(v) + "<span class=\\"cc-badge\\">" + esc(r.rdb_relationship) + "</span>" : v; }; }
      if (f === "data_type_simple") { c.className = "cc-type"; c.title = "type"; }
      return c;
    });
    // show the visible columns in a fixed order; hidden ones stay searchable
    var order = SHOWN.map(function (f) { return fields.indexOf(f); });
    fields.forEach(function (f, i) { if (order.indexOf(i) < 0) { order.push(i); } });
    cols = order.map(function (i) { return cols[i]; });
    var formCol = order.indexOf(fields.indexOf("form"));
    var titles = { xpath: "Xpath", variable_name: "Variable", label: "Label", rdb_table: "Table", data_type_simple: "Type" };
    cols.forEach(function (c) { if (titles[c.data]) { c.title = titles[c.data]; } });

    var table = $("#" + ID).DataTable({
      data: rows, columns: cols, deferRender: true, pageLength: 50, order: [], autoWidth: false,
      language: { info: "Showing _START_ to _END_ of _TOTAL_ xpaths", infoFiltered: "(filtered from _MAX_)",
                  infoEmpty: "No matching xpaths", zeroRecords: "No matching xpaths",
                  paginate: { previous: "Previous", next: "Next" } },
      drawCallback: function () {
        var i = this.api().page.info();
        document.getElementById(ID + "-count").textContent = i.recordsDisplay === i.recordsTotal ? "" :
          i.recordsDisplay.toLocaleString() + " of " + i.recordsTotal.toLocaleString() + " xpaths match";
      }
    });

    var timer;
    document.getElementById(ID + "-search").addEventListener("input", function () {
      var v = this.value; clearTimeout(timer); timer = setTimeout(function () { table.search(v).draw(); }, 150); });

    $("#" + ID + " tbody").on("click", "td.cc-label", function () {
      var tr = $(this).closest("tr"), row = table.row(tr);
      if (row.child.isShown()) { row.child.hide(); tr.removeClass("shown"); }
      else { row.child(details(row.data(), fields), "cc-child").show(); tr.addClass("shown"); }
    });

    var counts = {}; rows.forEach(function (r) { counts[r.form] = (counts[r.form] || 0) + 1; });
    var list = document.getElementById(ID + "-chips");
    list.insertAdjacentHTML("beforeend", "<li><button type=\\"button\\" class=\\"cc-on\\" data-key=\\"\\">All forms</button></li>");
    FORMS.forEach(function (f) {
      list.insertAdjacentHTML("beforeend", "<li><button type=\\"button\\" data-key=\\"" + esc(f[0]) + "\\">" + esc(f[1]) +
        " <span>" + (counts[f[0]] || 0).toLocaleString() + "</span></button></li>");
    });
    list.addEventListener("click", function (e) {
      var b = e.target.closest("button"); if (!b) { return; }
      list.querySelectorAll("button").forEach(function (x) { x.classList.remove("cc-on"); }); b.classList.add("cc-on");
      var k = b.getAttribute("data-key");
      table.column(formCol).search(k ? "^" + k + "$" : "", true, false).draw();
    });

    document.getElementById(ID + "-matching").addEventListener("click", function () {
      var blob = new Blob([toCsv(fields, table.rows({ search: "applied" }).data().toArray())], { type: "text/csv" });
      var a = document.createElement("a"); a.href = URL.createObjectURL(blob);
      a.download = FILE.split("/").pop().replace(/\\.csv$/, "-filtered.csv"); a.click(); URL.revokeObjectURL(a.href);
    });
  }

  Papa.parse(FILE, { download: true, header: true, skipEmptyLines: true,
    complete: function (res) { render(res.data, res.meta.fields); },
    error: function () { document.getElementById(ID + "-error").hidden = false; } });
})();
</script>', id, file, forms, pages)
}

# The page body for one CSV: toolbar, search, form chips and table.
preview_page <- function(form = NULL, file) {
  d <- concordance("v1", form = form)
  dir.create(data_dir, recursive = TRUE, showWarnings = FALSE)
  write_concordance(d, file.path(data_dir, file))
  size <- file.size(file.path(data_dir, file))
  id <- gsub("[^A-Za-z0-9]", "-", sub("\\.csv$", "", file))

  f <- unique(d$form)
  f <- f[order(match(f, c("F990", "F990PF")), f)]
  forms <- paste0("[", paste(sprintf('["%s","%s"]', f, form_label(f)), collapse = ","), "]")
  pages <- json_strings(variables_with_pages(d$variable_name))

  # a raw HTML block, so pandoc passes the page through untouched
  paste0(
    "\n```{=html}\n",
    preview_css(),
    sprintf('<div class="cc-toolbar">
<div><a class="btn btn-primary" href="../data/%1$s" download="%1$s">Download %1$s</a>
<button type="button" class="btn btn-outline-secondary" id="%2$s-matching">Download matching rows</button></div>
<span class="cc-meta">%3$s xpaths &middot; %4$s columns &middot; %5$.1f MB &middot; concordance990 %6$s</span>
</div>
<div class="cc-search">
<input type="search" id="%2$s-search" placeholder="Search xpaths, variables, labels, tables, any column" aria-label="Search the table">
<span class="cc-count" id="%2$s-count"></span>
</div>
<ul class="cc-chips" id="%2$s-chips" aria-label="Filter by form"></ul>
<div id="%2$s-error" class="cc-error" hidden>The table could not be loaded. Download the file with the button above.</div>
<table id="%2$s" class="cc-table display" style="width:100%%"></table>
<noscript><p>The table needs JavaScript. Download the file with the button above.</p></noscript>',
            file, id, format(nrow(d), big.mark = ","), ncol(d), size / 1e6,
            as.character(utils::packageVersion("concordance990"))),
    preview_js(id, file, forms, pages),
    "\n```\n")
}
