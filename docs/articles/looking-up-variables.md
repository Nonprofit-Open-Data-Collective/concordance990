# Looking up tables and variables

The research databases built from the concordance have hundreds of
tables and thousands of variables.
[`dd()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/dd.md)
answers the question you have while working with them: *what is this
column?* Give it a table name or a variable name and it returns the data
dictionary entry: label, description, the line of the form it comes from
(location code), which returns report it (scope), the data type, and how
many xpaths are pooled into it.

[`dd()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/dd.md)
reads the same dictionary as
[`data_dictionary()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/data_dictionary.md),
which returns the whole dictionary of one database. The [Form
990](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.md)
and
[990-PF](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.md)
dictionary pages are built from it too, so the three always agree.

## Look up a variable

A variable prints as a record card:

``` r
print(dd("F9_01_REV_TOT_CY"))
#> ── F9_01_REV_TOT_CY ──────────────────────────────────────────────────────────────────────
#>   Label       Total revenue - current year
#>   Table       F9-P01-T00-SUMMARY (ONE)
#>   Part        Part I - Summary
#>   Location    F990-PC-PART-01-LINE-12-CY
#>   Type        numeric
#>   Scope       PZ - 990 and 990-EZ
#>   Database    F990
#>   Forms       EZ;PC
#>   Xpaths      6
#>   Description
#>     Total revenue - CY
```

- **Location** is the form, return type, part and line the value comes
  from (`F990-PC-PART-01-LINE-12-CY` is Form 990, Part I, line 12,
  current year).
- **Scope** says which returns have the variable: `PC` full 990 only,
  `EZ` 990-EZ only, `PZ` both, `HD` the return header shared by all
  returns, `PF` the 990-PF. A `PC` variable is missing for 990-EZ
  filers.
- **Database** is the research database the variable belongs to (`F990`
  or `F990PF`). Header and Schedule B variables belong to both.
- **Forms** are the return types whose xpaths feed the variable, and
  **Xpaths** counts them.

Names are matched exactly, then ignoring case, so
`dd("f9_01_rev_tot_cy")` works too. Several variables print as several
cards:

``` r
print(dd(c("F9_01_REV_TOT_CY", "F9_01_EXP_TOT_CY"), fields = c("label", "location_code_family")))
#> ── F9_01_REV_TOT_CY ──────────────────────────────────────────────────────────────────────
#>   Label       Total revenue - current year
#>   Location    F990-PC-PART-01-LINE-12-CY
#> 
#> ── F9_01_EXP_TOT_CY ──────────────────────────────────────────────────────────────────────
#>   Label       Total expenses - current year
#>   Location    F990-PC-PART-01-LINE-18-CY
```

`fields` picks the columns to return; `fields = "all"` returns every
column of the dictionary, and `names(dd("F9_00_ORG_EIN"))` lists them.

### Where does the value come from? Ask for the xpaths

The xpaths are not reported by default. Set `xpaths = TRUE` to list
every xpath pooled into the variable, with the schema years it appears
in and the percent of filers of that return type who report it:

``` r
print(dd("F9_01_REV_TOT_CY", xpaths = TRUE))
#> ── F9_01_REV_TOT_CY ──────────────────────────────────────────────────────────────────────
#>   Label       Total revenue - current year
#>   Table       F9-P01-T00-SUMMARY (ONE)
#>   Part        Part I - Summary
#>   Location    F990-PC-PART-01-LINE-12-CY
#>   Type        numeric
#>   Scope       PZ - 990 and 990-EZ
#>   Database    F990
#>   Forms       EZ;PC
#>   Xpaths      6
#>   Description
#>     Total revenue - CY
#>   Xpaths
#>     form  years      % filers  xpath
#>     PC    2009-2012     100.0  /Return/ReturnData/IRS990/TotalRevenueCurrentYear
#>     EZ    2009-2012      99.0  /Return/ReturnData/IRS990EZ/TotalRevenue
#>     PC    2013-2024     100.0  /Return/ReturnData/IRS990/CYTotalRevenueAmt
#>     EZ    2013-2024      98.1  /Return/ReturnData/IRS990EZ/TotalRevenueAmt
#>     PC    -                 -  /Return/ReturnData/IRS990/Form990PartI/TotalRevenueCurrentYear
#>     EZ    -                 -  /Return/ReturnData/IRS990EZ/TotalRevenueCurrentYear
```

The IRS renamed most elements in 2013, so a variable usually pools a
2009-2012 xpath and a 2013-2024 xpath, for each return type. Xpaths with
no years (`-`) are in the IRS schemas but have not been seen in filings.

### Questions about the raw data? Open the validation page

Every variable has a validation page built from the e-filed returns
(TY2009-2024): the value checks and flags with the reviewer’s decisions,
the xpaths and the years each was used, filings and fill rate by tax
year, a summary of the values, and example filings with links to the
XML. `report = TRUE` opens it in the browser:

``` r
dd("F9_01_REV_TOT_CY", report = TRUE)
```

[`variable_page_url()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/variable_page_url.md)
gives the address without opening it:

