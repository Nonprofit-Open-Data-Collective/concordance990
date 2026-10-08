# SG_03_GRK_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GRK_ADDR_CITY

Preparer of gaming/special events books and records - city

- Description: Persons With Books Foreign Address - City

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

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 3.1x year-on-year (in 2010) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/AddressOfGamingRecKeeperUS/City` | SZ | 2009–2012 | 16,742 | 2.26% |  |
| x2 | `IRS990ScheduleG/AddressOfGamingRecKeeperFrgn/City` | SZ | 2009–2012 | 10 | 0.000731% |  |
| x3 | `IRS990ScheduleG/PersonsWithBooksUSAddress/City` | SZ | 2013–2013 | 6,938 | 2.29% |  |
| x4 | `IRS990ScheduleG/PersonsWithBooksForeignAddress/City` | SZ | 2013–2013 | 3 | 0.000989% |  |
| x5 | `IRS990ScheduleG/PersonsWithBooksUSAddress/CityNm` | SZ | 2014–2024 | 105,019 | 2.17% |  |
| x6 | `IRS990ScheduleG/PersonsWithBooksForeignAddress/CityNm` | SZ | 2014–2024 | 58 | 0.00153% |  |
| x7 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfGamingRecordsKeeper/AddressForeign/City` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfGamingRecordsKeeper/AddressUS/City` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.3k | 4.0k | 5.3k | 6.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 2 | 3 | 3 | 2 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 6.9k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 3 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 7.5k | 8.1k | 8.5k | 8.8k | 9.1k | 9.1k | 9.6k | 11k | 12k | 12k | 9.9k |
| x6 |  |  |  |  |  | 3 | 2 | 3 | 2 | 2 | 4 | 8 | 7 | 10 | 10 | 7 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |
| 990-EZ | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 106,239 | 9              | 22      |
| 990-EZ | 22,531  | 9              | 22      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `ANCHORAGE` | 966     | 17.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | CANADIAN CANCER SOCIETY | TORONTO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513499349300301_public.xml) |
| 2024 | 990EZ | x5 | Tehachapi Warrior Booster Club Inc | Tehachapi | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349202502_public.xml) |
| 2013 | 990 | x4 | ROTARY CLUB OF ST THOMAS | ST THOMAS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442469349300334_public.xml) |
| 2013 | 990EZ | x3 | Veterans of Foreign Wars of the US Dept | Wolcott | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413079349200436_public.xml) |
| 2012 | 990 | x2 | THE PLATT-DUETSCHE CORPORATION | GRAND ISLAND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400499349301030_public.xml) |
| 2012 | 990EZ | x1 | MANASOTA AIR CONDITIONING CONTRACTORS | ST PETERSBURG | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341289349200819_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GRK_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
