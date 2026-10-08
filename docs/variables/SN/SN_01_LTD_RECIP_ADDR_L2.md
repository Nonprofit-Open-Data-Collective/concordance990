# SN_01_LTD_RECIP_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_01_LTD_RECIP_ADDR_L2

Recipient street address line 2

- Description: Address Foreign - AddressLine2

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

5 / 10

xpaths observed / mapped

816

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

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
| x1 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/AddressUS/AddressLine2` | SZ | 2009–2012 | 62 | 0.00805% | 43.5% |
| x2 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/AddressForeign/AddressLine2` | SZ | 2011–2011 | 1 | 0.000414% |  |
| x3 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/USAddress/AddressLine2` | SZ | 2013–2013 | 25 | 0.00824% | 24.0% |
| x4 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/USAddress/AddressLine2Txt` | SZ | 2014–2024 | 708 | 0.0213% | 22.2% |
| x5 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/ForeignAddress/AddressLine2Txt` | SZ | 2015–2024 | 20 | 0.00132% | 20.0% |
| x6 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/AddressForeign/AddressLine2` | SZ | not observed | 0 |  |  |
| x7 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/AddressUS/AddressLine2` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/ForeignAddress/AddressLine2` | SZ | not observed | 0 |  |  |
| x9 | `IRS990ScheduleN/LiquidationTable/AddressForeign/AddressLine2` | SZ | not observed | 0 |  |  |
| x10 | `IRS990ScheduleN/LiquidationTable/AddressUS/AddressLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8 | 15 | 17 | 22 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 25 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  | 22 | 28 | 37 | 34 | 41 | 37 | 86 | 97 | 121 | 108 | 97 |
| x5 |  |  |  |  |  |  | 1 |  |  |  | 1 | 1 | 8 | 1 | 2 | 6 |
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
| 990    | 341     | 13             | 33      |
| 990-EZ | 475     | 12             | 33      |

### Most common values

| Value     | Filings | Share |
|-----------|---------|-------|
| `Suite K` | 24      | 8.9%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x5 | CHILDRENS HELP NET FOUNDATION INC | B-dul Regina Elisabeta nr44 ap23 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202530629349201863_public.xml) |
| 2024 | 990EZ | x4 | BRING ME A BOOK FOUNDATION | Mail Code 8838 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533229349202183_public.xml) |
| 2013 | 990 | x3 | NANA PROJECTS INC | Suite 201 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422749349300917_public.xml) |
| 2012 | 990 | x1 | ARISE FOR CHILDREN INC | 2104 ROCKY RIDGE ROAD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343189349303229_public.xml) |
| 2011 | 990 | x2 | ROBARTS RESEARCH INSTITUTE | Support Services Suite 6100 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201212569349300541_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_01_LTD_RECIP_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
