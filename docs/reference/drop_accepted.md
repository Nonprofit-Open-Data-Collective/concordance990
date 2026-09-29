# Drop issues accepted in the validation log

Drop issues accepted in the validation log

## Usage

``` r
drop_accepted(issues, log = read_validation_log())
```

## Arguments

- issues:

  A data.table with `check`, `variable_name` and `key`.

- log:

  Output of
  [`read_validation_log()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_validation_log.md).

## Value

`issues` without the accepted cases.
