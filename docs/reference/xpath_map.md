# Lookup table from xpath to variable and table

The minimal columns a parser needs.

## Usage

``` r
xpath_map(form = NULL)
```

## Arguments

- form:

  `NULL` for every xpath with its primary mapping, or the database being
  built: `"F990"` (990 and 990-EZ returns with their schedules) or
  `"F990PF"` (990-PF returns: PF xpaths, the shared header, Schedule B
  and the form-specific mappings of `xpath_forms.csv`). See
  [`build_concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_concordance.md).

## Value

A data.table with `xpath`, `variable_name`, `rdb_table`,
`rdb_relationship`, `form_type` and `multi_value`.