``` r
variable_page_url("F9_01_REV_TOT_CY")
#> [1] "https://nonprofit-open-data-collective.github.io/concordance990/variables/F9/F9_01_REV_TOT_CY.html"
```

### Families of alternate versions

A few lines of the form are asked differently on the 990 and the 990-EZ,
so they are separate variables linked in a **family**. The card shows
the family and its definition:

``` r
print(dd("F9_04_SCHED_B_REQ_X"))
#> ── F9_04_SCHED_B_REQ_X ───────────────────────────────────────────────────────────────────
#>   Label       Required to complete Schedule B [x]
#>   Table       F9-P04-T00-REQUIRED-SCHEDULES (ONE)
#>   Part        Part IV - Checklist of Required Schedules
#>   Location    F990-PC-PART-04-LINE-02
#>   Type        checkbox
#>   Scope       PZ - 990 and 990-EZ
#>   Database    F990
#>   Forms       PC
#>   Xpaths      3
#>   Family      F9_04_SCHED_B_REQ_X - Schedule B required
#>   Pooled with F9_04_SCHED_B_NOT_REQ_X
#>               Whether Schedule B (contributors) is required. The 990 answers yes/no
#>               (F9_04_SCHED_B_REQ_X); the 990-EZ checks a box when it is NOT required
#>               (F9_04_SCHED_B_NOT_REQ_X), so the two have opposite polarity.
#>   Description
#>     Schedule B required?
```

## Look up a table

A table prints as a listing of its variables, in the order they appear
on the form, under a header with the part, the database and whether the
table has one row per filing (`ONE`) or one row per repeated item
(`MANY`):

``` r
print(dd("F9-P07-T02-CONTRACTORS"))
#> ── F9-P07-T02-CONTRACTORS ────────────────────────────────────────────────────────────────
#> Part VII - Compensation of Officers, Directors, Trustees, Key Employees, Highest
#> Compensated Employees, and Independent Contractors | F990 | one row per repeated item |
#> 11 variables
#> 
#> variable                      location                                 type     scope
#> F9_07_COMP_KONTR_ADDR_CITY    F990-PC-PART-07-SECTION-B-LINE-01-COL-A  text     PZ
#>     Independent contractor city
#> F9_07_COMP_KONTR_ADDR_CNTR    F990-PC-PART-07-SECTION-B-LINE-01-COL-A  text     PZ
#>     Independent contractor country
#> F9_07_COMP_KONTR_ADDR_L1      F990-PC-PART-07-SECTION-B-LINE-01-COL-A  text     PZ
#>     Independent contractor street address line 1
#> F9_07_COMP_KONTR_ADDR_L2      F990-PC-PART-07-SECTION-B-LINE-01-COL-A  text     PZ
#>     Independent contractor street address line 2
#> F9_07_COMP_KONTR_ADDR_STATE   F990-PC-PART-07-SECTION-B-LINE-01-COL-A  text     PZ
#>     Independent contractor state
#> F9_07_COMP_KONTR_ADDR_ZIP     F990-PC-PART-07-SECTION-B-LINE-01-COL-A  text     PZ
#>     Independent contractor zip
#> F9_07_COMP_KONTR_NAME_ORG_L1  F990-PC-PART-07-SECTION-B-LINE-01-COL-A  text     PZ
#>     Independent contractor business name line 1
#> F9_07_COMP_KONTR_NAME_ORG_L2  F990-PC-PART-07-SECTION-B-LINE-01-COL-A  text     PZ
#>     Independent contractor business name line 2
#> F9_07_COMP_KONTR_NAME_PERS    F990-PC-PART-07-SECTION-B-LINE-01-COL-A  text     PZ
#>     Independent contractor person name
#> F9_07_COMP_KONTR_DESC_SVC     F990-PC-PART-07-SECTION-B-LINE-01-COL-B  text     PZ
#>     Independent contractor description of services
#> F9_07_COMP_KONTR_COMP         F990-PC-PART-07-SECTION-B-LINE-01-COL-C  numeric  PZ
#>     Independent contractor compensation
```

