# The component tables

The version 1 Master Concordance was one flat file with one row per
xpath. Every row repeated the attributes of its variable, table, part
and form, so the same fact was stored many times and could disagree with
itself. Version 2 decomposes that file into small **component tables**,
one per level of the hierarchy. Each fact is stored once, and the
familiar one-row-per-xpath file is generated from the components (see
[`vignette("building")`](https://nonprofit-open-data-collective.github.io/concordance990/articles/building.md)).

The component tables are CSV files in `inst/extdata/src/`. They are the
source of truth: edit these, never the generated `concordance.csv`.

## The hierarchy

    form        F990, F990PF, SCHED-A ... SCHED-R
     └ part     F9-P07  (Form 990 Part VII)
        └ table F9-P07-T01-COMPENSATION       one row per filing (ONE) or many (MANY)
           └ variable  F9_07_COMP_DTK_NAME_PERS
              └ xpath  /Return/ReturnData/IRS990/Form990PartVIISectionAGrp/PersonNm
                       /Return/ReturnData/IRS990/Form990PartVIISectionA/NamePerson   (2009-2012)

A **variable** is one research concept, a column in a table. It pools
every xpath that records that concept: the 990 and 990-EZ versions of a
line and the element names of different schema years (the IRS renamed
most elements in 2013). An **xpath** belongs to exactly one variable; a
variable belongs to exactly one table.

## The tables

| File | Key | Rows | Holds |
|:---|:---|:---|:---|
| forms.csv | form_id | 18 | Forms and schedules, with the XML root elements of each |
| parts.csv | part_id | 113 | Parts of each form (Part I, Part II, …), with titles |
| tables.csv | table_id | 214 | Relational tables: part, cardinality (ONE / MANY) |
| variables.csv | variable_name | 3,358 | Variables: table, label, description, data type, scope, location code, list-valued flag |
| xpaths.csv | xpath | 9,267 | Xpaths: variable, form line, schema versions and other xpath-level metadata |
| xpath_overrides.csv | xpath + field | 2,374 | Where one xpath of a variable differs from the variable value (kept from v1) |
| families.csv | family_id | 2 | Groups of alternate versions of one form line (e.g. \_V2 variables) |
| xpath_forms.csv | xpath + form_id | 16 | Form-specific mappings for returns parsed as a separate database |

### forms.csv

One row per form: the Form 990 (with the 990-EZ, whose lines are mapped
into the matching 990 parts), the 990-PF and Schedules A to R.
`xml_roots` lists the root elements of the form’s xpaths (for example
`IRS990`, `IRS990EZ`, `ReturnHeader` and attachments such as
`CompensationExplanation` for the 990). The validation rule R08 checks
every xpath against these roots.

### parts.csv and tables.csv

A part is a numbered part of a form (`F9-P08`: Form 990 Part VIII,
Statement of Revenue). Parts `P00` hold the heading of a form; parts
`P99` hold lines from earlier versions of a schedule, or the auxiliary
schedules of the 990-PF.

A table (`rdb_table`) is the unit a parser writes:

- **ONE** tables have one row per filing (`F9-P08-T00-REVENUE`).
- **MANY** tables have one row per repeating group in a filing: a person
  in Part VII, a grant recipient in Schedule I, a hospital facility in
  Schedule H (`F9-P07-T01-COMPENSATION`). By convention `T00` tables are
  ONE and `T01`+ tables MANY; `T99` tables hold supplemental
  explanations.

``` r
cc_tables()[, .N, by = .(form = form_id, cardinality)][order(form, cardinality)][1:8]
#>       form cardinality     N
#>     <char>      <char> <int>
#> 1:    F990        MANY     9
#> 2:    F990         ONE    20
#> 3:  F990PF        MANY    50
#> 4:  F990PF         ONE    27
#> 5: SCHED-A        MANY     4
#> 6: SCHED-A         ONE     6
#> 7: SCHED-B        MANY     3
#> 8: SCHED-B         ONE     2
```

### variables.csv

``` r
cc_variables()[variable_name %in% c("F9_08_REV_TOT_CY", "F9_06_DISCLOSURE_STATES_FILED"),
               .(variable_name, table_id, label, data_type_simple, variable_scope, multi_value)]
#>                    variable_name              table_id
#>                           <char>                <char>
#> 1: F9_06_DISCLOSURE_STATES_FILED F9-P06-T00-GOVERNANCE
#>                                     label data_type_simple variable_scope
#>                                    <char>           <char>         <char>
#> 1: States where required to file Form 990             text             PZ
#>    multi_value
#>         <char>
#> 1:        TRUE
```

- **Names** follow `FF_PP_NAME`: a two-character form code (`F9` Form
  990/990-EZ, `SA`-`SR` Schedules A to R, `PF` Form 990-PF), the
  two-digit part, and a descriptive name, at most 32 characters. 990-PF
  auxiliary schedules use `PF_AXnn_` for schedule `nn` (table
  `PF-P99-Tnn-...`).
- **`variable_scope`**: `HD` header (shared by all returns), `PC` full
  990 only, `EZ` 990-EZ only, `PZ` both, `PF` 990-PF.
- **`data_type_simple`**: `numeric`, `text`, `checkbox` or `date`.
  Identifiers (EIN, ZIP, phone) are text so leading zeros survive.
- **`multi_value`**: `TRUE` for fields whose element repeats inside a
  one-row table (states where the return is filed, foreign countries);
  parsers join the values into one cell.
- **`family_id`**: the variable itself, or the anchor variable of a
  family of alternate versions of one line (`families.csv`).

### xpaths.csv

One row per xpath, the primary key of the concordance. Besides the
variable it records the form, form type (`PC`, `EZ`, `SZ` schedule,
`PF`), form part and line, the IRS data type, the schema versions it
appears in, and a free-text `production_rule` where a value needs
special handling (for example the TY2009 501(c)(3) flag, which is an
attribute of `Organization501c`). Xpaths ending in `/@name` are XML
attributes.

`v1_order` keeps the row order of the v1 file, so the generated file
stays in the familiar order.

### xpath_overrides.csv

When v1 was split, each variable-level column got the most common value
across the variable’s xpaths. Where an xpath disagreed (a different
description, a different table), the difference was kept here instead of
being lost. The build applies overrides after the join. Resolving a
conflict means deleting its override row, with a change-log entry.

``` r
cc_xpaths()[, .N]; read_src()$xpath_overrides[, .N, by = field][order(-N)]
#> [1] 9267
#>                   field     N
#>                  <char> <int>
#> 1:          description  2033
#> 2:                label   257
#> 3:            rdb_table    57
#> 4:       variable_scope    14
#> 5: location_code_family    13
```

### xpath_forms.csv

Some attachments are filed with every form (compensation explanations,
reasonable-cause statements). In 990 returns they belong to 990
variables; in 990-PF returns, which are parsed as a separate database,
to PF variables. An xpath has one primary mapping in `xpaths.csv`;
`xpath_forms.csv` gives the mapping for another form, applied by
`concordance(form = "F990PF")`.

``` r
read_src()$xpath_forms[1:3]
#>                                                                                     xpath
#>                                                                                    <char>
#> 1:                              /Return/ReturnData/ReasonableCauseExplanation/Explanation
#> 2:                           /Return/ReturnData/ReasonableCauseExplanation/ExplanationTxt
#> 3: /Return/ReturnData/CompensationExplanation/Compensation/BusinessName/BusinessNameLine1
#>    form_id             variable_name
#>     <char>                    <char>
#> 1:  F990PF PF_AX44_CAUSE_EXPLANATION
#> 2:  F990PF PF_AX44_CAUSE_EXPLANATION
#> 3:  F990PF  PF_AX09_COMP_NAME_ORG_L1
```

## Around the component tables

| File | Role |
|----|----|
| `inst/extdata/changelog/changes.csv` | Every cell changed since v1, with reason and evidence ([`vignette("migration")`](https://nonprofit-open-data-collective.github.io/concordance990/articles/migration.md)) |
| `inst/extdata/changelog/v1_to_v2_crosswalk.csv` | Each v1 xpath with its v1 and current variable and table |
| `inst/extdata/validation/validation_log.csv` | Reviewer decisions on flagged cases ([`vignette("testing-updates")`](https://nonprofit-open-data-collective.github.io/concordance990/articles/testing-updates.md)) |
| `inst/extdata/validation/rule_ceilings.csv` | Ceilings for structural rules still being fixed (none at present) |
| `inst/extdata/v1/concordance-v1.csv` | The frozen v1 file, byte for byte |
| `concordance.csv`, `concordance.xlsx` | Generated: all xpaths in the v1 column layout |
| `concordance-990pf.csv` | Generated: the 990-PF view |

## Reading the tables

``` r
x <- merge(cc_xpaths()[, .(xpath, variable_name)],
           cc_variables()[, .(variable_name, table_id, label)], by = "variable_name")
x <- merge(x, cc_tables()[, .(table_id, cardinality, part_id)], by = "table_id")
x <- merge(x, cc_parts()[, .(part_id, title)], by = "part_id")
x[variable_name == "F9_01_REV_TOT_CY", .(xpath, table_id, cardinality, title)]
#>                                                             xpath
#>                                                            <char>
#> 1:                       /Return/ReturnData/IRS990EZ/TotalRevenue
#> 2:                    /Return/ReturnData/IRS990EZ/TotalRevenueAmt
#> 3:            /Return/ReturnData/IRS990EZ/TotalRevenueCurrentYear
#> 4:                    /Return/ReturnData/IRS990/CYTotalRevenueAmt
#> 5: /Return/ReturnData/IRS990/Form990PartI/TotalRevenueCurrentYear
#> 6:              /Return/ReturnData/IRS990/TotalRevenueCurrentYear
#>              table_id cardinality            title
#>                <char>      <char>           <char>
#> 1: F9-P01-T00-SUMMARY         ONE Part I - Summary
#> 2: F9-P01-T00-SUMMARY         ONE Part I - Summary
#> 3: F9-P01-T00-SUMMARY         ONE Part I - Summary
#> 4: F9-P01-T00-SUMMARY         ONE Part I - Summary
#> 5: F9-P01-T00-SUMMARY         ONE Part I - Summary
#> 6: F9-P01-T00-SUMMARY         ONE Part I - Summary
```

[`concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/concordance.md)
does this join (and applies the overrides) for you.
