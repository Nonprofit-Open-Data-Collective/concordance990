# Catalog of checks

One row per check: what it tests, the basis of the judgement, the
default severity, and how to fix a case (which component table, and the
change type to log). Used by
[`collect_issues()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/collect_issues.md)
and the issues report.

## Usage

``` r
issue_catalog
```

## Format

An object of class `data.table` (inherits from `data.frame`) with 34
rows and 6 columns.
