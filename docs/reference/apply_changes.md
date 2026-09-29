# Apply change-log rows to component tables

Apply change-log rows to component tables

## Usage

``` r
apply_changes(src, changes)
```

## Arguments

- src:

  A list of component tables (usually
  [`baseline_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/baseline_src.md)).

- changes:

  Change-log rows (see
  [`read_changelog()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_changelog.md)),
  applied in order.

## Value

The modified list. Stops if a row's `old_value` does not match the value
it replaces, so a stale or out-of-order log is caught.
