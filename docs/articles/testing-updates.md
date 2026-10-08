# Validation, tests and making updates

The concordance is checked at three levels. **Structural rules** test
the component tables themselves and run on every build and in CI.
**Evidence flags** and **value checks** compare the mapping with real
filings. Every change is logged, so any version can be traced back to
v1.

## 1. Structural rules

[`validate_concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/validate_concordance.md)
applies twelve rules to the component tables; all are enforced, so a
violation stops the build and fails the tests.

``` r
knitr::kable(validation_summary()[, .(rule, status, violations, description)])
```

| rule | status | violations | description |
|:---|:---|---:|:---|
| R01 | enforced | 0 | Primary keys are unique in every component table |
| R02 | enforced | 0 | Every reference resolves (form, part, table, variable, override target) |
| R03 | enforced | 0 | Table cardinality is ONE or MANY |
| R04 | enforced | 0 | Variable names match [^1]{2}*\[0-9\]{2}*\[A-Z0-9\_\]+\$ (990-PF auxiliary schedules: ^PF_AX\[0-9\]{2}\_) |
| R05 | enforced | 0 | Variable names are at most 32 characters |
| R06 | enforced | 0 | Variable name prefix matches its table (F9_01 \<-\> F9-P01) |
| R07 | enforced | 0 | Each variable belongs to exactly one table |
| R08 | enforced | 0 | The xpath’s root element is one of its form’s xml roots |
| R09 | enforced | 0 | data_type_simple is numeric, text, checkbox or date |
| R10 | enforced | 0 | Missing values are empty cells, not the text ‘NA’ |
| R11 | enforced | 0 | Text is valid UTF-8 |
| R12 | enforced | 0 | Values have no leading or trailing whitespace |
| R13 | enforced | 0 | Table number agrees with cardinality: -T00- tables are ONE, T01+ tables are MANY |

Two rules accept documented exceptions: R04/R06 allow the 990-PF
auxiliary schedule names `PF_AXnn_` in `PF-P99` tables, and R07 skips
variables whose use of several tables is accepted in the validation log
(the Form 990 Part III program tables share variable names so they can
be stacked).

When a rule still has known violations it can be run as a **ratchet**:
its ceiling in `inst/extdata/validation/rule_ceilings.csv` may go down
but never up, and at zero the rule becomes enforced.

## 2. Evidence from filings

[`build_evidence()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_evidence.md)
scans the e-file DuckDB builds (one per tax year) and writes compact
tables to `evidence/`: for every xpath, year, schema version and return
type, the number of filings, how often it repeats within a filing, the
repeating element it sits in, and a profile of its values. From these,
[`flag_xpaths()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/flag_xpaths.md)
raises flags and
[`run_value_checks()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/run_value_checks.md)
runs the checks shown in the per-variable validation reports.

``` r
knitr::kable(issue_catalog[, .(check, severity, name)])
```

| check | severity | name |
|:---|:---|:---|
| R03 | error | Table cardinality is ONE or MANY |
| R04 | error | Variable names match the naming convention |
| R06 | warn | Variable name prefix matches its table |
| R07 | error | Each variable belongs to exactly one table |
| R09 | warn | data_type_simple is numeric, text, checkbox or date |
| R10 | cleanup | Missing values are empty cells, not the text ‘NA’ |
| R11 | cleanup | Text is valid UTF-8 |
| R12 | cleanup | No leading or trailing whitespace |
| R13 | error | Table number agrees with cardinality |
| COLLISION | error | Two xpaths of one variable filled in the same filing |
| POLARITY | error | Opposite meanings pooled |
| TYPE_CHECKBOX | error | Checkbox variable holds non-checkbox values |
| ROOT_MISMATCH | error | Xpath form does not match its table |
| TYPE_NUMERIC | warn | Numeric variable with non-numeric values |
| NAME_SUFFIX | warn | IRS element suffix disagrees with the data type |
| ONE_REPEATS | warn | Repeats within a filing in a one-to-one table |
| SCALE_BREAK | warn | Pooled xpaths on very different scales |
| GAP | warn | Variable missing in some years |
| INCIDENCE_BREAK | warn | Fill rate jumps between adjacent years |
| UNMAPPED | info | Observed in filings but not mapped |
| UNOBSERVED | info | Mapped but never observed |
| MANY_NOT_REPEATING | info | Many-to-one table, but the value never repeats |
| TYPE_TEXT_NUMERIC | info | Text variable whose values look like amounts |
| V_ID_TEXT | error | Identifier stored as a number |
| V_ID_FORMAT | warn | Identifier values have an unexpected format |
| V_ID_PLACEHOLDER | info | Placeholder identifiers |
| V_NUMBER_SCALE | error | Fractions pooled with percentages |
| V_POOLED_SCALE | warn | Pooled xpaths on different scales (3-10x) |
| V_MEDIAN_JUMP | info | Median changes sharply between adjacent years |
| V_DATE_FORMAT | warn | Mixed date formats |
| V_TEXT_NUMERIC | warn | Text variable holding numbers |
| V_CODE_LIST | info | Long code list |
| V_CODE_FORMAT | info | Codes in several formats |
| V_CODE_CASE | info | Lower-case codes |

