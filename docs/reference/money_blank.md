# Money flag and blank meaning of each variable

Money flag and blank meaning of each variable

## Usage

``` r
money_blank(cc)
```

## Arguments

- cc:

  A v2 concordance (one database, see
  [`concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/concordance.md)).

## Value

A data.table keyed by `rdb_table` and `variable_name` with `money_field`
and `blank_meaning`.
