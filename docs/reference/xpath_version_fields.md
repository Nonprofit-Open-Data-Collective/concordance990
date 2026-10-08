# Schema versions, current status and reporting rate of each xpath

Computes the xpath-level version fields of the concordance:

- `schema_versions`: every schema version the xpath is defined in (the
  XSD versions already recorded in `xpaths.csv`) or observed in (filings
  in the evidence), sorted and separated by `;`. Either source can have
  gaps, so the list is the union of both.

- `earliest_version`, `latest_version`: the first and last year of a
  schema version the xpath was observed in. Filings only.

- `current_version`: `TRUE` when the xpath was observed in the newest
  schema year of the evidence, `FALSE` when observed only earlier, empty
  when never observed. Filings only.

- `pct_filers_reporting`: of the filers in the xpath's scope in its
  `latest_version` year, the percent whose return holds the xpath (three
  significant digits; empty when never observed).

The scope is the variable's `variable_scope`: `PC` 990 filers, `EZ`
990-EZ filers, `PF` 990-PF filers, otherwise (`PZ`, `HD`, `SG`) 990 and
990-EZ filers. Return types outside the scope that filed the xpath in
that year are added to the denominator: the header, Schedule B and the
attachments shared by all returns are also filed with 990-PF returns, so
they are measured against every filer who files them. With
`scope = "xpath"` (the default) a main-form xpath of a 990 or 990-EZ
variable is scoped to the form it sits under (`IRS990/` to `PC`,
`IRS990EZ/` to `EZ`), because only that form's filers can report it;
pooled `PZ` variables otherwise get the union of both forms as the
denominator of each of their xpaths.

## Usage

``` r
xpath_version_fields(
  xpaths,
  variables,
  obs = xpath_observations(),
  scope = c("xpath", "variable")
)
```

## Arguments

- xpaths:

  `xpaths.csv` (with `versions` or `schema_versions`).

- variables:

  `variables.csv`.

- obs:

  Output of
  [`xpath_observations()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/xpath_observations.md).

- scope:

  `"xpath"` or `"variable"`; see Description.

## Value

A data.table with `xpath`, `scope`, `schema_versions`,
`earliest_version`, `latest_version`, `current_version`,
`pct_filers_reporting`, and the counts behind the percent (`n_reported`,
`n_scope`), in the order of `xpaths`.
