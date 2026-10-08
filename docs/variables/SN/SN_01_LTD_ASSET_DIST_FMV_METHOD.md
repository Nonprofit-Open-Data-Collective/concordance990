# SN_01_LTD_ASSET_DIST_FMV_METHOD

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_01_LTD_ASSET_DIST_FMV_METHOD

Method of determining FMV for asset(s) distributed or transaction
expenses

- Description: Method of determining FMV for asset(s) distributed or
  transactional expenses

- Table:

  [`SN-P01-T01-LIQUIDATION-TERMINATION-DISSOLUTION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p01-t01-liquidation-termination-dissolution)
  (many)

- Part: Part I - Liquidation, Termination, or Dissolution

- Location:

  `SCHED-N-PART-01-LINE-01-COL-D`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 4

xpaths observed / mapped

29k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/MethodOfFMVDetermination` | SZ | 2009–2012 | 2,809 | 0.405% | 36.1% |
| x2 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/MethodOfFMVDeterminationTxt` | SZ | 2013–2024 | 26,314 | 0.563% | 32.3% |
| x3 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/MethodOfFMVDetermination` | SZ | not observed | 0 |  |  |
| x4 | `IRS990ScheduleN/LiquidationTable/MethodOfFMVDetermination` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 156 | 657 | 889 | 1.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.4k | 1.5k | 1.7k | 1.8k | 2.1k | 2.1k | 2.1k | 2.5k | 2.7k | 2.9k | 3.0k | 2.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 15,092  | 12             | 988     |
| 990-EZ | 14,031  | 13             | 707     |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `CASH`       | 4,072   | 25.6% |
| `BOOK VALUE` | 3,440   | 21.6% |
| `FMV`        | 2,123   | 13.4% |
| `Cash`       | 1,445   | 9.1%  |
| `COST`       | 1,155   | 7.3%  |
| `CASH VALUE` | 959     | 6.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | GALWAY ROVERS FC OF HINGHAM INC | CASH VALUE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531289349202933_public.xml) |
| 2012 | 990EZ | x1 | BARRON COUNTY RESTORATIVE JUSTICE | CASH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322269349201222_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_01_LTD_ASSET_DIST_FMV_METHOD, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
