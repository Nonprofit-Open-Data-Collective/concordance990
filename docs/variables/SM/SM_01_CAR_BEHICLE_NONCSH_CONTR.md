# SM_01_CAR_BEHICLE_NONCSH_CONTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_01_CAR_BEHICLE_NONCSH_CONTR

Cars and other vehicles - noncash contribution amounts

- Description: Revenues reported on F990; Pt VIII; line 1g

- Table:

  [`SM-P01-T00-NONCASH-CONTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p01-t00-noncash-contributions)
  (one)

- Part: Part I - Types of Property

- Location:

  `SCHED-M-PART-01-LINE-06-COL-C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

22k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.1x (IRS990ScheduleM/CarsAndOtherVehicles/NoncashContribsRptdF990, 990, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/CarsAndOtherVehicles/NoncashContribsRptdF990` | SZ | 2009–2012 | 3,997 | 0.714% |  |
| x2 | `IRS990ScheduleM/CarsAndOtherVehiclesGrp/NoncashContributionsRptF990Amt` | SZ | 2013–2024 | 18,006 | 0.396% |  |
| x3 | `IRS990ScheduleM/Form990ScheduleMPartI/CarsAndOtherVehicles/RevenuesReportedLine1G` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 475 | 1.0k | 1.2k | 1.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.4k | 1.5k | 1.5k | 1.5k | 1.7k | 1.5k | 1.5k | 1.6k | 1.6k | 1.6k | 1.6k | 1.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-------|--------|--------|-----------|
| 990    | 22,003  | 100.0%    | 0.9%   | 0.0%       | 6,751 | 21,474 | 54,263 | 2,365,539 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | DRY BONES DENVER | 13400 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531299349303223_public.xml) |
| 2012 | 990 | x1 | SAMARITAN'S PURSE | 2500 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442039349300644_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_01_CAR_BEHICLE_NONCSH_CONTR, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
