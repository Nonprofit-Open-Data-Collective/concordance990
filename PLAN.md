# Master Concordance 2.0 — Plan

Status: draft, 2026-09-23. This document records the analysis of the v1 Master
Concordance File (MCF), the decisions made so far, and the design and work plan
for version 2.0, delivered as the R package **concordance990**.

---

## 1. Goals

1. **Easier to maintain** — every fact is stored once, in a small hand-edited
   table, and everything else is generated.
2. **Easier to validate** — structural rules and evidence from real filings are
   checked on every change, and there is one validation report per variable.
3. **Easier to integrate** — partner packages (ef2, ef2pf, panel990, fiscal,
   efile-rdb-tables, nccs-data-core, governance) load a versioned concordance
   from a single package instead of downloading `master/concordance.csv` and
   patching it locally.
4. **Backward compatible** — a v1-shaped tidy `concordance.csv` (and a
   spreadsheet version of it) is always generated.

## 2. Decisions

| # | Decision |
|---|----------|
| D1 | **Pooling.** 990 and 990-EZ xpaths are pooled under one variable when they are close enough for analysis. Non-equivalent lines become sibling variables (e.g. `_V2`) in the same family. |
| D2 | **990-PF is in scope for 2.0.** The v1 PF part files (`02-concordance-foundations/`) will be merged in as `form_id = F990PF`. |
| D3 | **Source of truth = component CSVs in GitHub.** The build always also generates a single tidy spreadsheet approximating v1 `concordance.csv` (component tables joined into one row per xpath), as both CSV and XLSX. |
| D4 | **Delivered as an R package** (`concordance990`). It contains the maintenance/build tooling *and* the latest built concordance, so partner packages can `Imports:` it and read tables directly. |
| D5 | **Evidence comes from the ef2 DuckDB builds** (`EFILE_BUILD_SEPT_2026/<year>/EFILE<year>.duckdb`, TY2009–2024), joined to the *current* concordance on the cleaned xpath. The `RDB_TABLE`/`VARIABLE_NAME` columns stored in the DuckDB builds are ignored because they were fixed when each build ran. |
| D6 | **A family is named after its anchor variable.** `family_id` = the name of the family's anchor variable (the 990 version, or the only variable). For the 94% of variables with no alternates, family_id equals the variable name. See section 4.1. |
| D7 | **Scope for schedules is declared per part, then checked against filings.** Schedule xpaths carry no form indicator, so who is expected to file a part (990 only, or 990 and 990-EZ) is entered once per part in `parts.csv` and compared with the return types observed in filings. See section 4.2. |
| D8 | **Every change from v1 is logged line by line.** The first v2 build reproduces v1 exactly and is committed as the baseline; every later fix is recorded in a machine-readable change log that, applied to v1, reproduces the current concordance. See section 7.5. |

## 3. Findings from v1 (summary)

v1 `concordance.csv`: 6,864 rows (one per xpath, and xpath is a clean primary
key), 2,318 variables and 128 tables. Most problems come from storing four
levels of attributes (form/part → table → variable → xpath) in one flat file:

- **Variable-level attributes disagree within a variable:** `description`
  (828 variables), `required` (491), `form_line_number` (107), `location_code`
  (136), `label` (22).
- **15 variables span several tables** and both ONE/MANY (Part III programs,
  Schedule G event totals). 5 variables' prefixes don't match their table, and
  `SO-T99-SUPPLEMENTAL-INFO` has no part number.
- **Family keys are coarse:** a `location_code_family` value can hold 9–23
  variables, so it cannot identify a concept.
- **Vocabularies are loose:** `form_type` includes `SZ`/`F9`/`PZ`;
  `variable_scope` mixes scope with section tags (HD, SG); the xsd → simple
  type mapping is inconsistent; identifiers (EIN, PTIN, CUSIP, phone) are typed
  numeric.
- **Location codes have no single grammar:** mixed case, roman numerals, ranges
  (`28-31`), combined columns (`ABCD`), period suffixes, catch-all `PART-99`.
  Sorting by family breaks the 128 tables into 211 separate runs.
- **Version metadata is stale:** `versions` ends at 2016 and is blank for 1,783
  rows.
- **Downstream packages each re-derive the same things:** 4 hand-coded lists
  of repeating-group xpaths (ef2 `get_table_headers()`, efile-rdb-tables
  `TABLE-HEADERS.R`, 990pf-dev, heuristic group finders); panel990 type, money
  and scope fixes; fiscal `.VALID_TABLES`; ASCII conversion in ef2/panel990.

