# Look up raw xpaths

Look up raw xpaths

## Usage

``` r
lookup_xpath(x)
```

## Arguments

- x:

  Character vector of xpaths as found in XML returns.

## Value

A data.table with the input (`xpath_raw`), the normalized `xpath`, and
the concordance mapping (`NA` when unmapped).
