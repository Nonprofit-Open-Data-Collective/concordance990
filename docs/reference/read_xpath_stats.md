# Read `xpath_stats.csv` with numeric quantiles

Quantiles can hold `inf`/`nan` (values such as "Infinity" cast to
double), which makes fread read them as text. They are coerced to
numeric and non-finite values set to NA.

## Usage

``` r
read_xpath_stats(path)
```

## Arguments

- path:

  Path to `xpath_stats.csv`.
