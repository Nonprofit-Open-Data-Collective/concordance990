# Changelog

## concordance990 2.0.1

- New
  [`dd()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/dd.md)
  looks up the data dictionary entry of a table or of variables: label,
  description, location code, scope, data type, family and the number of
  xpaths pooled. `xpaths = TRUE` adds each xpath with its schema years
  and percent of filers reporting. A variable prints as a record card
  and a table as a listing fitted to the console. In R Markdown, results
  render as markdown tables. Misspelled names get suggestions. See the
  new article “Looking up tables and variables”
  ([`vignette("looking-up-variables")`](https://nonprofit-open-data-collective.github.io/concordance990/articles/looking-up-variables.md)).
- New validation pages, one per variable (3,366), published with the
  site at `variables/`: dictionary entry, value checks, flags with the
  reviewer’s decision, the xpaths and the years each was used, coverage
  and fill rate by tax year, a value summary, and example filings with
  links to the XML.
  [`render_variable_pages()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/render_variable_pages.md)
  writes them from the filing evidence
  (`data-raw/render-variable-pages.R`). `dd(x, report = TRUE)` opens the
  page of a variable, or a table’s section of the index;
  [`variable_page_url()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/variable_page_url.md)
  gives the address. See
  [`vignette("variable-pages")`](https://nonprofit-open-data-collective.github.io/concordance990/articles/variable-pages.md).
- [`flag_xpaths()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/flag_xpaths.md)
  no longer raises GAP flags for the few filings with no return type
  (132 false GAP flags in the 990 evidence).
- [`data_dictionary()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/data_dictionary.md)
  also returns `family_id`.
- Fix 25 corrects two labels: `SD_02_EMT_STAFF_HOURS_ENFORCE`
  (“conservation easements”, was “conversation”) and
  `PF_01_REV_CONTR_REC_BOOKS` (was the bare column heading “Revenue and
  Expenses per Books”).
- Fix 26 fills blank `data_type_xsd` from the IRS schemas: 2,510 of
  4,361 blank cells get the type that the latest schema version
  declaring the xpath gives it (990, 990-EZ and 990-PF XSDs, 56 versions
  2009v1.0 to 2023v5.1, read by `data-raw/xsd-types.R`). Existing types
  are unchanged. Current 990 xpaths without a type fall from 149 to 1.
  Consumers that read the type of the current xpath, such as panel990,
  again see `SM_01_RE_OTH_NONCSH_CONTR` and 15 other variables typed.

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
