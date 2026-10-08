# SN_01_LTD_RECIP_IRC_SECTION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_01_LTD_RECIP_IRC_SECTION

IRC section of recipient(s) (if tax-exempt) or type of entity

- Description: IRC code section of recipient(s) (if tax-exempt) or type
  of entity

- Table:

  [`SN-P01-T01-LIQUIDATION-TERMINATION-DISSOLUTION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p01-t01-liquidation-termination-dissolution)
  (many)

- Part: Part I - Liquidation, Termination, or Dissolution

- Location:

  `SCHED-N-PART-01-LINE-01-COL-G`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 4

xpaths observed / mapped

28k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 2% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/IRCSectionTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/IRCSection` | SZ | 2009–2012 | 2,866 | 0.415% | 36.3% |
| x2 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/IRCSectionTxt` | SZ | 2013–2024 | 25,207 | 0.537% | 33.9% |
| x3 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/IRCSection` | SZ | not observed | 0 |  |  |
| x4 | `IRS990ScheduleN/LiquidationTable/IRCSection` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 159 | 670 | 901 | 1.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.4k | 1.5k | 1.6k | 1.8k | 2.0k | 2.0k | 2.0k | 2.4k | 2.5k | 2.7k | 2.8k | 2.4k |
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
| 990    | 15,012  | 9              | 76      |
| 990-EZ | 13,061  | 8              | 100     |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `501(C)(3)` | 7,926   | 43.6% |
| `501(c)(3)` | 2,840   | 15.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | Pacific Shores Property Owners Assocn | 501 (c) (3) | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511329349203641_public.xml) |
| 2012 | 990EZ | x1 | BIG BEND BUSINESS LEADERSHIP NETWORK INC | 501(C)(3) ENTITY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341899349200229_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_01_LTD_RECIP_IRC_SECTION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
