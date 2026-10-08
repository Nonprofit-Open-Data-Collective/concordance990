# Xpath observations from filing evidence

Reads the per-year xpath counts and filing counts that
[`build_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_evidence.md)
writes from the ef2 DuckDB builds (`xpath_stats.csv` and `filings.csv`),
for one or more evidence directories: `evidence` (990 and 990-EZ
returns) and `evidence/pf` (990-PF returns). These are the observations
[`xpath_version_fields()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/xpath_version_fields.md)
uses.

To refresh them from new or rebuilt ef2 databases, run
[`build_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_evidence.md)
and
[`combine_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/combine_evidence.md)
(see `data-raw/build-evidence.R` and `data-raw/build-evidence-pf.R`),
then
[`update_xpath_versions()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/update_xpath_versions.md).

In the ef2 builds the tax year of a filing is the year of its schema
version, so `tax_year` and the year of `schema_version` agree.

## Usage

``` r
xpath_observations(evidence_dirs = c("evidence", file.path("evidence", "pf")))
```

## Arguments

- evidence_dirs:

  Evidence directories, each holding `xpath_stats.csv` and
  `filings.csv`.

## Value

A list: `xpaths` (`tax_year`, `xpath`, `schema_version`, `return_type`,
`n_filings`: filings whose return holds the xpath) and `filings`
(`tax_year`, `return_type`, `n_filings`: all filings).
