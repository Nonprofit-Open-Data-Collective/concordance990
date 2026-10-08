# SG_03_GRK_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GRK_ADDR_STATE

Preparer of gaming/special events books and records - state

- Description: Province or state

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-14`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

6 / 8

xpaths observed / mapped

129k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 55 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 3.1x year-on-year (in 2010) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/AddressOfGamingRecKeeperUS/State` | SZ | 2009–2012 | 16,742 | 2.26% |  |
| x2 | `IRS990ScheduleG/AddressOfGamingRecKeeperFrgn/ProvinceOrState` | SZ | 2012–2012 | 1 | 0.000366% |  |
| x3 | `IRS990ScheduleG/PersonsWithBooksUSAddress/State` | SZ | 2013–2013 | 6,938 | 2.29% |  |
| x4 | `IRS990ScheduleG/PersonsWithBooksForeignAddress/ProvinceOrState` | SZ | 2013–2013 | 1 | 0.00033% |  |
| x5 | `IRS990ScheduleG/PersonsWithBooksUSAddress/StateAbbreviationCd` | SZ | 2014–2024 | 105,019 | 2.17% |  |
| x6 | `IRS990ScheduleG/PersonsWithBooksForeignAddress/ProvinceOrStateNm` | SZ | 2014–2024 | 43 | 0.0011% |  |
| x7 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfGamingRecordsKeeper/AddressForeign/ProvinceOrState` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfGamingRecordsKeeper/AddressUS/State` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.3k | 4.0k | 5.3k | 6.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 6.9k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 7.5k | 8.1k | 8.5k | 8.8k | 9.1k | 9.1k | 9.6k | 11k | 12k | 12k | 9.9k |
| x6 |  |  |  |  |  | 2 | 1 | 2 | 2 | 2 | 3 | 7 | 5 | 7 | 7 | 5 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |
| 990-EZ | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `PA`  | 14,459  | 18.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | SUNNYBROOK HEALTH SCIENCES CENTRE FOUND… | Ontario | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202512119349300631_public.xml) |
| 2024 | 990 | x5 | FRATERNAL ORDER EAGLES AERIE 1163 | MN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600929349300235_public.xml) |
| 2013 | 990 | x4 | AMERICAN LEGION POST 66 | IN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431339349305223_public.xml) |
| 2013 | 990EZ | x3 | AMERICAN LEGION EEL RIVER POST 286 | IN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403219349203285_public.xml) |
| 2012 | 990 | x2 | THE PLATT-DUETSCHE CORPORATION | NEBRASKA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400499349301030_public.xml) |
| 2012 | 990 | x1 | Fraternal Order of Eagles 2171 Aerie | OH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421059349300437_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GRK_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
