# Structural validation rules (PLAN.md section 6.1)

Each rule has a status:

- `enforced`: must have no violations.

- `ratchet`: has known v1 violations; the count may go down but never up
  (the ceiling is stored in
  `inst/extdata/validation/rule_ceilings.csv`). When a ratchet rule
  reaches zero it should be switched to `enforced`.

## Usage

``` r
validation_rules
```

## Format

An object of class `data.table` (inherits from `data.frame`) with 12
rows and 3 columns.
