# SN_01_LTD_RECIP_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_01_LTD_RECIP_ADDR_L1

Recipient street address line 1

- Description: Address Foreign - AddressLine1

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
| ⓘ info | No sign of truncation | IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/USAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleN/LiquidationTable/LiquidationDetail/AddressForeign/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleN/LiquidationTable/LiquidationDetail/AddressUS/AddressLine1: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/AddressUS/AddressLine1` | SZ | 2009–2012 | 2,980 | 0.43% | 36.3% |
| x2 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/AddressForeign/AddressLine1` | SZ | 2010–2012 | 14 | 0.00219% | 14.3% |
| x3 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/USAddress/AddressLine1` | SZ | 2013–2013 | 1,429 | 0.471% | 37.9% |
| x4 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/ForeignAddress/AddressLine1` | SZ | 2013–2013 | 8 | 0.00264% | 25.0% |
| x5 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/USAddress/AddressLine1Txt` | SZ | 2014–2024 | 25,817 | 0.59% | 33.7% |
| x6 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/ForeignAddress/AddressLine1Txt` | SZ | 2014–2024 | 236 | 0.00723% | 19.5% |
| x7 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/AddressForeign/AddressLine1` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/AddressUS/AddressLine1` | SZ | not observed | 0 |  |  |
| x9 | `IRS990ScheduleN/LiquidationTable/AddressForeign/AddressLine1` | SZ | not observed | 0 |  |  |
| x10 | `IRS990ScheduleN/LiquidationTable/AddressUS/AddressLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 164 | 689 | 951 | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 4 | 4 | 6 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.4k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 8 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.6k | 1.8k | 1.9k | 2.1k | 2.2k | 2.2k | 2.6k | 2.8k | 3.0k | 3.1k | 2.7k |
| x6 |  |  |  |  |  | 11 | 15 | 14 | 16 | 13 | 14 | 18 | 39 | 30 | 33 | 33 |
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
| 990    | 15,944  | 19             | 35      |
| 990-EZ | 14,540  | 18             | 35      |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `N/A` | 271     | 18.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | TWG 2021 BIRMINGHAM FOUNDATION | AVE DE LA GARE 12 1003 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510519349301031_public.xml) |
| 2024 | 990EZ | x5 | Pacific Shores Property Owners Assocn | 2445 M Street NW Suite 650 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511329349203641_public.xml) |
| 2013 | 990 | x4 | AMERICAN FRIENDS OF THE UNITED JEWISH | 37 KENTISH TOWN ROAD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442549349300014_public.xml) |
| 2013 | 990EZ | x3 | TRIANGLE LEADERSHIP FORUM | PO BOX 98777 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432809349200113_public.xml) |
| 2012 | 990EZ | x2 | TRUST FOR CIVIL SOCIETY IN CENTRAL AND | PROKOPOVA 9 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323509349200232_public.xml) |
| 2012 | 990 | x1 | NORTHWEST AGING ASSOCIATION | 22 N Georgia Suite 216 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201440309349300464_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_01_LTD_RECIP_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
