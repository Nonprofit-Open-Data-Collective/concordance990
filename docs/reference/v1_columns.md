# Columns of the v1 concordance, in order

`v1_columns` are the columns of the v1 file. `concordance_columns` are
the columns of the current concordance in the v1 layout: since fix 24,
`versions` is `schema_versions` (XSD and observed versions),
`earliest_version` and `pct_filers_reporting` are added and `duplicated`
is dropped (see
[`xpath_version_fields()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/xpath_version_fields.md)).

## Usage

``` r
v1_columns

concordance_columns
```

## Format

An object of class `character` of length 23.

An object of class `character` of length 24.
