# SG_03_THIRD_PARTY_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_THIRD_PARTY_ADDR_STATE

Thirty party - state

- Description: Province or state

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-15C`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

5 / 8

xpaths observed / mapped

6.5k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 42 distinct values per xpath and year |
| ✓ pass | Codes share one format | 99% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/AddressOfThirdPartyUS/State` | SZ | 2009–2012 | 660 | 0.0896% |  |
| x2 | `IRS990ScheduleG/AddressOfThirdPartyForeign/ProvinceOrState` | SZ | 2010–2010 | 1 | 0.000537% |  |
| x3 | `IRS990ScheduleG/ThirdPartyUSAddress/State` | SZ | 2013–2013 | 266 | 0.0877% |  |
| x4 | `IRS990ScheduleG/ThirdPartyUSAddress/StateAbbreviationCd` | SZ | 2014–2024 | 5,498 | 0.137% |  |
| x5 | `IRS990ScheduleG/ThirdPartyForeignAddress/ProvinceOrStateNm` | SZ | 2014–2024 | 51 | 0.0011% |  |
| x6 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfThirdParty/AddressForeign/ProvinceOrState` | SZ | not observed | 0 |  |  |
| x7 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfThirdParty/AddressUS/State` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleG/ThirdPartyForeignAddress/ProvinceOrState` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 29 | 162 | 224 | 245 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 1 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 266 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  | 308 | 347 | 374 | 392 | 408 | 434 | 542 | 640 | 682 | 746 | 625 |
| x5 |  |  |  |  |  | 5 | 2 | 2 | 2 | 5 | 9 | 4 | 3 | 8 | 6 | 5 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `AK`  | 1,663   | 31.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x5 | FLORIDA CITRUS SPORTS FOUNDATION INC | ONTARIO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640449349300809_public.xml) |
| 2024 | 990 | x4 | EAGLE RIVER LIONS FOUNDATION INC | AK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349311605_public.xml) |
| 2013 | 990EZ | x3 | EXETER AREA CHARITABLE FOUNDATION | NH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403179349202330_public.xml) |
| 2012 | 990 | x1 | TORAH LEARNING CENTER OF SAN ANTONIO | TX | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343179349300514_public.xml) |
| 2010 | 990 | x2 | THE RED SOX FOUNDATION INC | PRINCE EDWARD ISLAND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201133199349306528_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_THIRD_PARTY_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
