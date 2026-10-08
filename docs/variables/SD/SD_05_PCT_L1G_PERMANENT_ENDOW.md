# SD_05_PCT_L1G_PERMANENT_ENDOW

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_05_PCT_L1G_PERMANENT_ENDOW

Permanent endowment year end balance

- Description: Permanent endowment EOY balance

- Table:

  [`SD-P05-T00-ENDOWMENT`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p05-t00-endowment)
  (one)

- Part: Part V - Endowment Funds

- Location:

  `SCHED-D-PART-05-LINE-02B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

302k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.1x (IRS990ScheduleD/PrmnntEndowmentBalanceEOYPct, 990, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleD/PermanentEndowmentEOYBalance: fraction (0-1); IRS990ScheduleD/PrmnntEndowmentBalanceEOYPct: fraction (0-1) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/PermanentEndowmentEOYBalance` | SZ | 2009–2012 | 51,457 | 9.39% |  |
| x2 | `IRS990ScheduleD/PrmnntEndowmentBalanceEOYPct` | SZ | 2013–2024 | 250,210 | 5.32% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartV/PermanentEndowmentEOYBalance` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.3k | 13k | 15k | 17k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 18k | 19k | 20k | 20k | 22k | 22k | 22k | 23k | 23k | 23k | 23k | 15k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 19 | 10 | 10 | 9 | 9 | 9 | 8 | 8 | 8 | 8 | 8 | 7 | 7 | 7 | 7 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25  | Median | P75 | P99 |
|--------|---------|-----------|--------|------------|------|--------|-----|-----|
| 990    | 301,667 | 100.0%    | 6.7%   | 0.0%       | 0.31 | 0.72   | 1   | 1   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HAWAII PREPARATORY ACADEMY | 0.40109 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510989349300406_public.xml) |
| 2012 | 990 | x1 | GRITMAN MEDICAL CENTER FOUNDATION INC | 0.28080 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333199349301373_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_05_PCT_L1G_PERMANENT_ENDOW, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
