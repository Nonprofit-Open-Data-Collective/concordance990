# From the v1 concordance to v2

## Why a new version

The version 1 Master Concordance File (`concordance.csv` in the
`irs-efile-master-concordance-file` repository) mapped 6,864 xpaths to
2,318 variables in 128 tables. It has been the backbone of the e-file
research databases, but its single flat file made it hard to maintain
and to check:

- **Facts were repeated and disagreed.** Every row carried its
  variable’s description, table, label and scope. For 829 variables the
  xpaths gave different descriptions; 15 variables were assigned to more
  than one table.
- **Loose vocabularies.** Missing values were sometimes empty and
  sometimes the text `NA` (23,528 cells); a cardinality was `"ONE "`
  with a trailing space, so parsers skipped three Schedule H tables;
  identifiers such as EINs and ZIP codes were typed numeric.
- **No evidence loop.** Nothing tested a mapping against real filings.
  When the xpaths of every variable were compared with 5.98 million 990
  and 990-EZ filings (TY2009-2024), the checks found opposite meanings
  pooled into one variable (Schedule B *required* with Schedule B *not
  required*), revenue lines in expense variables, repeating groups in
  one-row tables that silently dropped values, and hundreds of observed
  fields with no mapping.
- **Every downstream package patched its own copy.** ef2, panel990,
  fiscal and efile-rdb-tables each re-derived table headers, types and
  fixes.
- **The 990-PF lived elsewhere**, in a separate concordance with its own
  naming.

## Design decisions

|  | Decision |
|----|----|
| D1 | 990 and 990-EZ xpaths are pooled under one variable when they measure the same thing; non-equivalent lines become sibling variables. |
| D2 | The 990-PF is in scope, merged as form `F990PF`. |
| D3 | The component CSVs in GitHub are the source of truth; a v1-shaped `concordance.csv` (and `.xlsx`) is always generated. |
| D4 | The concordance ships as an R package that partner packages import. |
| D5 | Evidence comes from the e-file DuckDB builds, joined to the current concordance by cleaned xpath. |
| D6 | A family is named after its anchor variable. |
| D7 | Who files a part is declared per part and checked against filings. |
| D8 | Every change from v1 is logged line by line, so data built with v1 stays reconcilable. |

## How the migration was done

1.  **Baseline.**
    [`split_v1()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/split_v1.md)
    decomposed the frozen v1 file into the component tables without
    changing a value. Where v1 disagreed with itself, the most common
    value went to the variable and the rest were kept as xpath
    overrides. The v1 layout rebuilt from this baseline is
    byte-identical to v1 (a test checks it), and it is tagged
    `v2.0.0-baseline` on GitHub.
2.  **Evidence.** Filing evidence was built from the DuckDB builds: for
    every xpath and year, how many filings use it, how often it repeats,
    and a profile of its values. Checks turn this into an issues list
    (`reports/issues.html`: 29,937 cases).
3.  **Fixes, each logged.** Every fix is a script in `data-raw/fixes/`
    that edits the component tables and appends one change-log row per
    changed cell, with a reason and the evidence behind it. Reviewed
    cases that are correct as they are go to the validation log instead.
4.  **990-PF merge.** The PF concordance (`F990-PF-FULL.xlsx`) was split
    the same way and merged as form `F990PF`, then checked against the
    TY2023 PF filings and the 2023 schemas.

`reports/issues-resolved.html` lists every case of the issues list with
what was done and where it landed.

## What changed

``` r
ch[, .(rows = .N), by = .(level, change_type)][order(-rows)][1:12]
#>              level  change_type  rows
#>             <char>       <char> <int>
#>  1:          xpath          add 26676
#>  2:          xpath recode_value 23601
#>  3:       variable          add  8536
#>  4: xpath_override          add  2331
#>  5:          table          add   465
#>  6: xpath_override       remove   220
#>  7:       variable   move_table   213
#>  8:       variable       remove   150
#>  9:           part      relabel   113
#> 10:           part          add    88
#> 11:       variable       retype    67
#> 12:          xpath        remap    52
ch[, .N, by = affects_data]
#>    affects_data     N
#>          <char> <int>
#> 1:        FALSE 23763
#> 2:         TRUE 38964
```

`affects_data = TRUE` marks changes that change data built with v1
(remaps, splits, retypes, table moves, renames); `FALSE` marks metadata
such as labels, whitespace and the `NA` clean-up.

Today the concordance has 9,326 xpaths, 3,366 variables and 212 tables,
including the 990-PF (2,251 xpaths).

## Reconciling data built with v1

The crosswalk (`inst/extdata/changelog/v1_to_v2_crosswalk.csv`, rebuilt
with
[`v1_crosswalk()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/v1_crosswalk.md))
has one row per xpath in v1 or now, with the v1 and current variable and
table:

