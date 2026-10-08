# Changelog

## concordance990 2.0.0

First release of the Master Concordance version 2. The frozen v1
concordance is tagged `v2.0.0-baseline`. The v2 component tables
reproduce it exactly, and every change since is logged against it.

### Structure

- The concordance is stored as component tables, one per level of the
  hierarchy (forms, parts, tables, variables, xpaths, plus xpath
  overrides, families and per-form mappings) in `inst/extdata/src/`. The
  one-row-per-xpath files `concordance.csv`, `concordance.xlsx` and
  `concordance-990pf.csv` are generated from them by
  [`build_concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_concordance.md).
- 18 forms and schedules, 113 parts and 212 tables. The 990 / 990-EZ
  database has 2,413 variables in 136 tables (7,075 xpaths). The 990-PF
  database has 1,062 variables in 83 tables (2,524 xpaths).
- An API for parsers and data users:
  [`concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/concordance.md),
  [`xpath_map()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/xpath_map.md),
  [`data_dictionary()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/data_dictionary.md),
  [`table_names()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/table_names.md),
  [`cc_tables()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/cc_tables.md),
  [`lookup_xpath()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/lookup_xpath.md),
  [`normalize_xpath()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/normalize_xpath.md)
  and
  [`concordance_version()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/concordance_version.md).
  `concordance("v1")` returns the v1 columns.

### Change log and v1 crosswalk

- Every difference from v1 is recorded cell by cell in
  `inst/extdata/changelog/changes.csv` (62,725 rows). Each set of
  changes has its date, author, reason and evidence in
  `change_sets.csv`. The build stops if an edit is not logged or the log
  does not replay exactly
  ([`check_changelog()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/check_changelog.md)).
- [`v1_crosswalk()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/v1_crosswalk.md)
  maps every v1 xpath to v2. Compared with v1: 2,463 xpaths added, 62
  remapped, 350 moved to another table, 6,451 with metadata changes
  only, and 1 removed. The crosswalk is written to
  `inst/extdata/changelog/v1_to_v2_crosswalk.csv`.

### Fixes since v1

The issues list of the v1 concordance has been worked through in 24 fix
scripts (`data-raw/fixes/`). `reports/issues-resolved.html` summarises
them.

- Clean-up, data types, mapping errors (polarity, checkbox types,
  variable collisions), variables split across tables, table
  cardinality, scale and coverage of unmapped xpaths (fixes 01-10).
- The 990-PF concordance merged in as its own database, then reviewed
  against 1.25 million filings from TY2009-2024: forms, gaps, types,
  list-valued fields, table structure and value checks (fixes 11-21).
  This includes the Part IX-A charitable activities table and the
  Schedule B contributor number.
- Table numbers now agree with cardinality (`T00` tables are one row per
  filing, `T01`+ one row per repeated item). The unmapped ReturnHeader
  fields that carry values are now mapped. The version fields
  (`schema_versions`, `pct_filers_reporting`) are recomputed from the
  filings of TY2009-2024 (fixes 22-24).
- Part titles for every part (fix 18).

### Validation and evidence

- Thirteen structural rules (R01-R13) are enforced with zero violations.
  Reviewed cases are recorded in
  `inst/extdata/validation/validation_log.csv`
  ([`validate_concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/validate_concordance.md),
  [`validation_summary()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/validation_summary.md)).
- Filing evidence from the ef2 DuckDB builds
  ([`build_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_evidence.md),
  [`flag_xpaths()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/flag_xpaths.md),
  [`value_checks()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/value_checks.md)).
  The per-variable reports and xpath reports are produced with
  [`render_reports()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/render_reports.md),
  and the issues reports with
  [`write_issues_report()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/write_issues_report.md)
  and
  [`write_resolved_report()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/write_resolved_report.md).

### Documentation

- A pkgdown site with guides to the component tables, the move from v1,
  the build, and validation and updates.
- Data dictionaries for the 990 / 990-EZ and the 990-PF, and an outline
  of every form, part and table, each with a printable PDF.
