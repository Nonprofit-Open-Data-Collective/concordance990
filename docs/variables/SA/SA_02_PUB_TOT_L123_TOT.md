# SA_02_PUB_TOT_L123_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_PUB_TOT_L123_TOT

Total public support during the current tax year and the four years
prior

- Description: Total - Total - Total

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02-SECTION-A-LINE-04-COL-F`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.9M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.4x (IRS990ScheduleA/Total170/Total, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.6x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/Total170/Total` | SZ | 2009–2012 | 237,297 | 31.7% |  |
| x2 | `IRS990ScheduleA/TotalCalendarYear170Grp/TotalAmt` | SZ | 2013–2024 | 1,678,435 | 32% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartII/Total/Total` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 16k | 58k | 76k | 87k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 96k | 107k | 115k | 120k | 129k | 135k | 141k | 158k | 173k | 178k | 181k | 146k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 35 | 33 | 34 | 34 | 34 | 35 | 35 | 35 | 35 | 35 | 36 | 35 | 35 | 36 | 36 | 35 |
| 990-EZ | 26 | 27 | 27 | 27 | 27 | 27 | 27 | 27 | 26 | 26 | 27 | 26 | 26 | 26 | 26 | 27 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 1,349,016 | 100.0% | 0.2% | 0.0% | 747,759 | 2,028,352 | 6,557,299 | 208,623,741 |
| 990-EZ | 566,695 | 100.0% | 0.8% | 0.0% | 70,868 | 188,882 | 365,367 | 1,253,022 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | THE CREATIVES PROJECT INC | 267979 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2012 | 990EZ | x1 | CONCORD CHRISTIAN ACADEMY GIVING & GOING | 305711 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332829349200713_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_PUB_TOT_L123_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
