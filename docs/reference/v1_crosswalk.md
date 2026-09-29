# Crosswalk from v1 rows to the current concordance

One row per xpath in v1 or the current concordance, with the v1 and the
current variable and table, a status, and the v1-layout columns whose
values changed. Use it with the change log to re-map data built with v1.

## Usage

``` r
v1_crosswalk(current = build_concordance(format = "v1"))
```

## Arguments

- current:

  Current concordance in the v1 layout (default: built from the
  package's component tables).

## Value

A data.table.
