# Observed repeating groups per table

For each table, the repeating elements (`repeat_root`) its xpaths were
observed in, from `xpath_groups.csv`. This is the evidence for
`table_groups.csv` (PLAN.md section 4), which replaces the hand-coded
group-xpath lists in ef2 and efile-rdb-tables.

## Usage

``` r
observed_table_groups(concordance, evidence_dir = "evidence")
```

## Arguments

- concordance:

  Data frame in the v1 layout (`xpath`, `variable_name`, `rdb_table`,
  `rdb_relationship`, `data_type_simple`).

- evidence_dir:

  Directory written by
  [`combine_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/combine_evidence.md).
