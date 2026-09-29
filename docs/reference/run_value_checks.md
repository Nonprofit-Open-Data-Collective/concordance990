# Run the value checks for every variable

Run the value checks for every variable

## Usage

``` r
run_value_checks(concordance, ev)
```

## Arguments

- concordance:

  Concordance in the v1 layout (or the v1 PF concordance).

- ev:

  Evidence from
  [`load_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/load_evidence.md).

## Value

A data.table: `variable_name`, `report_type`, then the columns of
[`value_checks()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/value_checks.md).
