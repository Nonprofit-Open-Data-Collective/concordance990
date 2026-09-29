# Normalize raw xpaths for lookup

Removes repeat indexes (`[1]`) and the `irs:` / `efile:` namespace
prefixes, and makes the path start with a single `/`.

## Usage

``` r
normalize_xpath(x)
```

## Arguments

- x:

  Character vector of xpaths.
