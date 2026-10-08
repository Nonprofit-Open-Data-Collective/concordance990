# SN_01_LTD_RECIP_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_01_LTD_RECIP_ADDR_ZIP

Recipient zip

- Description: Address Foreign - Postal code

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
| ✓ pass | Values have the ZIP format | 99.8% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 48 filings use a placeholder such as 000000000 |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/AddressUS/ZIPCode` | SZ | 2009–2012 | 2,980 | 0.43% | 36.3% |
| x2 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/AddressForeign/PostalCode` | SZ | 2010–2012 | 5 | 0.000731% | 20.0% |
| x3 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/USAddress/ZIPCode` | SZ | 2013–2013 | 1,429 | 0.471% | 37.9% |
| x4 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/ForeignAddress/PostalCode` | SZ | 2013–2013 | 3 | 0.000989% |  |
| x5 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/USAddress/ZIPCd` | SZ | 2014–2024 | 25,817 | 0.59% | 33.7% |
| x6 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/ForeignAddress/ForeignPostalCd` | SZ | 2014–2024 | 110 | 0.00438% | 21.8% |
| x7 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/AddressForeign/PostalCode` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/AddressUS/ZIPCode` | SZ | not observed | 0 |  |  |
| x9 | `IRS990ScheduleN/LiquidationTable/AddressForeign/PostalCode` | SZ | not observed | 0 |  |  |
| x10 | `IRS990ScheduleN/LiquidationTable/AddressUS/ZIPCode` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 164 | 689 | 951 | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 2 | 1 | 2 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.4k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 3 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.6k | 1.8k | 1.9k | 2.1k | 2.2k | 2.2k | 2.6k | 2.8k | 3.0k | 3.1k | 2.7k |
| x6 |  |  |  |  |  | 3 | 6 | 6 | 5 | 6 | 5 | 8 | 21 | 15 | 15 | 20 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | 1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 28,894  | 94.3% |
| `999999999` | 1,699   | 5.5%  |
| `9999`      | 13      | 0.0%  |
| `999999`    | 11      | 0.0%  |
| `A9A 9A9`   | 11      | 0.0%  |
| `AA9 9AA`   | 5       | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | International Special Dietary Foods | 1000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610929349300316_public.xml) |
| 2024 | 990EZ | x5 | INVESTOR RELATIONS ASSOCIATION | 22313 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349203046_public.xml) |
| 2013 | 990 | x4 | GREEN FESTIVALS INC | 70629 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433219349310068_public.xml) |
| 2013 | 990 | x3 | BPPP INC | 67277 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401359349300745_public.xml) |
| 2012 | 990EZ | x2 | TRUST FOR CIVIL SOCIETY IN CENTRAL AND | 1300 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323509349200232_public.xml) |
| 2012 | 990EZ | x1 | BIG BEND BUSINESS LEADERSHIP NETWORK INC | 32308 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341899349200229_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_01_LTD_RECIP_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
