# SG_02_FUNDR_EVNT_REV_GRORCPT_2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_02_FUNDR_EVNT_REV_GRORCPT_2

Gross receipts for fundraising event 2

- Description: Gross receipts; event no.2

- Table:

  [`SG-P02-T00-FUNDRAISING-EVENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p02-t00-fundraising-events)
  (one)

- Part: Part II - Fundraising Events

- Location:

  `SCHED-G-PART-02-LINE-01-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

590k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.3x (IRS990ScheduleG/EventsInformation/GrossReceiptsEvent2, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/EventsInformation/GrossReceiptsEvent2` | SZ | 2009–2012 | 87,278 | 11.8% |  |
| x2 | `IRS990ScheduleG/FundraisingEventInformationGrp/GrossReceiptsEvent2Amt` | SZ | 2013–2024 | 502,491 | 8.72% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartII/EventsInformation/GrossReceiptsEvent2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.7k | 20k | 28k | 32k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 36k | 40k | 42k | 43k | 45k | 46k | 42k | 29k | 41k | 48k | 51k | 40k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 15 | 12 | 13 | 13 | 13 | 13 | 13 | 12 | 12 | 12 | 11 | 7 | 9 | 10 | 10 | 10 |
| 990-EZ | 11 | 9 | 10 | 10 | 10 | 10 | 10 | 10 | 9 | 9 | 8 | 4 | 6 | 7 | 8 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|--------|--------|--------|---------|
| 990    | 416,387 | 100.0%    | 0.6%   | 0.0%       | 12,771 | 28,400 | 70,696 | 844,500 |
| 990-EZ | 173,381 | 100.0%    | 2.7%   | 0.0%       | 7,239  | 11,531 | 19,123 | 65,887  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | OLD TIMERS BASEBALL ASSN OF PORTLAND INC | 14905 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541289349201694_public.xml) |
| 2012 | 990EZ | x1 | PLACERVILLE ROTARY CLUB | 37664 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_02_FUNDR_EVNT_REV_GRORCPT_2, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
