# SA_02_PCT_10_SUPPORT_TEST_CY_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_PCT_10_SUPPORT_TEST_CY_X

Qualifies as a publicly supported organization under 10 percent facts
and circumstances test - current year \[x\]

- Description: Ten percent facts and circumstances test for the current
  year

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02-SECTION-C-LINE-17A`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

25k

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
| x1 | `IRS990ScheduleA/TenPercentTestCurrentYear` | SZ | 2009–2012 | 2,834 | 0.383% |  |
| x2 | `IRS990ScheduleA/TenPctFactsCrcmstncsTestCYInd` | SZ | 2013–2024 | 21,754 | 0.417% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartII/TenPercentTestCurrentYear` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 167 | 696 | 925 | 1.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.1k | 1.4k | 1.5k | 1.6k | 1.7k | 1.8k | 1.8k | 2.1k | 2.3k | 2.3k | 2.3k | 1.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | \<1 | 1 | 1 | 1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 24,588  | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | NOVO MUNDO FOUNDATION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640319349200004_public.xml) |
| 2012 | 990EZ | x1 | ASSOCIATION FOR SPIRITUALITY AND PSYCOT… | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313169349202626_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_PCT_10_SUPPORT_TEST_CY_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