A few examples of what they catch:

- **COLLISION**: two xpaths of one variable filled in the same row (a
  repeating-group instance, or the filing), so a parser would drop one.
  It found book value pooled with fair market value and a revenue line
  pooled with an expense line.
- **POLARITY**: `...NotRequired` pooled with `...Required`.
- **ONE_REPEATS**: an xpath that repeats inside a one-row table, whose
  extra values would be lost.
- **UNMAPPED** / **GAP**: fields that appear in filings but not in the
  concordance, and years where a variable has no data because its
  successor element is not mapped.

[`collect_issues()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/collect_issues.md)
gathers every failing case with the file, row and column to edit, and
[`write_issues_report()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/write_issues_report.md)
writes `reports/issues.html`.

## 3. The validation log

Not every flag is an error: a count whose median moves with the filer
population, an address field whose foreign values do not look like ZIP
codes. Reviewed cases are recorded in
`inst/extdata/validation/validation_log.csv`, one row per decision:

``` r
vl <- read_validation_log()
vl[, .N, by = status]
#>      status     N
#>      <char> <int>
#> 1: accepted  6253
vl[check == "POLARITY"][1, .(check, variable_name, status, note)]
#>       check              variable_name   status
#>      <char>                     <char>   <char>
#> 1: POLARITY F9_00_EXEMPT_STAT_4947A1_X accepted
#>                                                                                                                                                                           note
#>                                                                                                                                                                         <char>
#> 1: Organization4947a1NotPFInd is the 2013+ name of the same 4947(a)(1) checkbox ('not treated as a private foundation' describes the organization type); values are X in both.
```

`accepted` cases (correct as they are, or a false positive of the check)
drop out of later issues lists; `needs_input` and `deferred` cases stay.

## 4. Tests and CI

[`devtools::test()`](https://devtools.r-lib.org/reference/test.html)
runs the testthat suite in `tests/testthat/`:

| File | Tests |
|----|----|
| `test-structure.R` | keys are unique, references resolve, controlled values |
| `test-validate.R` | every rule passes; the rules catch deliberate errors |
| `test-changelog.R` | the change log replays exactly; add, edit and remove round-trip; stale old values are rejected; the crosswalk covers every xpath |
| `test-roundtrip.R` | the baseline split reproduces v1 byte for byte |
| `test-api.R` | the consumer functions, the per-form views and the data dictionary |

GitHub Actions runs `R CMD check` (which runs the tests and builds these
vignettes) on every push and pull request
(`.github/workflows/R-CMD-check.yaml`).

## 5. Making an update

Edit the component tables, never the generated files. Each fix is
logged, one change-log row per changed cell
(`inst/extdata/changelog/changes.csv`), with a reason and the evidence
behind it, stored once per set of changes in `change_sets.csv`
([`read_changelog()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/read_changelog.md)
joins them). Derived columns (`derived_columns`: the xpath version
fields and `pct_filers_reporting`) are recomputed from the filing
evidence and not logged cell by cell. Replaying the log on the frozen v1
must reproduce the current tables exactly; the build stops if it does
not.

### With a fix script (recommended)

The fixes so far are scripts in `data-raw/fixes/`. Each step edits the
tables and logs its own changes:

``` r
source("data-raw/fixes/_helpers.R")   # fix_step(), rename_variable(), remap_xpaths(), ...

fix_step(function(s) {
  remap_xpaths(s, "/Return/ReturnData/IRS990ScheduleD/RevenueNotRptdOnFinStmt",
               "SD_11_RECO_REV_ADD_L4AB")
}, reason = "Remap the revenue reconciliation total from the expense variable to the revenue variable.",
   evidence = "POLARITY; COLLISION; reports/SD_12_RECO_EXP_ADD_L4AB.html",
   type = "remap", affects = TRUE)
```

### By hand

``` r
# 1. edit inst/extdata/src/*.csv
# 2. draft change-log rows for the edits, then fill in reason and evidence
devtools::load_all()
draft_changes(author = "Your Name", reason = "...", evidence = "...", write = TRUE)
```

### Then

``` r
source("data-raw/build-concordance.R")   # checks the log and the rules, writes the files
devtools::test()
```

Record reviewed flags in the validation log, commit the component
tables, the change log and the generated files together, and open a pull
request.

### Change types

``` r
change_types
#>  [1] "add"              "remove"           "add_column"       "remove_column"   
#>  [5] "remap"            "rename"           "retype"           "relabel"         
#>  [9] "split"            "merge"            "move_table"       "recode_location" 
#> [13] "recode_value"     "resolve_conflict" "edit"
```

Mark `affects_data = TRUE` when data built with v1 changes (a remap,
split, retype, table move or rename) and `FALSE` for metadata (labels,
whitespace).

[^1]: A-Z0-9
