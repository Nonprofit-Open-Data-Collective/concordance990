# SG_02_FUNDR_EVNT_EXP_ENTMT_2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_02_FUNDR_EVNT_EXP_ENTMT_2

Entertainment for fundraising event 2

- Description: Entertainment expenses; event no.2

- Table:

  [`SG-P02-T00-FUNDRAISING-EVENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p02-t00-fundraising-events)
  (one)

- Part: Part II - Fundraising Events

- Location:

  `SCHED-G-PART-02-LINE-08-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

94k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.5x (IRS990ScheduleG/FundraisingEventInformationGrp/EntertainmentEvent2Amt, 990EZ, TY2019) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 3.2x year-on-year (in 2021) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/EventsInformation/EntertainmentEvent2` | SZ | 2009–2012 | 11,671 | 1.57% |  |
| x2 | `IRS990ScheduleG/FundraisingEventInformationGrp/EntertainmentEvent2Amt` | SZ | 2013–2024 | 82,795 | 2.09% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.0k | 2.7k | 3.6k | 4.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.7k | 5.2k | 5.5k | 5.9k | 6.5k | 6.8k | 6.0k | 3.3k | 7.5k | 10k | 12k | 9.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 2 | 2 | 2 |
| 990-EZ | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990    | 64,924  | 100.0%    | 23.4%  | 0.0%       | 300 | 1,496  | 5,153 | 105,989 |
| 990-EZ | 29,542  | 100.0%    | 68.0%  | 0.0%       | 0   | 300    | 1,262 | 12,483  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | 325600 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | Essentia Health Foundation | 2000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411199349301066_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_02_FUNDR_EVNT_EXP_ENTMT_2, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
