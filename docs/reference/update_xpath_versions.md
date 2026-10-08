# Update the version fields of the component tables from filing evidence

Recomputes `schema_versions`, `earliest_version`, `latest_version`,
`current_version` and `pct_filers_reporting` in `xpaths.csv` with
[`xpath_version_fields()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/xpath_version_fields.md).
Run it after refreshing the evidence from the ef2 builds
(`data-raw/update-xpath-versions.R` writes the result). These are
[derived_columns](https://nonprofit-open-data-collective.github.io/concordance990/reference/derived_columns.md),
so the change log does not record their values.

## Usage

``` r
update_xpath_versions(
  src = read_src(),
  obs = xpath_observations(),
  scope = c("xpath", "variable")
)
```

## Arguments

- src:

  Component tables (default:
  [`read_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_src.md)).
  `xpaths` must already have the 2.0 columns (`schema_versions`,
  `earliest_version`, `pct_filers_reporting`; added by fix 24).

- obs:

  Output of
  [`xpath_observations()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/xpath_observations.md).

- scope:

  `"xpath"` or `"variable"`; see Description.

## Value

`src` with the updated `xpaths` table.
