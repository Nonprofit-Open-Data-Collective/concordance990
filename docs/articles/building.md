# How the concordance tables are built

The package generates the one-row-per-xpath concordance, in the v1
layout and in a v2 layout, from the component tables described in
[`vignette("table-structure")`](https://nonprofit-open-data-collective.github.io/concordance990/articles/table-structure.md).
This page shows the steps and the functions data users and parsers call.

## From components to one row per xpath

[`build_concordance()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/build_concordance.md)
does five things:

1.  **Join** each xpath to its variable (`xpaths.csv` +
    `variables.csv`). Variable-level attributes (table, label,
    description, location code, scope, data type) come from the
    variable.
2.  **Apply the xpath overrides**: where v1 recorded a different value
    for one xpath, that value replaces the variable’s
    (`xpath_overrides.csv`).
3.  **Add the table attributes**: cardinality (`rdb_relationship`) and
    part.
4.  **Select a form**, if asked (below).
5.  **Order** the rows as in v1 (`v1_order`, new xpaths at the end) and
    select the columns: `format = "v1"` returns the v1 layout
    (`concordance_columns`: the v1 columns, with `versions` renamed
    `schema_versions`, `earliest_version` and `pct_filers_reporting`
    added and `duplicated` dropped); `format = "v2"` adds `family_id`,
    `part_id` and `multi_value`.

``` r
cc <- build_concordance(format = "v2")
dim(cc)
#> [1] 9326   27
cc[variable_name == "F9_01_REV_TOT_CY", .(xpath, rdb_table, rdb_relationship, form_type)]
#>                                                             xpath
#>                                                            <char>
#> 1:                       /Return/ReturnData/IRS990EZ/TotalRevenue
#> 2:                    /Return/ReturnData/IRS990EZ/TotalRevenueAmt
#> 3:            /Return/ReturnData/IRS990EZ/TotalRevenueCurrentYear
#> 4:                    /Return/ReturnData/IRS990/CYTotalRevenueAmt
#> 5: /Return/ReturnData/IRS990/Form990PartI/TotalRevenueCurrentYear
#> 6:              /Return/ReturnData/IRS990/TotalRevenueCurrentYear
#>             rdb_table rdb_relationship form_type
#>                <char>           <char>    <char>
#> 1: F9-P01-T00-SUMMARY              ONE        EZ
#> 2: F9-P01-T00-SUMMARY              ONE        EZ
#> 3: F9-P01-T00-SUMMARY              ONE        EZ
#> 4: F9-P01-T00-SUMMARY              ONE        PC
#> 5: F9-P01-T00-SUMMARY              ONE        PC
#> 6: F9-P01-T00-SUMMARY              ONE        PC
```

## One database per form

ef2 builds two research databases from the e-file XML: one for 990 and
990-EZ returns (with their schedules) and one for 990-PF returns. Each
gets its own view of the concordance:

``` r
f990 <- concordance(form = "F990")      # 990 and 990-EZ returns
f990pf <- concordance(form = "F990PF")  # 990-PF returns
c(all = nrow(concordance()), F990 = nrow(f990), F990PF = nrow(f990pf))
#>    all   F990 F990PF 
#>   9326   7075   2524
```

The 990-PF view holds the PF xpaths, the return header (the same
`F9_00_` variables as the 990) and Schedule B, which foundations also
file. Attachments filed with every form map to PF variables there
(`xpath_forms.csv`):

``` r
x <- "/Return/ReturnData/ReasonableCauseExplanation/ExplanationTxt"
rbind(f990[xpath == x, .(view = "F990", variable_name, rdb_table)],
      f990pf[xpath == x, .(view = "F990PF", variable_name, rdb_table)])
#>      view              variable_name             rdb_table
#>    <char>                     <char>                <char>
#> 1:   F990 F9_00_REASONABLE_CAUSE_TXT     F9-P00-T00-HEADER
#> 2: F990PF  PF_AX44_CAUSE_EXPLANATION PF-P99-T00-AUXILLIARY
```

## Functions for parsers and data users

``` r
# the minimal mapping a parser needs
head(xpath_map(form = "F990"), 3)
#>                                                xpath          variable_name
#>                                               <char>                 <char>
#> 1:                      /Return/ReturnHeader/BuildTS F9_00_BUILD_TIME_STAMP
#> 2: /Return/ReturnHeader/Filer/BusinessNameControlTxt    F9_00_NAME_ORG_CTRL
#> 3:            /Return/ReturnHeader/Filer/NameControl    F9_00_NAME_ORG_CTRL
#>            rdb_table rdb_relationship form_type multi_value
#>               <char>           <char>    <char>      <char>
#> 1: F9-P00-T00-HEADER              ONE        PC            
#> 2: F9-P00-T00-HEADER              ONE        PC            
#> 3: F9-P00-T00-HEADER              ONE        PC

# one-to-many tables
head(table_names("MANY"))
#> [1] "F9-P00-T00-HEADER"      "F9-P01-T00-SUMMARY"     "F9-P01-T00-SUMMARY-EZ" 
#> [4] "F9-P02-T00-SIGNATURE"   "F9-P03-T00-MISSION"     "F9-P03-T00-PROGRAM-ONE"

# clean xpaths from an XML document and look them up
lookup_xpath("/irs:Return/irs:ReturnData/IRS990/Form990PartVIISectionAGrp[2]/PersonNm")
#>                                                           xpath
#>                                                          <char>
#> 1: /Return/ReturnData/IRS990/Form990PartVIISectionAGrp/PersonNm
#>                                                                  xpath_raw
#>                                                                     <char>
#> 1: /irs:Return/irs:ReturnData/IRS990/Form990PartVIISectionAGrp[2]/PersonNm
#>               variable_name               rdb_table rdb_relationship form_type
#>                      <char>                  <char>           <char>    <char>
#> 1: F9_07_COMP_DTK_NAME_PERS F9-P07-T01-COMPENSATION             MANY        PC
#>    multi_value
#>         <char>
#> 1:

# one row per variable, in form order
dd <- data_dictionary("F990")
dd[part_id == "F9-P01", .(variable_name, label, data_type_simple)][1:5]
#>                       variable_name
#>                              <char>
#> 1:       F9_01_ACT_GVRN_ACT_MISSION
#> 2:    F9_01_ACT_GVRN_TERMIN_KONTR_X
#> 3:     F9_01_ACT_GVRN_NUM_VOTE_MEMB
#> 4: F9_01_ACT_GVRN_NUM_VOTE_MEMB_IND
#> 5:          F9_01_ACT_GVRN_EMPL_TOT
#>                                                     label data_type_simple
#>                                                    <char>           <char>
#> 1:                 Mission or most significant activities             text
#> 2:                         Termination or contraction [x]         checkbox
#> 3:             Number of voting members of governing body          numeric
#> 4: Number of independent voting members of governing body          numeric
#> 5:                              Total number of employees          numeric
```

[`cc_forms()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/cc_tables.md),
[`cc_parts()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/cc_tables.md),
[`cc_tables()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/cc_tables.md),
[`cc_variables()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/cc_tables.md)
and
[`cc_xpaths()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/cc_tables.md)
return the component tables themselves.

## How a parser uses the concordance

For each return, a parser flattens the XML into (xpath, value) pairs,
removes the `[n]` indexes and namespace prefixes
([`normalize_xpath()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/normalize_xpath.md)),
joins the xpaths to its database’s concordance view, and writes the
values into tables:

- In a **ONE** table each variable is one column of the filing’s row.
- In a **MANY** table each instance of the repeating group is a row.
- A **`multi_value`** variable can repeat inside a one-row table (for
  example the states where the return is filed); its values are joined
  into one cell.
- Xpaths ending in **`/@name`** are XML attributes of the element before
  them (for example the 501(c) subsection of `Organization501c`).
- A **`production_rule`** on an xpath describes any other special
  handling.

## Generated files

`data-raw/build-concordance.R` writes the files kept at the top of the
repository and stops if anything is wrong:

1.  [`check_changelog()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/check_changelog.md):
    every difference from v1 is in the change log, and replaying the log
    on v1 reproduces the current tables.
2.  [`validation_summary()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/validation_summary.md):
    every structural rule passes.
3.  `concordance.csv` and `concordance.xlsx`: all xpaths, v1 layout.
4.  `concordance-990pf.csv`: the 990-PF view, v1 layout.
5.  `inst/extdata/changelog/v1_to_v2_crosswalk.csv`:
    [`v1_crosswalk()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/v1_crosswalk.md).

``` r
source("data-raw/build-concordance.R")
# or, for one file
write_concordance(build_concordance(format = "v1", form = "F990PF"), "concordance-990pf.csv")
```