The listing fits the console. When the console is too narrow for the
label to share a line with the other columns, the label moves under each
row, as above. In a wider console it is a column:

``` r
print(dd("F9-P07-T02-CONTRACTORS"), n = 4, width = 140)
#> ── F9-P07-T02-CONTRACTORS ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#> Part VII - Compensation of Officers, Directors, Trustees, Key Employees, Highest Compensated Employees, and Independent Contractors | F990
#> | one row per repeated item | 11 variables
#> 
#> variable                    label                                         location                                 type  scope
#> F9_07_COMP_KONTR_ADDR_CITY  Independent contractor city                   F990-PC-PART-07-SECTION-B-LINE-01-COL-A  text  PZ
#> F9_07_COMP_KONTR_ADDR_CNTR  Independent contractor country                F990-PC-PART-07-SECTION-B-LINE-01-COL-A  text  PZ
#> F9_07_COMP_KONTR_ADDR_L1    Independent contractor street address line 1  F990-PC-PART-07-SECTION-B-LINE-01-COL-A  text  PZ
#> F9_07_COMP_KONTR_ADDR_L2    Independent contractor street address line 2  F990-PC-PART-07-SECTION-B-LINE-01-COL-A  text  PZ
#> # ... 7 more variables; use print(x, n = Inf) to see all
```

Long tables show the first 50 variables; `n` changes that.
`description = TRUE` prints each variable’s description under it:

``` r
print(dd("F9-P01-T00-SUMMARY"), n = 3, description = TRUE)
#> ── F9-P01-T00-SUMMARY ────────────────────────────────────────────────────────────────────
#> Part I - Summary | F990 | one row per filing | 41 variables
#> 
#> variable                       location                 type      scope
#> F9_01_ACT_GVRN_ACT_MISSION     F990-PC-PART-01-LINE-01  text      PC
#>     Mission or most significant activities
#>       Organization mission or most signif activities
#> F9_01_ACT_GVRN_TERMIN_KONTR_X  F990-PC-PART-01-LINE-02  checkbox  PC
#>     Termination or contraction [x]
#>       Termination or contraction
#> F9_01_ACT_GVRN_NUM_VOTE_MEMB   F990-PC-PART-01-LINE-03  numeric   PC
#>     Number of voting members of governing body
#>       Number of voting members of gov body
#> # ... 38 more variables; use print(x, n = Inf) to see all
```

With `xpaths = TRUE` a table lookup lists the xpaths of the variables
shown.

A multi-value variable (`multi`) is a field that repeats inside a
one-row table, such as the states where the return is filed; parsers
join the values into one cell. The column only appears when the table
has one.

## When a name is not found

A misspelled name is an error that suggests the closest names:

``` r
dd("F9_00_EIN")
#> Error:
#> ! No table or variable 'F9_00_EIN'. Did you mean: F9_00_ORG_EIN, F9_00_AFFIL_EIN, F9_04_DAF_X, F9_04_LTD_X, F9_04_DOA_X?
dd("F9-P01-T00-SUMARY")
#> Error:
#> ! No table or variable 'F9-P01-T00-SUMARY'. Did you mean: F9-P01-T00-SUMMARY, F9-P01-T00-SUMMARY-EZ, F9-P00-T00-HEADER, F9-P02-T00-SIGNATURE, F9-P11-T00-ASSETS?
```

