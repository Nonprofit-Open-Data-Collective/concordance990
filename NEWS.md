# concordance990 (development version)

* New `dd()` looks up the data dictionary entry of a table or of variables:
  label, description, location code, scope, data type, family and the number
  of xpaths pooled. `xpaths = TRUE` adds each xpath with its schema years and
  percent of filers reporting. A variable prints as a record card and a table
  as a listing fitted to the console. In R Markdown, results render as
  markdown tables. Misspelled names get suggestions. See the new article
  "Looking up tables and variables" (`vignette("looking-up-variables")`).
* `data_dictionary()` also returns `family_id`.
* Fix 25 corrects two labels: `SD_02_EMT_STAFF_HOURS_ENFORCE` ("conservation
  easements", was "conversation") and `PF_01_REV_CONTR_REC_BOOKS` (was the
  bare column heading "Revenue and Expenses per Books").
* Fix 26 fills blank `data_type_xsd` from the IRS schemas: 2,510 of 4,361
  blank cells get the type that the latest schema version declaring the xpath
  gives it (990, 990-EZ and 990-PF XSDs, 56 versions 2009v1.0 to 2023v5.1,
  read by `data-raw/xsd-types.R`). Existing types are unchanged. Current 990
  xpaths without a type fall from 149 to 1. Consumers that read the type of
  the current xpath, such as panel990, again see `SM_01_RE_OTH_NONCSH_CONTR`
  and 15 other variables typed.

# concordance990 2.0.0

First release of the Master Concordance version 2. The frozen v1 concordance
is tagged `v2.0.0-baseline`. The v2 component tables reproduce it exactly, and
every change since is logged against it.

## Structure

* The concordance is stored as component tables, one per level of the
  hierarchy (forms, parts, tables, variables, xpaths, plus xpath overrides,
  families and per-form mappings) in `inst/extdata/src/`. The one-row-per-xpath
  files `concordance.csv`, `concordance.xlsx` and `concordance-990pf.csv` are
  generated from them by `build_concordance()`.
* 18 forms and schedules, 113 parts and 212 tables. The 990 / 990-EZ database
  has 2,413 variables in 136 tables (7,075 xpaths). The 990-PF database has
  1,062 variables in 83 tables (2,524 xpaths).
* An API for parsers and data users: `concordance()`, `xpath_map()`,
  `data_dictionary()`, `table_names()`, `cc_tables()`, `lookup_xpath()`,
  `normalize_xpath()` and `concordance_version()`. `concordance("v1")` returns
  the v1 columns.

## Change log and v1 crosswalk

* Every difference from v1 is recorded cell by cell in
  `inst/extdata/changelog/changes.csv` (62,725 rows). Each set of changes has
  its date, author, reason and evidence in `change_sets.csv`. The build stops
  if an edit is not logged or the log does not replay exactly
  (`check_changelog()`).
* `v1_crosswalk()` maps every v1 xpath to v2. Compared with v1: 2,463 xpaths
  added, 62 remapped, 350 moved to another table, 6,451 with metadata changes
  only, and 1 removed. The crosswalk is written to
  `inst/extdata/changelog/v1_to_v2_crosswalk.csv`.

## Fixes since v1

The issues list of the v1 concordance has been worked through in 24 fix
scripts (`data-raw/fixes/`). `reports/issues-resolved.html` summarises them.

* Clean-up, data types, mapping errors (polarity, checkbox types, variable
  collisions), variables split across tables, table cardinality, scale and
  coverage of unmapped xpaths (fixes 01-10).
* The 990-PF concordance merged in as its own database, then reviewed against
  1.25 million filings from TY2009-2024: forms, gaps, types, list-valued fields,
  table structure and value checks (fixes 11-21). This includes the
  Part IX-A charitable activities table and the Schedule B contributor number.
* Table numbers now agree with cardinality (`T00` tables are one row per
  filing, `T01`+ one row per repeated item). The unmapped ReturnHeader fields
  that carry values are now mapped. The version fields (`schema_versions`,
  `pct_filers_reporting`) are recomputed from the filings of TY2009-2024
  (fixes 22-24).
* Part titles for every part (fix 18).

## Validation and evidence

* Thirteen structural rules (R01-R13) are enforced with zero violations.
  Reviewed cases are recorded in `inst/extdata/validation/validation_log.csv`
  (`validate_concordance()`, `validation_summary()`).
* Filing evidence from the ef2 DuckDB builds (`build_evidence()`,
  `flag_xpaths()`, `value_checks()`). The per-variable reports and xpath
  reports are produced with `render_reports()`, and the issues reports with
  `write_issues_report()` and `write_resolved_report()`.

## Documentation

* A pkgdown site with guides to the component tables, the move from v1, the
  build, and validation and updates.
* Data dictionaries for the 990 / 990-EZ and the 990-PF, and an outline of
  every form, part and table, each with a printable PDF.
