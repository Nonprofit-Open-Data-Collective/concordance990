# SN_01_LTD_RECIP_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_01_LTD_RECIP_NAME_ORG_L2

Recipient organization name line 2

- Description: Name Business - BusinessNameLine2

- Table:

  [`SN-P01-T01-LIQUIDATION-TERMINATION-DISSOLUTION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p01-t01-liquidation-termination-dissolution)
  (many)

- Part: Part I - Liquidation, Termination, or Dissolution

- Location:

  `SCHED-N-PART-01-LINE-01-COL-F`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 5

xpaths observed / mapped

576

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/NameBusiness/BusinessNameLine2` | SZ | 2009–2012 | 48 | 0.00768% | 37.5% |
| x2 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/BusinessName/BusinessNameLine2` | SZ | 2013–2013 | 24 | 0.00791% | 62.5% |
| x3 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/BusinessName/BusinessNameLine2Txt` | SZ | 2014–2024 | 504 | 0.0158% | 28.4% |
| x4 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/NameBusiness/BusinessNameLine2` | SZ | not observed | 0 |  |  |
| x5 | `IRS990ScheduleN/LiquidationTable/NameBusiness/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4 | 12 | 11 | 21 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 24 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 17 | 23 | 64 | 38 | 32 | 41 | 39 | 52 | 64 | 62 | 72 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 274     | 21             | 54      |
| 990-EZ | 302     | 21             | 47      |

### Most common values

| Value                        | Filings | Share |
|------------------------------|---------|-------|
| `Archdiocese of San Antonio` | 34      | 16.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | MCPHERSON FAMILY YMCA | OF WICHITA KANSAS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513159349305841_public.xml) |
| 2013 | 990 | x2 | GRAND RAPIDS DOWNTOWN ALLIANCE | DOWNTOWN IMPROVEMENT DISTRICT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201530769349300523_public.xml) |
| 2012 | 990EZ | x1 | FLORIDA TECHNOLOGICAL RESEARCH & | DEVELOPMENT AUTHORITY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343129349200404_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_01_LTD_RECIP_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
