# SG_03_PCT_GAMING_OWN_FACILITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_PCT_GAMING_OWN_FACILITY

Percentage of gaming activity conducted in the org's facility

- Description: Percentage of gaming in own facility

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-13A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

66k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.0x (IRS990ScheduleG/GamingOwnFacilityPct, 990, TY2014) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleG/GamingOwnFacilityPct: fraction (0-1); IRS990ScheduleG/PercentageOfGamingOwnFacility: fraction (0-1) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/PercentageOfGamingOwnFacility` | SZ | 2009–2012 | 8,454 | 1.13% |  |
| x2 | `IRS990ScheduleG/GamingOwnFacilityPct` | SZ | 2013–2024 | 58,037 | 1.09% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartIII/PercentageOfGamingOwnFacility` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 533 | 2.2k | 2.6k | 3.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.5k | 3.9k | 4.1k | 4.3k | 4.7k | 4.8k | 4.7k | 5.1k | 5.8k | 6.0k | 6.2k | 5.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25  | Median | P75 | P99 |
|--------|---------|-----------|--------|------------|------|--------|-----|-----|
| 990    | 55,304  | 100.0%    | 7.6%   | 0.0%       | 1    | 1      | 1   | 1   |
| 990-EZ | 11,187  | 100.0%    | 25.0%  | 0.0%       | 0.51 | 1      | 1   | 1   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | EAGLE RIVER LIONS FOUNDATION INC | 0.03610 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349311605_public.xml) |
| 2012 | 990 | x1 | Fraternal Order of Eagles 2171 Aerie | 1.00000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421059349300437_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_PCT_GAMING_OWN_FACILITY, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
