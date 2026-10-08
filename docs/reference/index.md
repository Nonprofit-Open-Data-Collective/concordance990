# Package index

## Using the concordance

For parsers and data users (ef2, panel990, fiscal and others).

- [`concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/concordance.md)
  : The concordance: one row per xpath
- [`xpath_map()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/xpath_map.md)
  : Lookup table from xpath to variable and table
- [`data_dictionary()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/data_dictionary.md)
  : Data dictionary: one row per variable
- [`table_names()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/table_names.md)
  : Table names
- [`cc_forms()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/cc_tables.md)
  [`cc_parts()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/cc_tables.md)
  [`cc_tables()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/cc_tables.md)
  [`cc_variables()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/cc_tables.md)
  [`cc_xpaths()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/cc_tables.md)
  [`cc_families()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/cc_tables.md)
  : Component tables
- [`lookup_xpath()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/lookup_xpath.md)
  : Look up raw xpaths
- [`normalize_xpath()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/normalize_xpath.md)
  : Normalize raw xpaths for lookup
- [`concordance_version()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/concordance_version.md)
  : Version of the concordance
- [`v1_columns`](https://nonprofit-open-data-collective.github.io/concordance990/reference/v1_columns.md)
  [`concordance_columns`](https://nonprofit-open-data-collective.github.io/concordance990/reference/v1_columns.md)
  : Columns of the v1 concordance, in order

## Building the concordance

- [`read_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_src.md)
  : Read the component tables
- [`write_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/write_src.md)
  : Write component tables
- [`build_concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_concordance.md)
  : Build the unified concordance from the component tables
- [`write_concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/write_concordance.md)
  : Write the unified concordance
- [`read_cc_csv()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_cc_csv.md)
  : Read a concordance CSV exactly as stored
- [`write_cc_csv()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/write_cc_csv.md)
  : Write a concordance CSV in the v1 style
- [`split_v1()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/split_v1.md)
  : Split the v1 concordance into component tables

## Change log and v1 crosswalk

- [`read_changelog()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_changelog.md)
  : Read the change log
- [`write_changelog()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/write_changelog.md)
  : Write the change log
- [`change_types`](https://nonprofit-open-data-collective.github.io/concordance990/reference/change_types.md)
  : Change types
- [`derived_columns`](https://nonprofit-open-data-collective.github.io/concordance990/reference/derived_columns.md)
  : Derived columns
- [`diff_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/diff_src.md)
  : Cell-level differences between two sets of component tables
- [`apply_changes()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/apply_changes.md)
  : Apply change-log rows to component tables
- [`check_changelog()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/check_changelog.md)
  : Check the change log against the current component tables
- [`draft_changes()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/draft_changes.md)
  : Draft change-log rows for unlogged edits
- [`baseline_src()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/baseline_src.md)
  : Baseline component tables (v1, split without changes)
- [`v1_crosswalk()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/v1_crosswalk.md)
  : Crosswalk from v1 rows to the current concordance

## Validation

- [`validation_rules`](https://nonprofit-open-data-collective.github.io/concordance990/reference/validation_rules.md)
  : Structural validation rules (PLAN.md section 6.1)
- [`validate_concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/validate_concordance.md)
  : Run the structural validation rules
- [`validation_summary()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/validation_summary.md)
  : Summarise validation against the rule ceilings
- [`read_validation_log()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_validation_log.md)
  : Read the validation log
- [`drop_accepted()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/drop_accepted.md)
  : Drop issues accepted in the validation log

## Filing evidence, flags and reports

- [`build_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_evidence.md)
  : Build filing evidence from ef2 DuckDB builds

- [`combine_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/combine_evidence.md)
  : Stack per-year evidence files

- [`load_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/load_evidence.md)
  : Load evidence tables for reporting

- [`read_xpath_stats()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_xpath_stats.md)
  :

  Read `xpath_stats.csv` with numeric quantiles

- [`xpath_observations()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/xpath_observations.md)
  : Xpath observations from filing evidence

- [`xpath_version_fields()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/xpath_version_fields.md)
  : Schema versions, current status and reporting rate of each xpath

- [`update_xpath_versions()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/update_xpath_versions.md)
  : Update the version fields of the component tables from filing
  evidence

- [`flag_xpaths()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/flag_xpaths.md)
  : Flag xpaths that look mis-mapped

- [`observed_table_groups()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/observed_table_groups.md)
  : Observed repeating groups per table

- [`value_checks()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/value_checks.md)
  : Value checks for one variable, by report type

- [`run_value_checks()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/run_value_checks.md)
  : Run the value checks for every variable

- [`partial_year()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/partial_year.md)
  : The partial final year of the evidence, if any

- [`report_type()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/report_type.md)
  : Choose the report type for a variable

- [`render_reports()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/render_reports.md)
  : Render validation reports

- [`reports`](https://nonprofit-open-data-collective.github.io/concordance990/reference/reports.md)
  : Validation reports, one per variable

- [`issue_catalog`](https://nonprofit-open-data-collective.github.io/concordance990/reference/issue_catalog.md)
  : Catalog of checks

- [`collect_issues()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/collect_issues.md)
  : Collect every failing case

- [`write_issues_report()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/write_issues_report.md)
  : Write the issues report (HTML and CSV)

- [`resolve_issues()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/resolve_issues.md)
  : Resolve an issues list against the current concordance

- [`write_resolved_report()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/write_resolved_report.md)
  : Write the resolved-issues report (HTML and CSV)
