# SG_02_FUNDR_EVNT_REV_GRO_1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_02_FUNDR_EVNT_REV_GRO_1

Gross income for fundraising event 1

- Description: Gross revenue; event no.1

- Table:

  [`SG-P02-T00-FUNDRAISING-EVENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p02-t00-fundraising-events)
  (one)

- Part: Part II - Fundraising Events

- Location:

  `SCHED-G-PART-02-LINE-03-COL-A`

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.3x (IRS990ScheduleG/FundraisingEventInformationGrp/GrossRevenueEvent1Amt, 990, TY2021) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/EventsInformation/GrossRevenueEvent1` | SZ | 2009–2012 | 150,567 | 20.5% |  |
| x2 | `IRS990ScheduleG/FundraisingEventInformationGrp/GrossRevenueEvent1Amt` | SZ | 2013–2024 | 918,629 | 16.2% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartII/EventsInformation/GrossRevenueEvent1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11k | 35k | 49k | 56k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 63k | 69k | 74k | 76k | 82k | 85k | 79k | 56k | 77k | 90k | 94k | 74k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 24 | 20 | 21 | 21 | 21 | 22 | 22 | 22 | 22 | 22 | 19 | 13 | 16 | 18 | 18 | 18 |
| 990-EZ | 19 | 16 | 19 | 19 | 19 | 19 | 19 | 18 | 18 | 17 | 16 | 9 | 12 | 13 | 14 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|--------|--------|--------|---------|
| 990    | 739,063 | 100.0%    | 0.6%   | 0.2%       | 19,044 | 39,768 | 88,238 | 765,388 |
| 990-EZ | 330,132 | 100.0%    | 0.9%   | 0.1%       | 14,727 | 23,808 | 40,444 | 131,087 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 44578 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990EZ | x1 | PLACERVILLE ROTARY CLUB | 51128 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_02_FUNDR_EVNT_REV_GRO_1, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
