# Address of a validation page

Address of a validation page

## Usage

``` r
variable_page_url(v = character(), table = NULL)
```

## Arguments

- v:

  Variable names; [`character()`](https://rdrr.io/r/base/character.html)
  for the index of pages.

- table:

  Table ids, instead of `v`: the table's section of the index of its
  form.

## Value

The URLs (or local paths) of the pages written by
[`render_variable_pages()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/render_variable_pages.md).

## Examples

``` r
variable_page_url("F9_01_REV_TOT_CY")
#> [1] "https://nonprofit-open-data-collective.github.io/concordance990/variables/F9/F9_01_REV_TOT_CY.html"
variable_page_url(table = "F9-P01-T00-SUMMARY")
#> [1] "https://nonprofit-open-data-collective.github.io/concordance990/variables/F9/index.html#f9-p01-t00-summary"
```