`form` limits the search to one database:

``` r
dd("PF-P01-T00-REVENUE-EXPENSE", form = "F990")
#> Error:
#> ! No table or variable 'PF-P01-T00-REVENUE-EXPENSE' in F990. Did you mean: F9-P08-T02-REVENUE-MISC, F9-P08-T00-REVENUE, F9-P08-T01-REVENUE-PROGRAMS, F9-P09-T00-EXPENSES, SF-P01-T00-FRGN-ACTS?
```

One call looks up either tables or variables. To see a variable in its
table, look up the variable, then its table:

``` r
v <- dd("F9_06_DISCLOSURE_STATES_FILED")
v$rdb_table
#> [1] "F9-P06-T00-GOVERNANCE"
```

## The result is a data.table

What prints is formatting only.
[`dd()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/dd.md)
returns a data.table, one row per variable, so you can filter it, join
it to your data or write it out:

``` r
x <- dd("F9-P01-T00-SUMMARY")
x[variable_scope == "PZ", .(variable_name, label)][1:5]
#>                variable_name                                                      label
#>                       <char>                                                     <char>
#> 1:    F9_01_REV_CONTR_TOT_CY                    Contributions and grants - current year
#> 2: F9_01_REV_CONTR_TOT_CY_V2 Contributions, gifts, grants, and similar amounts received
#> 3:     F9_01_REV_PROG_TOT_CY                     Program service revenue - current year
#> 4:   F9_01_REV_INVEST_TOT_CY                           Investment income - current year
#> 5:          F9_01_REV_OTH_CY                               Other revenue - current year
```

Once you select columns the result prints as a plain data.table, as
above. The xpaths are in an attribute:

``` r
xp <- attr(dd("F9_01_REV_TOT_CY", xpaths = TRUE), "xpaths")
xp[, .(form_type, earliest_version, latest_version, pct_filers_reporting)]
#>    form_type earliest_version latest_version pct_filers_reporting
#>       <char>           <char>         <char>               <char>
#> 1:        PC             2009           2012                  100
#> 2:        EZ             2009           2012                   99
#> 3:        PC             2013           2024                  100
#> 4:        EZ             2013           2024                 98.1
#> 5:        PC                                                     
#> 6:        EZ
```

To find variables by keyword, search the whole dictionary with
[`data_dictionary()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/data_dictionary.md)
and pass the names to
[`dd()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/dd.md):

``` r
d <- data_dictionary("F990")
hits <- d[grepl("volunteer", label, ignore.case = TRUE), variable_name]
print(dd(hits, fields = c("label", "rdb_table")))
#> ── F9_01_ACT_GVRN_VOL_TOT ────────────────────────────────────────────────────────────────
#>   Label       Total number of volunteers
#>   Table       F9-P01-T00-SUMMARY
#> 
#> ── SC_01_POLI_VOL_HOURS ──────────────────────────────────────────────────────────────────
#>   Label       Volunteer hours for political campaign activities
#>   Table       SC-P01-T00-LOBBY
#> 
#> ── SC_02_LOB_ACT_VOL_X ───────────────────────────────────────────────────────────────────
#>   Label       Lobbied through volunteers [x]
#>   Table       SC-P02-T00-LOBBY
#> 
#> ── SD_02_EMT_STAFF_HOURS_ENFORCE ─────────────────────────────────────────────────────────
#>   Label       Staff and volunteer hours devoted to monitoring, inspecting, handling of
#>               violations, and enforcing conservation easements
#>   Table       SD-P02-T00-CONSERV-EASEMENTS
#> 
#> ── SG_03_GAMING_VOL_BINGO_X ──────────────────────────────────────────────────────────────
#>   Label       Volunteer labor for bingo [x]
#>   Table       SG-P03-T00-GAMING
#> 
#> ── SG_03_GAMING_VOL_PCT_BINGO ────────────────────────────────────────────────────────────
#>   Label       Volunteer labor percentage for bingo
#>   Table       SG-P03-T00-GAMING
#> 
#> ── SG_03_GAMING_VOL_PCT_PTAP ─────────────────────────────────────────────────────────────
#>   Label       Volunteer labor percentage for pull tabs/instant bingo/progressive bingo
#>   Table       SG-P03-T00-GAMING
#> 
#> ── SG_03_GAMING_VOL_PTAP_X ───────────────────────────────────────────────────────────────
#>   Label       Volunteer labor for pull tabs/instant bingo/progressive bingo [x]
#>   Table       SG-P03-T00-GAMING
#> 
#> ── SG_03_GAMING_VOL_OTH_X ────────────────────────────────────────────────────────────────
#>   Label       Volunteer labor for other gaming [x]
#>   Table       SG-P03-T00-GAMING
#> 
#> ── SG_03_GAMING_VOL_PCT_OTH ──────────────────────────────────────────────────────────────
#>   Label       Volunteer labor percentage for other gaming
#>   Table       SG-P03-T00-GAMING
```

## In R Markdown

Printed automatically in an R Markdown document (without
[`print()`](https://rdrr.io/r/base/print.html)), a
[`dd()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/dd.md)
result renders as markdown tables instead of console text, so the same
call documents variables in a report:

