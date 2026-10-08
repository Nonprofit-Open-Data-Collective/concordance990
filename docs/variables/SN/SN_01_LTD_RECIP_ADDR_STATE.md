# SN_01_LTD_RECIP_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_01_LTD_RECIP_ADDR_STATE

Recipient state

- Description: Province or state

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

0 + 5 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 60 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/AddressUS/State` | SZ | 2009–2012 | 2,980 | 0.43% | 36.3% |
| x2 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/AddressForeign/ProvinceOrState` | SZ | 2011–2012 | 5 | 0.0011% | 20.0% |
| x3 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/USAddress/State` | SZ | 2013–2013 | 1,429 | 0.471% | 37.9% |
| x4 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/ForeignAddress/ProvinceOrState` | SZ | 2013–2013 | 2 | 0.00066% | 50.0% |
| x5 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/USAddress/StateAbbreviationCd` | SZ | 2014–2024 | 25,817 | 0.59% | 33.7% |
| x6 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/ForeignAddress/ProvinceOrStateNm` | SZ | 2014–2024 | 113 | 0.0046% | 22.1% |
| x7 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/AddressForeign/ProvinceOrState` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/AddressUS/State` | SZ | not observed | 0 |  |  |
| x9 | `IRS990ScheduleN/LiquidationTable/AddressForeign/ProvinceOrState` | SZ | not observed | 0 |  |  |
| x10 | `IRS990ScheduleN/LiquidationTable/AddressUS/State` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 164 | 689 | 951 | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  | 2 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.4k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 2 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.6k | 1.8k | 1.9k | 2.1k | 2.2k | 2.2k | 2.6k | 2.8k | 3.0k | 3.1k | 2.7k |
| x6 |  |  |  |  |  | 5 | 6 | 4 | 8 | 6 | 6 | 7 | 18 | 13 | 19 | 21 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | 1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 3,519   | 20.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x6 | ROYAL COLLEGE OF ART USA INC | London | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503169349200710_public.xml) |
| 2024 | 990 | x5 | BIG BROTHERS BIG SISTERS OF ISLAND COUN… | WA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202620289349301652_public.xml) |
| 2013 | 990 | x4 | UFCW SUFFRIDGEJIMERSON SCHOLARSHIP FUND | ONTARIO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510169349300106_public.xml) |
| 2013 | 990EZ | x3 | TRIANGLE LEADERSHIP FORUM | NC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432809349200113_public.xml) |
| 2012 | 990EZ | x2 | KATALYSIS BOOTSTRAP FUND | HONDURAS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201330879349200213_public.xml) |
| 2012 | 990 | x1 | CARITAS INC | RI | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411359349304566_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_01_LTD_RECIP_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
