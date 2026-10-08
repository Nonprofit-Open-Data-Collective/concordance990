# PF_02_NAFB_NO_FOLLOW_SFAS117_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_02_NAFB_NO_FOLLOW_SFAS117_X

Organizations That Do Not Follow SFAS 117

- Description: Organizations That Do Not Follow SFAS 117

- Table:

  [`PF-P02-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p02-t00-balance-sheet)
  (one)

- Part: Part II - Balance Sheets

- Location:

  `F990-PF-PART-02-LINE-26-BTWN-27`

- Type: checkbox

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

814k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | values are almost always X/true when present, so a missing value usually means unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/BalanceSheets/OrgThatDoNotFollowSFAS117` | PF | 2009–2012 | 76,199 | 73.8% |  |
| x2 | `IRS990PF/Form990PFBalanceSheetsGrp/OrgDoesNotFollowSFAS117Ind` | PF | 2013–2018 | 262,588 | 71.4% |  |
| x3 | `IRS990PF/Form990PFBalanceSheetsGrp/OrgDoesNotFollowFASB117Ind` | PF | 2019–2024 | 475,423 | 67.9% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.7k | 19k | 26k | 29k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 34k | 39k | 42k | 45k | 49k | 54k |  |  |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  | 63k | 82k | 84k | 85k | 85k | 78k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 73 | 76 | 75 | 74 | 73 | 73 | 72 | 71 | 71 | 71 | 71 | 71 | 70 | 69 | 68 | 68 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 814,210 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | The Brad & Jill Jackson Family Foundati… | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502969349100900_public.xml) |
| 2018 | 990PF | x2 | THE TIGER TAIL FAMILY FOUNDATION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201911349349101631_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_02_NAFB_NO_FOLLOW_SFAS117_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
