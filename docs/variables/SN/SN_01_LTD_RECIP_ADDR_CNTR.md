# SN_01_LTD_RECIP_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_01_LTD_RECIP_ADDR_CNTR

Recipient country

- Description: Address Foreign - Country

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

258

filings with a value

2010–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 16 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/AddressForeign/Country` | SZ | 2010–2012 | 14 | 0.00219% | 14.3% |
| x2 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/ForeignAddress/Country` | SZ | 2013–2013 | 8 | 0.00264% | 25.0% |
| x3 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/ForeignAddress/CountryCd` | SZ | 2014–2024 | 236 | 0.00723% | 19.5% |
| x4 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/AddressForeign/Country` | SZ | not observed | 0 |  |  |
| x5 | `IRS990ScheduleN/LiquidationTable/AddressForeign/Country` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 4 | 4 | 6 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 11 | 15 | 14 | 16 | 13 | 14 | 18 | 39 | 30 | 33 | 33 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `UK`  | 36      | 17.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | CHILDRENS HELP NET FOUNDATION INC | RO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202530629349201863_public.xml) |
| 2013 | 990 | x2 | The Heart of The Healer Foundation Inc | PE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403149349300400_public.xml) |
| 2012 | 990EZ | x1 | TRUST FOR CIVIL SOCIETY IN CENTRAL AND | PL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323509349200232_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_01_LTD_RECIP_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
