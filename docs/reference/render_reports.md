# Render validation reports

Render validation reports

## Usage

``` r
render_reports(
  variables,
  concordance,
  ev,
  out_dir = "reports",
  template = report_template(),
  index = TRUE
)
```

## Arguments

- variables:

  Character vector of variable names.

- concordance:

  Concordance in the v1 layout.

- ev:

  Evidence list from
  [`load_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/load_evidence.md).

- out_dir:

  Output directory for HTML files.

- template:

  Parent template (default: the package's
  `inst/reports/variable-report.Rmd`).

- index:

  Also write `index.html` listing the rendered reports.

## Value

Invisibly, a data.frame with one row per report.
