# SG_02_FUNDR_EVNT_EXP_RENT_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_02_FUNDR_EVNT_EXP_RENT_TOT

Total rent/facility costs for fundraising events

- Description: Rent or facility costs; total

- Table:

  [`SG-P02-T00-FUNDRAISING-EVENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p02-t00-fundraising-events)
  (one)

- Part: Part II - Fundraising Events

- Location:

  `SCHED-G-PART-02-LINE-06-COL-D`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

396k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.9x (IRS990ScheduleG/FundraisingEventInformationGrp/RentFcltyCostsTotalEventsAmt, 990EZ, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/EventsInformation/RentFacilityCostsTotalEvents` | SZ | 2009–2012 | 53,456 | 7.23% |  |
| x2 | `IRS990ScheduleG/FundraisingEventInformationGrp/RentFcltyCostsTotalEventsAmt` | SZ | 2013–2024 | 342,856 | 6.87% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartII/EventsInformation/RentFacilityCostsTotalEvents` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.3k | 13k | 17k | 20k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 22k | 25k | 26k | 28k | 31k | 32k | 29k | 16k | 28k | 36k | 40k | 31k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 10 | 8 | 8 | 8 | 8 | 8 | 8 | 9 | 9 | 9 | 7 | 4 | 6 | 7 | 8 | 7 |
| 990-EZ | 6 | 5 | 5 | 6 | 6 | 5 | 5 | 5 | 5 | 5 | 5 | 2 | 4 | 5 | 6 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|-------|--------|--------|---------|
| 990    | 287,158 | 100.0%    | 6.2%   | 0.0%       | 3,110 | 9,750  | 25,936 | 288,611 |
| 990-EZ | 109,154 | 100.0%    | 23.7%  | 0.0%       | 1,050 | 4,075  | 9,566  | 49,364  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | 6890 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | International Sister Cities Association | 44606 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431019349300803_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_02_FUNDR_EVNT_EXP_RENT_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
