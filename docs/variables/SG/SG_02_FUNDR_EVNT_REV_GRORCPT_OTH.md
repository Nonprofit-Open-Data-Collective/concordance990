# SG_02_FUNDR_EVNT_REV_GRORCPT_OTH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_02_FUNDR_EVNT_REV_GRORCPT_OTH

Gross receipts for other fundraising events

- Description: Gross receipts; other events

- Table:

  [`SG-P02-T00-FUNDRAISING-EVENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p02-t00-fundraising-events)
  (one)

- Part: Part II - Fundraising Events

- Location:

  `SCHED-G-PART-02-LINE-01-COL-C`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

344k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.5x (IRS990ScheduleG/FundraisingEventInformationGrp/GrossReceiptsOtherEventsAmt, 990EZ, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/EventsInformation/GrossReceiptsOtherEvents` | SZ | 2009–2012 | 52,893 | 7.13% |  |
| x2 | `IRS990ScheduleG/FundraisingEventInformationGrp/GrossReceiptsOtherEventsAmt` | SZ | 2013–2024 | 290,747 | 5.05% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartII/EventsInformation/GrossReceiptsOtherEvents` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.2k | 12k | 17k | 19k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 22k | 24k | 25k | 25k | 27k | 27k | 24k | 15k | 23k | 28k | 30k | 23k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 10 | 7 | 8 | 8 | 8 | 8 | 8 | 7 | 7 | 7 | 6 | 4 | 5 | 5 | 6 | 5 |
| 990-EZ | 6 | 5 | 6 | 6 | 6 | 6 | 5 | 5 | 5 | 5 | 4 | 2 | 3 | 4 | 5 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|--------|--------|--------|-----------|
| 990    | 246,000 | 100.0%    | 1.8%   | 0.0%       | 10,175 | 25,137 | 65,994 | 1,463,294 |
| 990-EZ | 97,640  | 100.0%    | 7.2%   | 0.0%       | 5,980  | 11,100 | 21,078 | 73,284    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | Century Cancer Fund | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523119349200302_public.xml) |
| 2012 | 990EZ | x1 | FARMINGVILLE ELEMENTARY SCHOOL PTA | 5732 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343099349200539_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_02_FUNDR_EVNT_REV_GRORCPT_OTH, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
