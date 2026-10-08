# SG_02_FUNDR_EVNT_EXP_CASH_1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_02_FUNDR_EVNT_EXP_CASH_1

Cash prizes for fundraising event 1

- Description: Cash prizes; event no.1

- Table:

  [`SG-P02-T00-FUNDRAISING-EVENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p02-t00-fundraising-events)
  (one)

- Part: Part II - Fundraising Events

- Location:

  `SCHED-G-PART-02-LINE-04-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

122k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 52.6x (IRS990ScheduleG/FundraisingEventInformationGrp/CashPrizesEvent1Amt, 990, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/EventsInformation/CashPrizesEvent1` | SZ | 2009–2012 | 15,048 | 1.89% |  |
| x2 | `IRS990ScheduleG/FundraisingEventInformationGrp/CashPrizesEvent1Amt` | SZ | 2013–2024 | 106,693 | 2.81% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartII/EventsInformation/CashPrizesEvent1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 3.8k | 4.7k | 5.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.6k | 6.0k | 6.3k | 6.5k | 7.0k | 7.7k | 7.7k | 6.6k | 11k | 14k | 15k | 13k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 2 | 2 | 2 | 2 |
| 990-EZ | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 3 | 3 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990    | 68,308  | 100.0%    | 43.2%  | 0.0%       | 0   | 747    | 3,500 | 149,975 |
| 990-EZ | 53,433  | 100.0%    | 59.2%  | 0.0%       | 0   | 541    | 3,277 | 34,147  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | JOEYS LITTLE ANGELS INC | 4959 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503029349302810_public.xml) |
| 2012 | 990EZ | x1 | PLACERVILLE ROTARY CLUB | 8780 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_02_FUNDR_EVNT_EXP_CASH_1, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
