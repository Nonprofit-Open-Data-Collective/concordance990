# Cell-level differences between two sets of component tables

Cell-level differences between two sets of component tables

## Usage

``` r
diff_src(old, new)
```

## Arguments

- old, new:

  Lists of component tables (as from
  [`read_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_src.md)
  or
  [`baseline_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/baseline_src.md)).

## Value

A data.table with `level`, `key`, `field`, `old_value`, `new_value` and
`change_type` (`edit`, `add`, `remove`, `add_column`, `remove_column`),
in the order the changes must be applied.
