# SG_02_FUNDR_EVNT_EXP_ENTMT_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_02_FUNDR_EVNT_EXP_ENTMT_TOT

Total entertainment for fundraising events

- Description: Entertainment costs; total

- Table:

  [`SG-P02-T00-FUNDRAISING-EVENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p02-t00-fundraising-events)
  (one)

- Part: Part II - Fundraising Events

- Location:

  `SCHED-G-PART-02-LINE-08-COL-D`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

266k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.3x (IRS990ScheduleG/FundraisingEventInformationGrp/EntertainmentTotalEventsAmt, 990EZ, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/EventsInformation/EntertainmentTotalEvents` | SZ | 2009–2012 | 33,319 | 4.62% |  |
| x2 | `IRS990ScheduleG/FundraisingEventInformationGrp/EntertainmentTotalEventsAmt` | SZ | 2013–2024 | 232,319 | 4.98% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.5k | 7.7k | 11k | 13k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 14k | 16k | 17k | 18k | 20k | 21k | 19k | 10k | 19k | 26k | 29k | 23k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 6 | 5 | 5 | 5 | 5 | 6 | 6 | 6 | 6 | 6 | 5 | 3 | 4 | 5 | 5 | 5 |
| 990-EZ | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 1 | 3 | 4 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|-----|--------|--------|---------|
| 990    | 193,337 | 100.0%    | 11.0%  | 0.0%       | 884 | 3,110  | 10,168 | 211,780 |
| 990-EZ | 72,301  | 100.0%    | 40.9%  | 0.0%       | 200 | 970    | 3,300  | 34,069  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | JOEYS LITTLE ANGELS INC | 6900 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503029349302810_public.xml) |
| 2012 | 990 | x1 | BACH SOCIETY OF SAINT LOUIS | 300 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410379349301556_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_02_FUNDR_EVNT_EXP_ENTMT_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