Findings from filing evidence (`xpath_reports/`, DuckDB builds):

- 1,809 concordance xpaths (26%) are **never observed** in any filing
  TY2009–2024. Almost all are unused alternates; only 23 variables have no
  observed xpath at all.
- 113 observed leaf xpaths are **unmapped** (61 still used in 2020+). The
  largest groups are Schedule H (12), Schedule A (9), AffiliatedGroupSchedule
  (44) and AffiliateListing (25).
- About 300 xpaths in **one-to-one tables repeat within a filing** (Schedule H
  Part V facilities, `-T99-` supplemental tables), so parsers collapse or
  drop values.
- **Mis-mappings found by the prototype checks:**
  - `F9_04_SCHED_B_REQ_X` pools `ScheduleBRequired` with `ScheduleBNotRequired`
    (opposite meanings).
  - `F9_05_170C_FUNDS_FOR_PREMIUM_X` (a checkbox) is mapped to the free-text
    `TransferPrsnlBnftContractsDecl/Declaration(Desc)`.
  - 8 numeric variables hold non-numeric values (PTIN, descriptions,
    valuation-method codes, CUSIP).
  - 73 variables have two of their xpaths filled in the same filing.

Problems in the DuckDB builds (to report to ef2):

- TY2020 KEYS has 515,681 rows for 490,208 distinct `OBJECTID`s; 25,473
  filings are loaded twice, as exact copies (every FLATXML row doubled). This
  inflates `count_occurrences` in the xpath reports. Check the other years.
- 2 KEYS rows have a NULL `RETURN_TYPE`.
- The builds contain only the 990 and 990-EZ. The 990-PF needs its own scan.
- `generate_xpath_report()` does not remove the `irs:`/`efile:` namespace
  prefixes (1,051 prefixed rows in `ALL-XPATHS.csv`).

## 4. Data model (source tables)

All hand-edited tables live in `inst/extdata/src/` (installed with the package,
so validation runs against an installed copy too). One fact, one place.

