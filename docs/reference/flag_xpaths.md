# Flag xpaths that look mis-mapped

Compares the concordance with filing evidence from
[`build_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_evidence.md)
and returns one row per (xpath, flag). Flag definitions are in PLAN.md,
section 6.2. Until the component tables exist, the v1-layout
`concordance.csv` is used for variable and table attributes.

## Usage

``` r
flag_xpaths(concordance, evidence_dir = "evidence", min_filings = 30)
```

## Arguments

- concordance:

  Data frame in the v1 layout (`xpath`, `variable_name`, `rdb_table`,
  `rdb_relationship`, `data_type_simple`).

- evidence_dir:

  Directory written by
  [`combine_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/combine_evidence.md).

- min_filings:

  Minimum filings before value-based flags are raised.

## Value

A data.table with `xpath`, `variable_name`, `rdb_table`, `flag_code`,
`severity`, `n_filings`, `years`, `detail`.
