# Write a concordance CSV in the v1 style

Cells are quoted only when they contain a comma, quote, tab or line
break, and embedded quotes are doubled. `NA` values are written as empty
cells.

## Usage

``` r
write_cc_csv(d, path, eol = "\n")
```

## Arguments

- d:

  A data.frame.

- path:

  Output path.

- eol:

  Line ending: `"\r\n"` reproduces the v1 file; the component tables use
  `"\n"`.
