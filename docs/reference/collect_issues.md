# Collect every failing case

Collect every failing case

## Usage

``` r
collect_issues(
  src = read_src(),
  flags = NULL,
  value_checks_990 = NULL,
  flags_pf = NULL,
  value_checks_pf = NULL,
  pf_concordance = NULL,
  reports_dir = "reports",
  validation_log = read_validation_log()
)
```

## Arguments

- src:

  Component tables (default
  [`read_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_src.md)).

- flags:

  Evidence flags for 990/990-EZ
  ([`flag_xpaths()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/flag_xpaths.md)
  output).

- value_checks_990:

  Output of
  [`run_value_checks()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/run_value_checks.md)
  for 990/990-EZ.

- flags_pf, value_checks_pf:

  The same for the 990-PF (optional).

- pf_concordance:

  The v1 PF concordance, used to show PF tables.

- reports_dir:

  Directory of rendered variable reports, used for links.

- validation_log:

  Reviewer decisions
  ([`read_validation_log()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_validation_log.md));
  cases accepted there are left out.

## Value

A data.table, one row per case.
