# Write the unified concordance

Write the unified concordance

## Usage

``` r
write_concordance(d, path, xlsx = NULL)
```

## Arguments

- d:

  Output of
  [`build_concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_concordance.md).

- path:

  CSV path. The v1 layout is written with CRLF line endings, as the v1
  file is.

- xlsx:

  Optional path for a spreadsheet copy (needs openxlsx).
