# SH_01_REP_AVBL_PUB_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_01_REP_AVBL_PUB_X

Made the community benefit report publicly available \[x\]

- Description: Report publically available?

- Table:

  [`SH-P01-T00-FAP-COMMUNITY-BENEFIT-POLICY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p01-t00-fap-community-benefit-policy)
  (one)

- Part: Part I - Financial Assistance and Certain Other Community
  Benefits at Cost

- Location:

  `SCHED-H-PART-01-LINE-06B`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

28k

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
| ⓘ info | Meaning of a blank | 5% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/ReportPublicallyAvailable` | SZ | 2009–2012 | 7,104 | 1.13% |  |
| x2 | `IRS990ScheduleH/ReportPublicallyAvailableInd` | SZ | 2013–2024 | 21,390 | 0.207% |  |
| x3 | `IRS990ScheduleH/Form990ScheduleHPartI/ReportPublicallyAvailable` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.2k | 2.0k | 1.9k | 2.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.0k | 1.9k | 1.9k | 1.9k | 1.9k | 1.9k | 1.8k | 1.8k | 1.8k | 1.9k | 1.8k | 574 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `1`     | 15,165  | 53.2% |
| `true`  | 11,989  | 42.1% |
| `false` | 674     | 2.4%  |
| `0`     | 666     | 2.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | Powell Valley Health Care Inc | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349304887_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_01_REP_AVBL_PUB_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
