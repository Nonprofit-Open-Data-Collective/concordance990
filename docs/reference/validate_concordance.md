# Run the structural validation rules

Run the structural validation rules

## Usage

``` r
validate_concordance(src = read_src())
```

## Arguments

- src:

  Component tables (default:
  [`read_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_src.md)).

## Value

A data.table of violations: `rule`, `level`, `key`, `field`, `value`.