``` r
cw[, .N, by = status][order(-N)]
#>              status     N
#>              <char> <int>
#> 1: metadata_changed  6451
#> 2:            added  2463
#> 3:      moved_table   350
#> 4:         remapped    62
#> 5:          removed     1
cw[status == "remapped", .(xpath, v1_variable_name, variable_name)][1:5]
#>                                                                           xpath
#>                                                                          <char>
#> 1:    /Return/ReturnHeader/FilingSecurityInformation/AtSubmissionFilingDeviceId
#> 2: /Return/ReturnHeader/FilingSecurityInformation/FederalOriginalSubmissionIdDt
#> 3:                       /Return/ReturnData/IRS990/TypeOfOrgOtherDescriptionInd
#> 4:                             /Return/ReturnData/IRS990EZ/ScheduleBNotRequired
#> 5:                          /Return/ReturnData/IRS990EZ/ScheduleBNotRequiredInd
#>               v1_variable_name                  variable_name
#>                         <char>                         <char>
#> 1:     F9_00_IRS_SEC_DEVICE_ID F9_00_IRS_SEC_FILING_DEVICE_ID
#> 2: F9_00_IRS_SEC_SUBMISSION_ID  F9_00_IRS_SEC_SUBMISSION_DATE
#> 3:     F9_00_TYPE_ORG_OTH_DESC           F9_00_TYPE_ORG_OTH_X
#> 4:         F9_04_SCHED_B_REQ_X        F9_04_SCHED_B_NOT_REQ_X
#> 5:         F9_04_SCHED_B_REQ_X        F9_04_SCHED_B_NOT_REQ_X
```

To re-map a dataset built with v1, join its columns through the
crosswalk: `remapped` and `moved_table` rows move values, `added` rows
are new coverage, and `metadata_changed` rows need no data change. The
change-log rows with `affects_data = TRUE` explain each move.

## Changes that affect downstream code

- **Renamed variables**: names with trailing spaces or lower case,
  `SH_01_CHNA_DESC_RESOURCES_X` to `SH_05_...`, `SB_01_CONTRIBUTOR_TYPE`
  to `SB_01_CONTRIBUTOR_NUM`, and the 990-PF Part IX-A slots
  (`PF_09_CHARIT_ACT_DESC_1` … `_4`).
- **Renamed table**: `SO-T99-SUPPLEMENTAL-INFO` is now
  `SO-P00-T99-SUPPLEMENTAL-INFO`.
- **New and re-shaped tables**: supplemental-information tables and
  per-facility tables are MANY; new tables hold Schedule H facility
  policies, Schedule A hospitals and agricultural research colleges,
  group-return subordinates, Schedule C affiliated groups and the 990-PF
  Schedule B.
- **The 990-PF is included.** `concordance.csv` contains the 990-PF
  rows; parsers select a database with `concordance(form = "F990")` or
  `concordance(form = "F990PF")`.
- **New conventions for parsers**: `multi_value` fields join repeated
  values, and xpaths ending in `/@name` are XML attributes.
