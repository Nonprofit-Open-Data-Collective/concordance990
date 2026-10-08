# SG_02_FUNDR_EVNT_EXP_OTH_2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_02_FUNDR_EVNT_EXP_OTH_2

Other direct expenses for fundraising event 2

- Description: Other direct expenses; event no.2

- Table:

  [`SG-P02-T00-FUNDRAISING-EVENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p02-t00-fundraising-events)
  (one)

- Part: Part II - Fundraising Events

- Location:

  `SCHED-G-PART-02-LINE-09-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

481k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.4x (IRS990ScheduleG/FundraisingEventInformationGrp/OtherDirectExpensesEvent2Amt, 990, TY2021) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/EventsInformation/OtherDirectExpensesEvent2` | SZ | 2009–2012 | 72,112 | 9.7% |  |
| x2 | `IRS990ScheduleG/FundraisingEventInformationGrp/OtherDirectExpensesEvent2Amt` | SZ | 2013–2024 | 408,790 | 7.1% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartII/EventsInformation/OtherDirectExpensesEvent2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.7k | 17k | 23k | 27k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 30k | 32k | 34k | 35k | 37k | 38k | 34k | 22k | 33k | 39k | 42k | 32k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 13 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 9 | 5 | 7 | 8 | 8 | 8 |
| 990-EZ | 9 | 7 | 8 | 8 | 8 | 8 | 8 | 8 | 8 | 7 | 6 | 3 | 5 | 6 | 6 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|-------|--------|--------|---------|
| 990    | 339,524 | 100.0%    | 2.1%   | 0.0%       | 2,284 | 6,784  | 16,900 | 196,462 |
| 990-EZ | 141,378 | 100.0%    | 6.8%   | 0.0%       | 1,422 | 4,218  | 8,634  | 37,700  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | OLD TIMERS BASEBALL ASSN OF PORTLAND INC | 1195 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541289349201694_public.xml) |
| 2012 | 990EZ | x1 | PLACERVILLE ROTARY CLUB | 4520 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_02_FUNDR_EVNT_EXP_OTH_2, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