``` r
dd("F9_01_REV_TOT_CY", xpaths = TRUE)
```

**F9_01_REV_TOT_CY**

| field                | value                        |
|:---------------------|:-----------------------------|
| form_id              | F990                         |
| part_id              | F9-P01                       |
| part_title           | Part I - Summary             |
| rdb_table            | F9-P01-T00-SUMMARY           |
| rdb_relationship     | ONE                          |
| label                | Total revenue - current year |
| description          | Total revenue - CY           |
| data_type_simple     | numeric                      |
| money_field          | TRUE                         |
| blank_meaning        | implicit_zero                |
| variable_scope       | PZ                           |
| location_code_family | F990-PC-PART-01-LINE-12-CY   |
| n_xpaths             | 6                            |
| form_types           | EZ;PC                        |
| database             | F990                         |

Xpaths:

| form | years | % filers | xpath |
|:---|:---|:---|:---|
| PC | 2009-2012 | 100 | `/Return/ReturnData/IRS990/TotalRevenueCurrentYear` |
| EZ | 2009-2012 | 99 | `/Return/ReturnData/IRS990EZ/TotalRevenue` |
| PC | 2013-2024 | 100 | `/Return/ReturnData/IRS990/CYTotalRevenueAmt` |
| EZ | 2013-2024 | 98.1 | `/Return/ReturnData/IRS990EZ/TotalRevenueAmt` |
| PC |  |  | `/Return/ReturnData/IRS990/Form990PartI/TotalRevenueCurrentYear` |
| EZ |  |  | `/Return/ReturnData/IRS990EZ/TotalRevenueCurrentYear` |

``` r
dd("F9-P07-T02-CONTRACTORS", fields = c("label", "data_type_simple"))
```

**F9-P07-T02-CONTRACTORS**: Part VII - Compensation of Officers,
Directors, Trustees, Key Employees, Highest Compensated Employees, and
Independent Contractors (11 variables, one row per repeated item)

| variable_name | label | data_type_simple |
|:---|:---|:---|
| F9_07_COMP_KONTR_ADDR_CITY | Independent contractor city | text |
| F9_07_COMP_KONTR_ADDR_CNTR | Independent contractor country | text |
| F9_07_COMP_KONTR_ADDR_L1 | Independent contractor street address line 1 | text |
| F9_07_COMP_KONTR_ADDR_L2 | Independent contractor street address line 2 | text |
| F9_07_COMP_KONTR_ADDR_STATE | Independent contractor state | text |
| F9_07_COMP_KONTR_ADDR_ZIP | Independent contractor zip | text |
| F9_07_COMP_KONTR_NAME_ORG_L1 | Independent contractor business name line 1 | text |
| F9_07_COMP_KONTR_NAME_ORG_L2 | Independent contractor business name line 2 | text |
| F9_07_COMP_KONTR_NAME_PERS | Independent contractor person name | text |
| F9_07_COMP_KONTR_DESC_SVC | Independent contractor description of services | text |
| F9_07_COMP_KONTR_COMP | Independent contractor compensation | numeric |
