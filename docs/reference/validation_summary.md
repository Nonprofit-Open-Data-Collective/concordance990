# Summarise validation against the rule ceilings

Summarise validation against the rule ceilings

## Usage

``` r
validation_summary(
  violations = validate_concordance(),
  ceilings = ceilings_path()
)
```

## Arguments

- violations:

  Output of
  [`validate_concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/validate_concordance.md).

- ceilings:

  Path to `rule_ceilings.csv`.

## Value

A data.table with one row per rule: status, violations, ceiling, and
`pass`.
