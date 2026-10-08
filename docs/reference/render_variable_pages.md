# Render light validation pages

Writes one static HTML page per variable to `out_dir`, plus a shared
stylesheet (`variables.css`) and an index. A page shows the dictionary
entry, the value checks, the open and reviewed flags, the xpaths pooled
into the variable, coverage and fill rate by tax year, a summary of the
values, and example filings with links to the XML.
[`dd()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/dd.md)
opens these pages with `report = TRUE`.

The evidence (`evidence/`, `evidence/pf/`) is built from the ef2 DuckDB
files by
[`build_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_evidence.md)
and is not shipped with the package.

## Usage

``` r
render_variable_pages(
  variables = NULL,
  evidence = c(F990 = "evidence", F990PF = "evidence/pf"),
  flags = NULL,
  out_dir = file.path("docs", "variables"),
  index = TRUE
)
```

## Arguments

- variables:

  Variable names; `NULL` for every variable in both databases.

- evidence:

  Named character vector of evidence directories: the 990 / 990-EZ
  evidence and the 990-PF evidence.

- flags:

  Flags from
  [`flag_xpaths()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/flag_xpaths.md)
  for the current concordance (both databases bound together). `NULL`
  reads `xpath_flags.csv` from each evidence directory, which may be
  older than the concordance.

- out_dir:

  Output directory; `docs/variables` publishes the pages with the site.

- index:

  Also write the indexes: `index.html` listing the forms and
  `<form>/index.html` listing the pages of each form by table.

## Value

Invisibly, a data.table with one row per page.
