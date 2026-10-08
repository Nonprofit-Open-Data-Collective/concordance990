# SG_01_FUNDR_SVC_AGREEMENT_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_01_FUNDR_SVC_AGREEMENT_X

Had a written or oral agreement with any individual or entity in
connection with professional fundraising services \[x\]

- Description: Did the organization have a written or oral agreement
  with any individual (including officers; directors; trustees or key
  employees listed in Form 990; Part VII) or entity in connection with
  professional fundraising activities?

- Table:

  [`SG-P01-T00-FUNDRAISING-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p01-t00-fundraising-acts)
  (one)

- Part: Part I - Fundraising Activities

- Location:

  `SCHED-G-PART-01-LINE-02A`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

289k

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
| ⓘ info | Meaning of a blank | 76% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/AgreementRefFundraising` | SZ | 2009–2012 | 44,221 | 5.73% |  |
| x2 | `IRS990ScheduleG/AgrmtProfFundraisingActyInd` | SZ | 2013–2024 | 245,230 | 3.95% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartI/AgreementRefFundraising` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3.1k | 11k | 15k | 16k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 17k | 19k | 20k | 20k | 22k | 22k | 21k | 18k | 21k | 24k | 25k | 18k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 8 | 7 | 7 | 7 | 7 | 7 | 7 | 7 | 7 | 7 | 6 | 5 | 5 | 6 | 6 | 6 |
| 990-EZ | 2 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 201,282 | 69.5% |
| `1`     | 42,122  | 14.6% |
| `true`  | 28,186  | 9.7%  |
| `0`     | 17,861  | 6.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RACINE COUNTY HISTORICAL SOCIETY & | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349324403_public.xml) |
| 2012 | 990EZ | x1 | QUAD CITY HEAT BASEBALL CLUB | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323469349200217_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_01_FUNDR_SVC_AGREEMENT_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
