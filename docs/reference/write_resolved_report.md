# Write the resolved-issues report (HTML and CSV)

Write the resolved-issues report (HTML and CSV)

## Usage

``` r
write_resolved_report(
  resolved,
  path = "reports/issues-resolved.html",
  fixes_tbl = NULL,
  memo = character(),
  new_cases = NULL,
  header = character(),
  max_rows = 2000
)
```

## Arguments

- resolved:

  Output of
  [`resolve_issues()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/resolve_issues.md).

- path:

  HTML path; a CSV with every case is written next to it.

- fixes_tbl:

  data.table describing each fix: `fix`, `title`, `script`, `commit`,
  `summary`.

- memo:

  Character vector of HTML for the outstanding-issues memo.

- new_cases:

  Cases raised by the current concordance that were not in the earlier
  list (data.table from
  [`collect_issues()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/collect_issues.md)).

- header:

  Named character vector of header facts.

- max_rows:

  Rows shown per check (the CSV has all).
