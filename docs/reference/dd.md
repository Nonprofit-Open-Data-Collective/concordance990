# Look up the data dictionary

Returns the data dictionary attributes of one or more tables, or of one
or more variables: label, description, location code, scope, data type
and so on. The result prints as a compact listing for a table and as a
record card for a variable; in R Markdown it renders as markdown tables.

Names are matched exactly, then ignoring case. A name that matches
nothing raises an error that suggests the closest names.

## Usage

``` r
dd(x, form = NULL, fields = NULL, xpaths = FALSE)

# S3 method for class 'cc_dd'
print(x, n = 50L, description = FALSE, width = getOption("width"), ...)
```

## Arguments

- x:

  Character vector of table ids (`"F9-P01-T00-SUMMARY"`) or of variable
  names (`"F9_01_REV_TOT_CY"`). All the names in one call must be of one
  kind.

- form:

  `NULL` to search both databases, or `"F990"` / `"F990PF"`.

- fields:

  Columns to return. `NULL` gives the default set for the kind of
  lookup, `"all"` gives every column of the dictionary.

- xpaths:

  If `TRUE`, also list the xpaths pooled into each variable with the
  schema years they appear in and the percent of filers reporting them.
  They are stored in the `"xpaths"` attribute of the result.

- n:

  Maximum number of rows to print for a table lookup.

- description:

  Print each variable's description under its row in a table lookup.

- width:

  Console width to fit.

- ...:

  Ignored.

## Value

A data.table of class `cc_dd`, one row per variable.

## See also