| Table | Key | Contents |
|---|---|---|
| `forms.csv` | `form_id` | F990, F990EZ, F990PF, SA…SR; `xml_root` (IRS990, IRS990ScheduleA…); title; `sort_order` |
| `parts.csv` | `part_id` | form_id, part number, section, title, `filed_by` (PC, PC+EZ; PF for the 990-PF), `filer_condition`, sort_order (section 4.2) |
| `tables.csv` | `table_id` (= `rdb_table`) | part_id, `cardinality` ONE/MANY, `table_role` main/repeating/supplemental, title, sort_order |
| `table_groups.csv` | (`table_id`, `group_xpath`) | the repeating-group root xpaths per table, with form_type and first/last version (replaces the 4 hand-coded lists) |
| `families.csv` | `family_id` (= anchor `variable_name`) | only families with alternates: anchor variable, label, definition (section 4.1) |
| `variables.csv` | `variable_name` | table_id, family_id (defaults to the variable's own name), label, description (form-standardized), `data_type` (controlled vocabulary), `is_money`, `is_identifier`, location-code components (form, part, section, line, subline, column, period, field), optional `filed_by` override, status (active/deprecated/renamed_to) |
| `xpaths.csv` | `xpath` | variable_name, group_xpath, location_code_xsd, description_xsd, data_type_xsd, line_xsd, min/max occurs, notes |
| `ignore.csv` | `xpath` | xpaths deliberately left unmapped (containers, IRS internals), with a reason |
| `rules.csv` | — | structured production rules: variable_a, relation (same_as/sum_of/replaces), variable_b |
| `validation_log.csv` | — | variable_name, xpath (optional), flag_code (optional), reviewer, date, status, note; the latest entry wins, and a flag can be accepted so it doesn't fire again |
| `vocab/*.csv` | — | data_types, xsd_type_map, form_types, flag_codes, abbreviations |

Derived by the build, **not hand-entered**: `form_type` (from the xpath
root), `variable_scope` (from the xpath roots for the 990/990-EZ, and from
the declared `parts.filed_by` for schedules; section 4.2),
`location_code_family` (the anchor variable's code; section 4.1),
`location_code` string and numeric `sort_key` (from the components:
zero-padded, roman numerals → integers, forms ordered by
`forms.sort_order`), version range, fill rates and validation roll-ups.

**Rules for the variable/family model (D1):** a variable is one concept, and
may pool 990 and 990-EZ xpaths. A family groups alternate versions of the
same field that aren't interchangeable (e.g. `F9_01_REV_CONTR_TOT_CY` and
`F9_01_REV_CONTR_TOT_CY_V2`). `form_type` belongs to the xpath, not the
variable.

### 4.1 Families and location codes (D6)

In v1, `location_code_family` does two jobs. Of 1,899 v1 families, 1,778
(94%) hold a single variable. Most of the other 121 are not alternates at
all: they are different fields that share a form line or a coarse code (the
city, state and ZIP of one address; the 23 variables coded
`F990-PC-PART-02`). True alternates such as `_V2` are rare.

v2 separates the two jobs:

- **Location** belongs to the variable. Each variable gets a location code
  precise enough to be unique and sortable. Fields that share a line get a
  field component (e.g. `...-LINE-20-ADDR-CITY`) instead of sharing a
  family.
- **Family** is only for alternates. `family_id` is the name of the anchor
  variable (the 990 version, or the variable itself when there are no
  alternates), so for most variables `family_id == variable_name`.
  `location_code_family` is then derived as the anchor's location code
  instead of being stored.
- Families with more than one member are listed explicitly in
  `families.csv`; singletons need no row.

### 4.2 Scope (D7)

For the 990 and 990-EZ themselves, the xpath root (`IRS990` or `IRS990EZ`)
says which form an xpath belongs to. Schedule xpaths do not: the same
`IRS990ScheduleA/...` xpath is filed with either form, and whether 990-EZ
filers complete a schedule varies by schedule and often by part. So scope
has three pieces:

| Field | Level | Source |
|---|---|---|
| `filed_by` | part (or section) in `parts.csv`, with rare variable-level overrides | **declared** from the IRS instructions: `PC` or `PC+EZ`; a free-text `filer_condition` for other limits (e.g. 501(c)(3) only) |
| `xpath_form` | xpath | **derived** from the xpath root for 990/990-EZ body xpaths; schedule xpaths inherit `filed_by` |
| `observed_filed_by` | part and variable | **evidence**: share of values coming from 990-EZ returns |

A validation rule compares declared with observed. From TY2009–2024
filings, 990-EZ returns supply these shares of schedule values:

| Schedule | 990-EZ share | | Schedule | 990-EZ share |
|---|---|---|---|---|
| A | 36% | | L | 11% (Parts I–II ~20%; Parts III–IV under 1%) |
| B | 23% | | N | 42% |
| C | 7% | | O | 34% |
| E | 12% | | D, F, H, I, J, K, M, R | 0% |
| G | 26% | | | |

Schedule L shows why scope has to be declared at the part level: 990-EZ
filers complete Parts I–II, and the handful of Part III–IV values from EZ
returns are filer errors, not a scope change.

## 5. Evidence layer (generated, `evidence/`)

Built from the DuckDB files with `build_evidence()`. Duplicate filings and
namespace prefixes are removed first. Each output has one row per stratum
(no delimited lists):

| File | Grain | Contents |
|---|---|---|
| `filings.csv` | tax_year × schema_version × return_type | n_filings, n_duplicate_keys |
| `xpath_stats.csv` | xpath × tax_year × schema_version × return_type | node_type, n_filings, n_occurrences, n_filings_repeat, max_per_filing, value profile (p_num, p_bool, p_date, n_distinct, avg/max length, numeric quantiles, n_zero, n_negative) |
| `xpath_groups.csv` | xpath × tax_year × table_header | n_occurrences (the observed repeating container) |
| `xpath_values.csv` | xpath × tax_year | top 5 values (truncated to 100 characters) with counts |
| `xpath_examples.csv` | xpath × tax_year × schema_version | up to 3 example filings (OBJECTID, URL) |
| `variable_collisions.csv` | variable × tax_year × xpath set | filings where 2+ xpaths of one variable are filled (depends on the mapping, so recomputed when the mapping changes) |
| `manifest.json` | — | source DB paths and sizes, build time, concordance hash used for the collision step |

Still to add: XSD metadata for every schema version 2009v1.0 … 2024v5.5
(type, description, line, min/max occurs) in `xsd_elements.csv`, and a
990-PF scan.

## 6. Validation

### 6.1 Structural rules (`validate_concordance()`, run in CI on every PR)

- Primary keys are unique; every reference resolves (xpath → variable → table →
  part → form; variable → family; xpath → group_xpath).
- Values come from the controlled vocabularies; each variable has exactly one
  table and one family.
- Variable names match `^[A-Z0-9]{2}_[0-9]{2}_[A-Z0-9_]+$`, are ≤ 32
  characters, and their prefix agrees with their table.
- Location codes parse against the grammar, and sorting by `sort_key` keeps
  each table's rows together.
- The xpath root agrees with the variable's form; xpaths in MANY tables sit
  under a declared `group_xpath`; no xpath in a ONE table sits inside a
  repeating element.
- `data_type` agrees with `xsd_type_map`, and identifiers are text.

### 6.2 Evidence flags (`flag_xpaths()` → `evidence/xpath_flags.csv`)

| Flag | Severity | Rule |
|---|---|---|
| `POLARITY` | error | `Not`/`No` appears in some of a variable's xpaths but not others |
| `TYPE_CHECKBOX` | error | checkbox variable, but under 95% of values are X/true/false/1/0 |
| `COLLISION` | error | 2+ xpaths of one variable are filled in the same filing |
| `ROOT_MISMATCH` | error | the xpath's form or schedule doesn't match the variable's table |
| `TYPE_NUMERIC` | warn | numeric variable, but under 95% of values parse as numbers |
| `NAME_SUFFIX` | warn | the IRS element-name suffix (Amt/Ind/Txt/Desc/Cd/Dt/Cnt/Pct/Rt) disagrees with data_type |
| `ONE_REPEATS` | warn | xpath in a ONE table repeats in more than 1% of filings |
| `GROUP_MISMATCH` | warn | the observed container isn't a declared group_xpath for the table |
| `GAP` | warn | the variable has zero filings in years between observed years; nearby unmapped xpaths are suggested |
| `INCIDENCE_BREAK` | warn | the variable's fill rate changes more than 3x between adjacent years (within one return type) |
| `SCALE_BREAK` | warn | a numeric xpath's median differs more than 10x from the variable's other xpaths (within one form type) |
| `UNOBSERVED` | info | mapped xpath never seen in filings |
| `UNMAPPED` | info | observed leaf xpath with no mapping and not in `ignore.csv`; the closest mapped sibling is suggested |

Errors block a `pass` status. A flag accepted in `validation_log.csv` for a
given (xpath, flag_code) is suppressed on later builds.

### 6.3 Per-variable validation reports

One HTML report per variable (`reports/<VARIABLE>.html`, published with
GitHub Pages), rendered from `evidence/` only (the DuckDB files are not
needed at render time). It updates the validatathon templates with:
open flags first; an xpath table (form, first/last year, versions, filings,
flags); filings per year by xpath (shows the 2013 xpath switch); fill rate
by return type; value profiles by data type (checkbox frequencies, text top
values and lengths, numeric quantiles by year and xpath); how often
repeating fields repeat; example filings with links to the XML and
ProPublica; review status. A sortable index of all reports supports
triage.

New columns in the generated tidy concordance:

| Column | Level | Source |
|---|---|---|
| `validation_report` | variable | generated URL |
| `validation_status` | variable | `validation_log.csv` (unreviewed/pass/pass_with_notes/flagged/fix_pending/fixed) |
| `validated_by`, `validated_date` | variable | `validation_log.csv` |
| `n_open_flags`, `flag_codes` | variable | generated roll-up |
| `xpath_flags`, `xpath_status` | xpath | generated (active/retired/unobserved/unmapped) |

## 7. Package design (`concordance990`)

### 7.1 Consumer API (light dependencies: base R + data.table)

```r
concordance(format = c("v2", "v1"))   # tidy flat table, one row per xpath
xpath_map()                            # xpath, variable_name, rdb_table, group_xpath, cardinality, form_type
cc_forms(); cc_parts(); cc_tables(); cc_table_groups()
cc_families(); cc_variables(); cc_xpaths()
data_dictionary()                      # one row per variable
table_names(cardinality = NULL)        # replaces fiscal .VALID_TABLES
normalize_xpath(x)                     # strip [n] indexes and irs:/efile: prefixes
lookup_xpath(x)                        # normalize + join to xpath_map()
concordance_version()                  # package version, build date, git sha
```

### 7.2 Maintainer API (Suggests: duckdb, DBI, openxlsx, rmarkdown, ggplot2, arrow)

```r
split_v1()               # one-time: decompose v1 concordance.csv into src/ tables + conflict report
build_concordance()      # src/ -> dist/ (+ data/*.rda, root concordance.csv/.xlsx)
validate_concordance()   # structural rules (6.1)
build_evidence()         # DuckDB -> evidence/ (section 5)
flag_xpaths()            # evidence + src -> evidence/xpath_flags.csv (6.2)
render_reports()         # evidence -> reports/*.html (6.3)
diff_concordance(a, b)   # changelog: added/removed/renamed variables, xpaths and tables
```

### 7.3 Repository layout

```
DESCRIPTION  NAMESPACE  NEWS.md  PLAN.md  README.md
R/                         consumer + maintainer functions
inst/extdata/src/          source-of-truth CSVs (hand-edited, reviewed via PR)
inst/extdata/dist/         generated release tables (CSV)
data/                      generated .rda for lazy loading
data-raw/                  driver scripts (build_evidence run, split_v1 run)
evidence/                  generated from DuckDB (.Rbuildignore'd)
reports/                   generated HTML (published to gh-pages; .Rbuildignore'd)
tests/testthat/            validation rules as tests
concordance.csv            generated tidy file, v1 layout (for raw-URL users)
concordance.xlsx           generated spreadsheet of the same (D3)
```

### 7.4 Versioning and integration

- Semantic versioning: **major** = variables or tables renamed/removed;
  **minor** = new xpaths/variables/tables; **patch** = metadata-only fixes.
  `NEWS.md` is generated by `diff_concordance()`.
- Partner packages use `Imports: concordance990` with
  `Remotes: Nonprofit-Open-Data-Collective/concordance990@vX.Y.Z` and call
  `xpath_map()` / `cc_table_groups()` instead of bundled copies.
- Planned migrations: ef2 `get_concordance()` and `get_table_headers()`;
  efile-rdb-tables `TABLE-HEADERS.R`; panel990 `build-concordance.R`
  (reduced to a join); fiscal `.VALID_TABLES`; nccs-data-core
  `CONCORDANCE_DF`; ef2pf `F990-PF-FULL.csv`.

### 7.5 Change log against v1 (D8)

Data built with v1 must stay reconcilable, so every difference between v1
and the current concordance is recorded line by line.

1. **Baseline.** `split_v1()` decomposes v1 `concordance.csv` into the
   `src/` tables with no content changes. Where v1 disagrees with itself
   (e.g. several descriptions for one variable), the split keeps every
   value at the xpath level so nothing is lost. The baseline build must
   reproduce v1 exactly in the v1 layout (a round-trip test). It is
   committed and tagged `v2.0.0-baseline`.
2. **Fixes.** Every later fix is its own commit (or a PR of related fixes)
   and adds rows to `inst/extdata/changelog/changes.csv`, one row per
   changed cell or row:

   | Column | Meaning |
   |---|---|
   | `change_id` | stable id (`C0001`, ...) |
   | `date`, `version`, `commit`, `author` | when, in which release, and by whom |
   | `level` | xpath, variable, table, family, part |
   | `key` | the xpath or name the row applies to |
   | `field` | the column changed (e.g. `variable_name`, `data_type`, `rdb_table`); `*` for whole-row adds and removals |
   | `old_value`, `new_value` | before and after (empty for adds or removals) |
   | `change_type` | remap, rename, retype, relabel, add, remove, split, merge, move_table, recode_location |
   | `reason` | why, in one sentence |
   | `evidence` | flag code and/or report link (e.g. `POLARITY`, `reports/F9_04_SCHED_B_REQ_X.html`) |
   | `affects_data` | whether values built with v1 change (true for remaps, splits and retypes; false for labels) |

3. **Checks in CI.** `diff_concordance(v1, current)` lists every changed
   cell; the build fails unless each one is covered by a change-log row,
   and applying `changes.csv` to v1 reproduces the current concordance.
   Rows must have a reason.
4. **Crosswalk for old data.** From the change log the build generates
   `v1_to_v2_crosswalk.csv` (one row per v1 xpath → v2 variable and table;
   renamed, split and merged variables included). Re-mapping a v1-built
   dataset uses the crosswalk plus the rows with `affects_data = true`.
5. **Human summary.** `NEWS.md` per release summarises the change log by
   type.

## 8. Work plan

- [x] **Phase 1: Evidence.** `build_evidence()` over TY2009–2024 DuckDB
      builds → `evidence/`; first flag report; validation report templates
      and demo reports.
- [x] **Phase 2: Package skeleton + baseline.** DESCRIPTION, consumer API;
      `split_v1()` produces `src/` tables and a conflict report; round-trip
      test (the v1 layout reproduces v1 exactly); commit and tag
      `v2.0.0-baseline` (section 7.5). Result: v1 frozen from
      irs-efile-master-concordance-file commit `d8266da`; the v1 layout
      rebuilt from the component tables is byte-identical (md5
      `3c58a279bca83e734f17fcb9bcbbe59c`); `R CMD check` clean. The split
      keeps 1,665 v1 conflicts as xpath overrides (`description` 1,527
      xpaths / 829 variables; `rdb_table` 67 / 15; `label` 37 / 22;
      `variable_scope` 16 / 15; `location_code_family` 15 / 14;
      `data_type_simple` 3 / 2).
- [x] **Phase 3: Validation + change log.** Structural rules as testthat
      tests + GitHub Actions; `diff_concordance()` and the change-log check;
      validation columns in the tidy output. Result: `diff_src()`,
      `apply_changes()`, `check_changelog()`, `draft_changes()` and
      `v1_crosswalk()` (the baseline is regenerated from v1 with
      `split_v1()`, so the log is checked by replaying it);
      `validate_concordance()` with 12 rules, 5 enforced and 7 on a
      ratchet (ceilings in `inst/extdata/validation/rule_ceilings.csv`);
      R-CMD-check workflow. Baseline violations: R03 cardinality 3 tables;
      R04 variable-name format 13 (12 have trailing spaces); R06 prefix vs
      table 5; R07 variables in several tables 15; R09 missing
      data_type_simple 30 variables; R10 literal "NA" 23,528 cells; R11
      invalid UTF-8 3 cells; R12 leading/trailing whitespace 160 cells.
      Validation columns in the tidy output move to Phase 4, with the
      validation log.
- [ ] **Phase 4: Content fixes, each logged.** Work through conflicts and
      flags; add `table_groups.csv`; resolve the 15 multi-table variables;
      map or ignore the unmapped xpaths; location-code grammar and field
      components; `parts.filed_by`; XSD metadata for all schema versions.
      Value clean-up surfaced by the baseline: cardinality `"ONE "` (trailing
      space) on three Schedule H tables (501 xpaths); the literal text `"NA"`
      (23,528 cells) versus empty cells (6,836) for missing values; six
      Windows-1252 curly quotes to convert to UTF-8; resolving the 1,665
      xpath overrides.
      Progress (branch `v2-revisions`, 2026-09-26): the issues list
      (`reports/issues.html`) is worked through in `data-raw/fixes/01-09`,
      each fix logged in the change log; resolutions and open questions are
      in `reports/issues-resolved.html`. Done: value clean-up (R03, R04,
      R09-R12 now enforced), identifier and code types, mapping errors
      (polarity, pooled columns, swapped xpaths), supplemental and facility
      tables made MANY (new tables SH-P05-T03, SA-P01-T02, SA-P01-T03,
      F9-P00-T01, SC-P02-T01), 103 observed xpaths added, and
      `inst/extdata/validation/validation_log.csv` for reviewed cases.
      Evidence checks corrected: collisions are counted per repeating-element
      row (`build_evidence()`), and V_NUMBER_SCALE runs only on shares. Still
      open: Part III program tables (R07), the Schedule O table name (R06),
      list-valued fields in one-row tables; the other Phase 4 items above.
- [ ] **Phase 5: 990-PF.** Merge the PF part files; PF evidence scan.
- [ ] **Phase 6: Release + downstream.** v2.0.0 tag; migrate ef2, panel990,
      fiscal, efile-rdb-tables, nccs-data-core, ef2pf.

## 9. Open questions

- The rule for `_V2`-style sibling names (keep the suffix convention or use a
  descriptive one).
- Whether `evidence/` is committed as CSV or Parquet (size), or published as
  a release asset.
- Fixing the duplicate filings: in the ef2 builds (preferred) or only removed
  in evidence.
- The license for the package code (the data stay ODC-By 1.0).
