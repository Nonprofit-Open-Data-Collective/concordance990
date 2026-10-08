# SN_01_ORG_ATTORNEY_NOTIFIED_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_01_ORG_ATTORNEY_NOTIFIED_X

Provided such notice \[x\]

- Description: If "Yes;" did the organization provide such notice?

- Table:

  [`SN-P01-T00-LIQUIDATION-TERMINATION-DISSOLUTION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p01-t00-liquidation-termination-dissolution)
  (one)

- Part: Part I - Liquidation, Termination, or Dissolution

- Location:

  `SCHED-N-PART-01-LINE-04B`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

29k

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
| ⓘ info | Meaning of a blank | 39% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/AGNotified` | SZ | 2009–2012 | 2,849 | 0.385% |  |
| x2 | `IRS990ScheduleN/AttorneyGeneralNotifiedInd` | SZ | 2013–2024 | 26,393 | 0.604% |  |
| x3 | `IRS990ScheduleN/Form990ScheduleNPartI/AGNotified` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 141 | 700 | 954 | 1.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.4k | 1.5k | 1.7k | 1.8k | 2.0k | 2.2k | 2.2k | 2.5k | 2.6k | 2.9k | 3.0k | 2.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `1`     | 10,146  | 34.7% |
| `true`  | 7,735   | 26.5% |
| `0`     | 6,265   | 21.4% |
| `false` | 5,096   | 17.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | INVESTOR RELATIONS ASSOCIATION | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349203046_public.xml) |
| 2012 | 990 | x1 | BLACKSTONE INDUSTRIES EMPLOYEE BENEFIT … | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400509349300005_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_01_ORG_ATTORNEY_NOTIFIED_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
