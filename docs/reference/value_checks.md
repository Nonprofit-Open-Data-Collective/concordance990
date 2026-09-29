# Value checks for one variable, by report type

The type-specific checks shown in the validation reports (amount,
number, checkbox, date, text, code, identifier). The report templates
call this function, and
[`run_value_checks()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/run_value_checks.md)
runs it for every variable, so the reports and the issues list always
agree.

## Usage

``` r
value_checks(xp, st, vals, shapes, rtype = report_type(xp), skip_year = NA)
```

## Arguments

- xp:

  Concordance rows (v1 layout) for one variable.

- st:

  Evidence rows from `xpath_stats.csv` for its xpaths (terminal nodes).
  A `series` column is used for labels when present.

- vals, shapes:

  Rows of `xpath_values.csv` / `xpath_shapes.csv` for its xpaths.

- rtype:

  Report type from
  [`report_type()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/report_type.md).

- skip_year:

  A tax year to leave out of year-on-year comparisons (the partial final
  year; see
  [`partial_year()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/partial_year.md)).

## Value

A data.table with `code`, `check`, `result` (pass, warn, fail, info) and
`detail`.
