# The concordance: one row per xpath

The concordance: one row per xpath

## Usage

``` r
concordance(format = c("v2", "v1"), form = NULL)
```

## Arguments

- format:

  `"v2"` (the v1 layout plus `family_id`, `part_id` and `multi_value`)
  or `"v1"` (the v1 layout,
  [concordance_columns](https://nonprofit-open-data-collective.github.io/concordance990/reference/v1_columns.md)).

- form:

  `NULL` for every xpath with its primary mapping, or the database being
  built: `"F990"` (990 and 990-EZ returns with their schedules) or
  `"F990PF"` (990-PF returns: PF xpaths, the shared header, Schedule B
  and the form-specific mappings of `xpath_forms.csv`). See
  [`build_concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_concordance.md).

## Value

A data.table.

## Examples

``` r
cc <- concordance()
head(cc[, .(xpath, variable_name, rdb_table)])
#>                                                xpath           variable_name
#>                                               <char>                  <char>
#> 1:                      /Return/ReturnHeader/BuildTS  F9_00_BUILD_TIME_STAMP
#> 2: /Return/ReturnHeader/Filer/BusinessNameControlTxt     F9_00_NAME_ORG_CTRL
#> 3:            /Return/ReturnHeader/Filer/NameControl     F9_00_NAME_ORG_CTRL
#> 4:                     /Return/ReturnHeader/ReturnTs F9_00_RETURN_TIME_STAMP
#> 5:                    /Return/ReturnHeader/Timestamp F9_00_RETURN_TIME_STAMP
#> 6:                   /Return/ReturnHeader/ReturnType       F9_00_RETURN_TYPE
#>            rdb_table
#>               <char>
#> 1: F9-P00-T00-HEADER
#> 2: F9-P00-T00-HEADER
#> 3: F9-P00-T00-HEADER
#> 4: F9-P00-T00-HEADER
#> 5: F9-P00-T00-HEADER
#> 6: F9-P00-T00-HEADER
pf <- concordance(form = "F990PF")
```