[`data_dictionary()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/data_dictionary.md)
for the whole dictionary of a database.

## Examples

``` r
dd("F9-P01-T00-SUMMARY")
#> ── F9-P01-T00-SUMMARY ──────────────────────────────────────────────────────────
#> Part I - Summary | F990 | one row per filing | 41 variables
#> 
#> variable                          location                     type      scope
#> F9_01_ACT_GVRN_ACT_MISSION        F990-PC-PART-01-LINE-01      text      PC
#>     Mission or most significant activities
#> F9_01_ACT_GVRN_TERMIN_KONTR_X     F990-PC-PART-01-LINE-02      checkbox  PC
#>     Termination or contraction [x]
#> F9_01_ACT_GVRN_NUM_VOTE_MEMB      F990-PC-PART-01-LINE-03      numeric   PC
#>     Number of voting members of governing body
#> F9_01_ACT_GVRN_NUM_VOTE_MEMB_IND  F990-PC-PART-01-LINE-04      numeric   PC
#>     Number of independent voting members of governing body
#> F9_01_ACT_GVRN_EMPL_TOT           F990-PC-PART-01-LINE-05      numeric   PC
#>     Total number of employees
#> F9_01_ACT_GVRN_VOL_TOT            F990-PC-PART-01-LINE-06      numeric   PC
#>     Total number of volunteers
#> F9_01_ACT_GVRN_UBIZ_REV_TOT       F990-PC-PART-01-LINE-07A     numeric   PC
#>     Total gross unrelated business revenue
#> F9_01_ACT_GVRN_UBIZ_TAXABLE_NET   F990-PC-PART-01-LINE-07B     numeric   PC
#>     Net unrelated business taxable income
#> F9_01_REV_CONTR_TOT_CY            F990-PC-PART-01-LINE-08-CY   numeric   PZ
#>     Contributions and grants - current year
#> F9_01_REV_CONTR_TOT_CY_V2         F990-PC-PART-01-LINE-08-CY   numeric   PZ
#>     Contributions, gifts, grants, and similar amounts received
#> F9_01_REV_CONTR_TOT_PY            F990-PC-PART-01-LINE-08-PY   numeric   PC
#>     Contributions and grants - prior year
#> F9_01_REV_PROG_TOT_CY             F990-PC-PART-01-LINE-09-CY   numeric   PZ
#>     Program service revenue - current year
#> F9_01_REV_PROG_TOT_PY             F990-PC-PART-01-LINE-09-PY   numeric   PC
#>     Program service revenue - prior year
#> F9_01_REV_INVEST_TOT_CY           F990-PC-PART-01-LINE-10-CY   numeric   PZ
#>     Investment income - current year
#> F9_01_REV_INVEST_TOT_PY           F990-PC-PART-01-LINE-10-PY   numeric   PC
#>     Investment income - prior year
#> F9_01_REV_OTH_CY                  F990-PC-PART-01-LINE-11-CY   numeric   PZ
#>     Other revenue - current year
#> F9_01_REV_OTH_PY                  F990-PC-PART-01-LINE-11-PY   numeric   PC
#>     Other revenue - prior year
#> F9_01_REV_TOT_CY                  F990-PC-PART-01-LINE-12-CY   numeric   PZ
#>     Total revenue - current year
#> F9_01_REV_TOT_PY                  F990-PC-PART-01-LINE-12-PY   numeric   PC
#>     Total revenue - prior year
#> F9_01_EXP_GRANT_SIMILAR_CY        F990-PC-PART-01-LINE-13-CY   numeric   PZ
#>     Grants and similar amounts paid - current year
#> F9_01_EXP_GRANT_SIMILAR_PY        F990-PC-PART-01-LINE-13-PY   numeric   PC
#>     Grants and similar amounts paid - prior year
#> F9_01_EXP_BEN_PAID_MEMB_CY        F990-PC-PART-01-LINE-14-CY   numeric   PZ
#>     Benefits paid to or for members - current year
#> F9_01_EXP_BEN_PAID_MEMB_PY        F990-PC-PART-01-LINE-14-PY   numeric   PC
#>     Benefits paid to or for members - prior year
#> F9_01_EXP_SAL_ETC_CY              F990-PC-PART-01-LINE-15-CY   numeric   PZ
#>     Salaries, other comp., employee benefits - current year
#> F9_01_EXP_SAL_ETC_PY              F990-PC-PART-01-LINE-15-PY   numeric   PC
#>     Salaries, other comp., employee benefits - prior year
#> F9_01_EXP_PROF_FUNDR_TOT_CY       F990-PC-PART-01-LINE-16A-CY  numeric   PC
#>     Professional fundraising fees - current year
#> F9_01_EXP_PROF_FUNDR_TOT_PY       F990-PC-PART-01-LINE-16A-PY  numeric   PC
#>     Professional fundraising fees - prior year
#> F9_01_EXP_FUNDR_TOT_CY            F990-PC-PART-01-LINE-16B-CY  numeric   PC
#>     Total fundraising expenses - current year
#> F9_01_EXP_OTH_CY                  F990-PC-PART-01-LINE-17-CY   numeric   PZ
#>     Other expenses - current year
#> F9_01_EXP_OTH_CY_V2               F990-PC-PART-01-LINE-17-CY   numeric   PZ
#>     Other expenses - current year
#> F9_01_EXP_OTH_PY                  F990-PC-PART-01-LINE-17-PY   numeric   PC
#>     Other expenses - prior year
#> F9_01_EXP_TOT_CY                  F990-PC-PART-01-LINE-18-CY   numeric   PZ
#>     Total expenses - current year
#> F9_01_EXP_TOT_PY                  F990-PC-PART-01-LINE-18-PY   numeric   PC
#>     Total expenses - prior year
#> F9_01_EXP_REV_LESS_EXP_CY         F990-PC-PART-01-LINE-19-CY   numeric   PZ
#>     Revenue less expenses - current year
#> F9_01_EXP_REV_LESS_EXP_PY         F990-PC-PART-01-LINE-19-PY   numeric   PC
#>     Revenue less expenses - prior year
#> F9_01_NAFB_ASSET_TOT_BOY          F990-PC-PART-01-LINE-20-BOY  numeric   PZ
#>     Total assets - beginning of year
#> F9_01_NAFB_ASSET_TOT_EOY          F990-PC-PART-01-LINE-20-EOY  numeric   PZ
#>     Total assets - end of year
#> F9_01_NAFB_LIAB_TOT_BOY           F990-PC-PART-01-LINE-21-BOY  numeric   PZ
#>     Total liabilities - beginning of year
#> F9_01_NAFB_LIAB_TOT_EOY           F990-PC-PART-01-LINE-21-EOY  numeric   PZ
#>     Total liabilities - end of year
#> F9_01_NAFB_TOT_BOY                F990-PC-PART-01-LINE-22-BOY  numeric   PZ
#>     Net assets or fund balances - beginning of year
#> F9_01_NAFB_TOT_EOY                F990-PC-PART-01-LINE-22-EOY  numeric   PZ
#>     Net assets or fund balances - end of year
dd("F9_01_REV_TOT_CY")
#> ── F9_01_REV_TOT_CY ────────────────────────────────────────────────────────────
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
dd("f9_01_rev_tot_cy", xpaths = TRUE)
#> ── F9_01_REV_TOT_CY ────────────────────────────────────────────────────────────
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
dd(c("F9_01_REV_TOT_CY", "F9_01_EXP_TOT_CY"), fields = c("label", "location_code_family"))
#> ── F9_01_REV_TOT_CY ────────────────────────────────────────────────────────────
#>   Label       Total revenue - current year
#>   Location    F990-PC-PART-01-LINE-12-CY
#> 
#> ── F9_01_EXP_TOT_CY ────────────────────────────────────────────────────────────
#>   Label       Total expenses - current year
#>   Location    F990-PC-PART-01-LINE-18-CY
```
