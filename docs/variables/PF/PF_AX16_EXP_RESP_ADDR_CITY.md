# PF_AX16_EXP_RESP_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX16_EXP_RESP_ADDR_CITY

City

- Description: Foreign Address - City

- Table:

  [`PF-P99-T16-EXP-RESPONSIBILITY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t16-exp-responsibility)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-16`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

6 / 6

xpaths observed / mapped

16k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | ExpenditureResponsibilityStmt/ExpenditureResponsibility/ForeignAddress/City: longest value is exactly 35 characters; ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/City: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/USAddress/City` | PF | 2009–2012 | 399 | 0.396% | 53.1% |
| x2 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/ForeignAddress/City` | PF | 2009–2012 | 164 | 0.175% | 65.2% |
| x3 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/City` | PF | 2013–2013 | 213 | 0.464% | 40.4% |
| x4 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/City` | PF | 2013–2013 | 86 | 0.187% | 64.0% |
| x5 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/CityNm` | PF | 2014–2024 | 10,486 | 1.36% | 43.6% |
| x6 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/CityNm` | PF | 2014–2024 | 4,227 | 0.518% | 62.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 19 | 87 | 135 | 158 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 9 | 35 | 50 | 70 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 213 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 86 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 243 | 285 | 347 | 416 | 592 | 929 | 1.4k | 1.5k | 1.6k | 1.7k | 1.6k |
| x6 |  |  |  |  |  | 116 | 154 | 165 | 201 | 233 | 326 | 556 | 599 | 634 | 648 | 595 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 15,575  | 9              | 45      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 1,215   | 17.6% |
| `LONDON`   | 630     | 9.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | THE NOMMONTU FOUNDATION INC | LONDON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521349349103912_public.xml) |
| 2024 | 990PF | x5 | Robert W Woodruff Foundation Inc | Newton | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101428_public.xml) |
| 2013 | 990PF | x4 | THE GRIFFIN FOUNDATION INC | Highbury Stadium Square | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412279349100401_public.xml) |
| 2013 | 990PF | x3 | No 33 The 1994 Christopher W Johnson | AUSTIN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401359349100740_public.xml) |
| 2012 | 990PF | x2 | LAUCKS FOUNDATION CO JACOBSON JARVIS & … | VICTORIA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201330639349100403_public.xml) |
| 2012 | 990PF | x1 | The David and Lucile Packard Foundation | Charleston | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX16_EXP_RESP_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
