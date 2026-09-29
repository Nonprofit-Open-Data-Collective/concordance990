# Validation reports, one per variable

Renders an HTML validation report per variable from the evidence tables
([`build_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_evidence.md),
[`combine_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/combine_evidence.md))
and flags
([`flag_xpaths()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/flag_xpaths.md)).
The report layout is shared; the value checks depend on the report type
chosen by
[`report_type()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/report_type.md):
`amount`, `number`, `checkbox`, `date`, `text`, `code`, `identifier`.
Templates live in `inst/reports/`.
