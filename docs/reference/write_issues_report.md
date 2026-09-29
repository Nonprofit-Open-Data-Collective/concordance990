# Write the issues report (HTML and CSV)

Write the issues report (HTML and CSV)

## Usage

``` r
write_issues_report(
  issues,
  path = "reports/issues.html",
  commit = "",
  notes = character(),
  max_rows = 2000
)
```

## Arguments

- issues:

  Output of
  [`collect_issues()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/collect_issues.md).

- path:

  HTML path; a CSV with every case is written next to it.

- commit:

  Commit the report was built from (shown in the header).

- notes:

  Named character vector of evidence notes for the header.

- max_rows:

  Rows shown per check in the HTML (the CSV has all).
