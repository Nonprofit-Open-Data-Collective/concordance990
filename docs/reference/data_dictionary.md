# Data dictionary: one row per variable

The variables of one database with the attributes a data user needs:
table and part, label and description, data type, scope, location code,
the number of xpaths pooled into the variable and the return types they
come from, and the `family_id` that links alternate versions of one
line. See
[`dd()`](https://nonprofit-open-data-collective.github.io/concordance990/reference/dd.md)
to look up one table or variable. A variable used in several tables (the
Part III program tables) has one row per table.

## Usage

``` r
data_dictionary(form = c("F990", "F990PF"))
```

## Arguments

- form:

  `"F990"` (990 and 990-EZ with their schedules) or `"F990PF"`.

## Value

A data.table ordered as the form: by table, then location code.

## Money fields and blank cells

`money_field` is `TRUE` for a numeric variable that holds a US dollar
amount: its XSD type is an amount type (`USAmountType`,
`USAmountNNType`, ...). The type of the current schema is used when one
of the variable's current xpaths declares it, otherwise the type of the
older xpaths. Counts, ratios, years and identifiers are numeric but not
money.

`blank_meaning` says how to read a blank cell in a filed return, for a
variable on that return's form:

- `implicit_false`: a blank checkbox is unchecked.

- `implicit_zero`: a blank money amount is zero.

- `literal_missing`: everything else (text, dates, and numeric values
  that are not money): nothing was reported.

A blank on a form that does not carry the variable is structural,
whatever its `blank_meaning`; `variable_scope` and `form_types` tell
which forms do.

## Examples

``` r
dd <- data_dictionary("F990")
dd[rdb_table == "F9-P01-T00-SUMMARY", .(variable_name, label, data_type_simple)]
#>                        variable_name
#>                               <char>
#>  1:       F9_01_ACT_GVRN_ACT_MISSION
#>  2:    F9_01_ACT_GVRN_TERMIN_KONTR_X
#>  3:     F9_01_ACT_GVRN_NUM_VOTE_MEMB
#>  4: F9_01_ACT_GVRN_NUM_VOTE_MEMB_IND
#>  5:          F9_01_ACT_GVRN_EMPL_TOT
#>  6:           F9_01_ACT_GVRN_VOL_TOT
#>  7:      F9_01_ACT_GVRN_UBIZ_REV_TOT
#>  8:  F9_01_ACT_GVRN_UBIZ_TAXABLE_NET
#>  9:           F9_01_REV_CONTR_TOT_CY
#> 10:        F9_01_REV_CONTR_TOT_CY_V2
#> 11:           F9_01_REV_CONTR_TOT_PY
#> 12:            F9_01_REV_PROG_TOT_CY
#> 13:            F9_01_REV_PROG_TOT_PY
#> 14:          F9_01_REV_INVEST_TOT_CY
#> 15:          F9_01_REV_INVEST_TOT_PY
#> 16:                 F9_01_REV_OTH_CY
#> 17:                 F9_01_REV_OTH_PY
#> 18:                 F9_01_REV_TOT_CY
#> 19:                 F9_01_REV_TOT_PY
#> 20:       F9_01_EXP_GRANT_SIMILAR_CY
#> 21:       F9_01_EXP_GRANT_SIMILAR_PY
#> 22:       F9_01_EXP_BEN_PAID_MEMB_CY
#> 23:       F9_01_EXP_BEN_PAID_MEMB_PY
#> 24:             F9_01_EXP_SAL_ETC_CY
#> 25:             F9_01_EXP_SAL_ETC_PY
#> 26:      F9_01_EXP_PROF_FUNDR_TOT_CY
#> 27:      F9_01_EXP_PROF_FUNDR_TOT_PY
#> 28:           F9_01_EXP_FUNDR_TOT_CY
#> 29:                 F9_01_EXP_OTH_CY
#> 30:              F9_01_EXP_OTH_CY_V2
#> 31:                 F9_01_EXP_OTH_PY
#> 32:                 F9_01_EXP_TOT_CY
#> 33:                 F9_01_EXP_TOT_PY
#> 34:        F9_01_EXP_REV_LESS_EXP_CY
#> 35:        F9_01_EXP_REV_LESS_EXP_PY
#> 36:         F9_01_NAFB_ASSET_TOT_BOY
#> 37:         F9_01_NAFB_ASSET_TOT_EOY
#> 38:          F9_01_NAFB_LIAB_TOT_BOY
#> 39:          F9_01_NAFB_LIAB_TOT_EOY
#> 40:               F9_01_NAFB_TOT_BOY
#> 41:               F9_01_NAFB_TOT_EOY
#>                        variable_name
#>                               <char>
#>                                                          label data_type_simple
#>                                                         <char>           <char>
#>  1:                     Mission or most significant activities             text
#>  2:                             Termination or contraction [x]         checkbox
#>  3:                 Number of voting members of governing body          numeric
#>  4:     Number of independent voting members of governing body          numeric
#>  5:                                  Total number of employees          numeric
#>  6:                                 Total number of volunteers          numeric
#>  7:                     Total gross unrelated business revenue          numeric
#>  8:                      Net unrelated business taxable income          numeric
#>  9:                    Contributions and grants - current year          numeric
#> 10: Contributions, gifts, grants, and similar amounts received          numeric
#> 11:                      Contributions and grants - prior year          numeric
#> 12:                     Program service revenue - current year          numeric
#> 13:                       Program service revenue - prior year          numeric
#> 14:                           Investment income - current year          numeric
#> 15:                             Investment income - prior year          numeric
#> 16:                               Other revenue - current year          numeric
#> 17:                                 Other revenue - prior year          numeric
#> 18:                               Total revenue - current year          numeric
#> 19:                                 Total revenue - prior year          numeric
#> 20:             Grants and similar amounts paid - current year          numeric
#> 21:               Grants and similar amounts paid - prior year          numeric
#> 22:             Benefits paid to or for members - current year          numeric
#> 23:               Benefits paid to or for members - prior year          numeric
#> 24:    Salaries, other comp., employee benefits - current year          numeric
#> 25:      Salaries, other comp., employee benefits - prior year          numeric
#> 26:               Professional fundraising fees - current year          numeric
#> 27:                 Professional fundraising fees - prior year          numeric
#> 28:                  Total fundraising expenses - current year          numeric
#> 29:                              Other expenses - current year          numeric
#> 30:                              Other expenses - current year          numeric
#> 31:                                Other expenses - prior year          numeric
#> 32:                              Total expenses - current year          numeric
#> 33:                                Total expenses - prior year          numeric
#> 34:                       Revenue less expenses - current year          numeric
#> 35:                         Revenue less expenses - prior year          numeric
#> 36:                           Total assets - beginning of year          numeric
#> 37:                                 Total assets - end of year          numeric
#> 38:                      Total liabilities - beginning of year          numeric
#> 39:                            Total liabilities - end of year          numeric
#> 40:            Net assets or fund balances - beginning of year          numeric
#> 41:                  Net assets or fund balances - end of year          numeric
#>                                                          label data_type_simple
#>                                                         <char>           <char>
```
