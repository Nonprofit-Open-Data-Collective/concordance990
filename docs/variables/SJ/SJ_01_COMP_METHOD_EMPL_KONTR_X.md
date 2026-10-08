# SJ_01_COMP_METHOD_EMPL_KONTR_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SJ_01_COMP_METHOD_EMPL_KONTR_X

Used to establish CEO compensation - written employment contract \[x\]

- Description: Written employment contract

- Table:

  [`SJ-P01-T00-COMPENSATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sj-p01-t00-compensation)
  (one)

- Part: Part I - Questions Regarding Compensation

- Location:

  `SCHED-J-PART-01-LINE-03`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

186k

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
| x1 | `IRS990ScheduleJ/WrittenEmploymentContract` | SZ | 2009–2012 | 37,565 | 6.12% |  |
| x2 | `IRS990ScheduleJ/WrittenEmploymentContractInd` | SZ | 2013–2024 | 148,121 | 3.39% |  |
| x3 | `IRS990ScheduleJ/Form990ScheduleJPartI/WrittenEmploymentContract` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.4k | 10k | 11k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 11k | 12k | 12k | 12k | 12k | 12k | 13k | 13k | 13k | 14k | 14k | 9.4k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 16 | 8 | 7 | 6 | 6 | 5 | 5 | 5 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 185,686 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | Highland Behavioral Health Services Inc | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432239349300103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SJ_01_COMP_METHOD_EMPL_KONTR_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
