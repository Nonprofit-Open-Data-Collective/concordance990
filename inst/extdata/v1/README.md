# v1 reference

`concordance-v1.csv` is the version 1 Master Concordance File, copied byte for byte from
`Nonprofit-Open-Data-Collective/irs-efile-master-concordance-file` (commit d8266da934cd1cb5d1d9cedc5398ba107b0c7bbe (2026-08-22)).

- md5: `3c58a279bca83e734f17fcb9bcbbe59c`
- 6864 xpaths, 2318 variables, 128 tables
- line endings: CRLF, as stored in the v1 repository; 6 cells contain Windows-1252 curly quotes

It is the fixed reference for the round-trip test and for the change log: every
difference between this file and the current concordance must be explained by a
row in `inst/extdata/changelog/changes.csv` (PLAN.md section 7.5).

## Conflicts kept at the xpath level

Where the xpaths of one variable disagree on a variable-level column, the component
tables store the most common value on the variable and keep the others in
`src/xpath_overrides.csv`:

| Field | Xpaths | Variables |
|---|---|---|
| `description` | 1527 | 829 |
| `rdb_table` | 67 | 15 |
| `label` | 37 | 22 |
| `variable_scope` | 16 | 15 |
| `location_code_family` | 15 | 14 |
| `data_type_simple` | 3 | 2 |
