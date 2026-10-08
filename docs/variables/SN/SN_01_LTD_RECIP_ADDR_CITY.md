# SN_01_LTD_RECIP_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_01_LTD_RECIP_ADDR_CITY

Recipient city

- Description: Address Foreign - City

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

6 / 10

xpaths observed / mapped

30k

filings with a value

2009–2024

tax years observed

0 + 6 reviewed

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
| x1 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/AddressUS/City` | SZ | 2009–2012 | 2,980 | 0.43% | 36.3% |
| x2 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/AddressForeign/City` | SZ | 2010–2012 | 12 | 0.00183% | 16.7% |
| x3 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/USAddress/City` | SZ | 2013–2013 | 1,429 | 0.471% | 37.9% |
| x4 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/ForeignAddress/City` | SZ | 2013–2013 | 7 | 0.00231% | 28.6% |
| x5 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/USAddress/CityNm` | SZ | 2014–2024 | 25,817 | 0.59% | 33.7% |
| x6 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/ForeignAddress/CityNm` | SZ | 2014–2024 | 210 | 0.00658% | 19.5% |
| x7 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/AddressForeign/City` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/AddressUS/City` | SZ | not observed | 0 |  |  |
| x9 | `IRS990ScheduleN/LiquidationTable/AddressForeign/City` | SZ | not observed | 0 |  |  |
| x10 | `IRS990ScheduleN/LiquidationTable/AddressUS/City` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 164 | 689 | 951 | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 4 | 3 | 5 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.4k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 7 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.6k | 1.8k | 1.9k | 2.1k | 2.2k | 2.2k | 2.6k | 2.8k | 3.0k | 3.1k | 2.7k |
| x6 |  |  |  |  |  | 11 | 13 | 12 | 14 | 13 | 11 | 17 | 33 | 28 | 28 | 30 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | 1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 15,929  | 9              | 26      |
| 990-EZ | 14,526  | 9              | 30      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 620     | 17.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | TWG 2021 BIRMINGHAM FOUNDATION | LAUSANNE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510519349301031_public.xml) |
| 2024 | 990 | x5 | BIG BROTHERS BIG SISTERS OF ISLAND COUN… | OAK HARBOR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202620289349301652_public.xml) |
| 2013 | 990EZ | x4 | CLINTON BUSH HAITI FUND | Bois Moquette | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443299349200029_public.xml) |
| 2013 | 990 | x3 | BPPP INC | WICHITA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401359349300745_public.xml) |
| 2012 | 990 | x2 | AFRICAN MEDICAL MISSION | SOUTH AFRICA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323189349304162_public.xml) |
| 2012 | 990EZ | x1 | BIG BEND BUSINESS LEADERSHIP NETWORK INC | TALLAHASSEE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341899349200229_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_01_LTD_RECIP_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
