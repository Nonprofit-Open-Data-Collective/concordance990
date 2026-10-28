# Helpers for the concordance preview pages: a searchable table of the
# concordance built with concordance(), and a CSV download of the same data.
library(concordance990)

# The pages are knitted in vignettes/articles; the site is built in docs/.
# The CSV is written next to the site so the download always matches the table.
data_dir <- file.path("..", "..", "docs", "data")

preview_css <- function() {
  '<style>
.cc-tools { display: flex; flex-wrap: wrap; gap: .75rem; align-items: center; margin: 1rem 0 .75rem; }
.cc-tools input[type=search] { flex: 1 1 18rem; max-width: 32rem; }
.cc-count { color: var(--tc-ink-mid); font-size: .9rem; }
.cc-scroll { max-height: 75vh; overflow: auto; border: 1px solid var(--tc-rule-strong); border-radius: 6px; }
table.cc-preview { margin: 0; font-size: .78rem; border-collapse: separate; border-spacing: 0; }
table.cc-preview thead th { position: sticky; top: 0; z-index: 1; background: var(--tc-surface);
  white-space: nowrap; font-size: .72rem; border-bottom: 1px solid var(--tc-rule-strong); }
table.cc-preview th, table.cc-preview td { padding: .3rem .6rem; vertical-align: top; }
table.cc-preview td { max-width: 22rem; overflow-wrap: anywhere; }
table.cc-preview td:nth-child(2), table.cc-preview td:nth-child(4),
table.cc-preview td:nth-child(7), table.cc-preview td:nth-child(8), table.cc-preview td:nth-child(9) { white-space: nowrap; }
table.cc-preview td:nth-child(5) { min-width: 14rem; }
table.cc-preview td:nth-child(6) { min-width: 20rem; }
table.cc-preview td:first-child { font-family: "Source Code Pro", ui-monospace, monospace; min-width: 24rem; }
table.cc-preview td:nth-child(18) { max-width: 14rem; }
</style>'
}

preview_js <- function(id) {
  sprintf('<script>
(function () {
  var table = document.getElementById("%1$s");
  var box = document.getElementById("%1$s-search");
  var count = document.getElementById("%1$s-count");
  var rows = Array.prototype.slice.call(table.tBodies[0].rows);
  var text = rows.map(function (r) { return r.textContent.toLowerCase(); });
  var total = rows.length.toLocaleString();
  function run() {
    var terms = box.value.toLowerCase().split(/\\s+/).filter(Boolean), shown = 0;
    for (var i = 0; i < rows.length; i++) {
      var ok = terms.every(function (t) { return text[i].indexOf(t) !== -1; });
      rows[i].style.display = ok ? "" : "none";
      if (ok) shown++;
    }
    count.textContent = shown.toLocaleString() + " of " + total + " rows";
  }
  var timer;
  box.addEventListener("input", function () { clearTimeout(timer); timer = setTimeout(run, 200); });
  run();
})();
</script>', id)
}

# The full page body for one CSV: download button, search box and table.
preview_page <- function(form = NULL, file) {
  d <- concordance("v1", form = form)
  dir.create(data_dir, recursive = TRUE, showWarnings = FALSE)
  write_concordance(d, file.path(data_dir, file))
  size <- file.size(file.path(data_dir, file))
  id <- sub("\\.csv$", "", gsub("[^A-Za-z0-9.]", "-", file))

  old <- options(knitr.kable.NA = "")
  on.exit(options(old))
  tbl <- knitr::kable(as.data.frame(d), format = "html", escape = TRUE, row.names = FALSE,
                      table.attr = sprintf('id="%s" class="table cc-preview"', id))
  # kable styles every cell; dropping that cuts the page size by about a third
  tbl <- gsub(' style="text-align:(left|right|center);"', "", tbl)
  # a raw HTML block, so pandoc does not read cell text (blank lines,
  # markdown characters) as markdown and break the table
  paste0(
    "\n```{=html}\n",
    preview_css(),
    sprintf('<p><a class="btn btn-primary" href="../data/%s" download="%s">Download %s</a>
&nbsp;<span class="cc-count">%s rows, %s columns, %.1f MB</span></p>',
            file, file, file, format(nrow(d), big.mark = ","), ncol(d), size / 1e6),
    sprintf('<div class="cc-tools"><input type="search" id="%1$s-search" class="form-control"
placeholder="Search all columns (space-separated terms must all match)" aria-label="Search the table">
<span id="%1$s-count" class="cc-count"></span></div>', id),
    '<div class="cc-scroll">', tbl, '</div>',
    preview_js(id),
    "\n```\n")
}
