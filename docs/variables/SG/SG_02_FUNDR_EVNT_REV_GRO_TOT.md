# SG_02_FUNDR_EVNT_REV_GRO_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_02_FUNDR_EVNT_REV_GRO_TOT

Total gross income for fundraising events

- Description: Gross revenue; total

- Table:

  [`SG-P02-T00-FUNDRAISING-EVENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p02-t00-fundraising-events)
  (one)

- Part: Part II - Fundraising Events

- Location:

  `SCHED-G-PART-02-LINE-03-COL-D`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.1M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.4x (IRS990ScheduleG/FundraisingEventInformationGrp/GrossRevenueTotalEventsAmt, 990EZ, TY2021) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/EventsInformation/GrossRevenueTotalEvents` | SZ | 2009–2012 | 152,768 | 20.8% |  |
| x2 | `IRS990ScheduleG/FundraisingEventInformationGrp/GrossRevenueTotalEventsAmt` | SZ | 2013–2024 | 935,030 | 16.5% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartII/EventsInformation/GrossRevenueTotalEvents` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11k | 35k | 49k | 57k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 63k | 70k | 75k | 78k | 83k | 86k | 80k | 58k | 79k | 91k | 96k | 75k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 25 | 20 | 21 | 22 | 22 | 22 | 22 | 22 | 22 | 22 | 20 | 13 | 16 | 18 | 19 | 18 |
| 990-EZ | 19 | 16 | 19 | 19 | 19 | 19 | 19 | 18 | 18 | 18 | 16 | 9 | 12 | 14 | 14 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|--------|--------|---------|-----------|
| 990    | 754,391 | 100.0%    | 0.4%   | 0.2%       | 25,787 | 55,497 | 125,529 | 1,084,473 |
| 990-EZ | 333,406 | 100.0%    | 0.8%   | 0.1%       | 20,876 | 35,218 | 58,055  | 150,505   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 44578 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | MINNEAPOLIS COLLEGE OF ART & DESIGN | 325175 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_02_FUNDR_EVNT_REV_GRO_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
