# SG_03_GRK_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GRK_ADDR_L1

Preparer of gaming/special events books and records - street address
line 1

- Description: Address Of Gaming Rec Keeper Frgn - AddressLine1

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
| ⓘ info | No sign of truncation | IRS990ScheduleG/AddressOfGamingRecKeeperUS/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleG/PersonsWithBooksUSAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleG/PersonsWithBooksUSAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 3.1x year-on-year (in 2010) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/AddressOfGamingRecKeeperUS/AddressLine1` | SZ | 2009–2012 | 16,742 | 2.26% |  |
| x2 | `IRS990ScheduleG/AddressOfGamingRecKeeperFrgn/AddressLine1` | SZ | 2009–2012 | 10 | 0.000731% |  |
| x3 | `IRS990ScheduleG/PersonsWithBooksUSAddress/AddressLine1` | SZ | 2013–2013 | 6,938 | 2.29% |  |
| x4 | `IRS990ScheduleG/PersonsWithBooksForeignAddress/AddressLine1` | SZ | 2013–2013 | 3 | 0.000989% |  |
| x5 | `IRS990ScheduleG/PersonsWithBooksUSAddress/AddressLine1Txt` | SZ | 2014–2024 | 105,019 | 2.17% |  |
| x6 | `IRS990ScheduleG/PersonsWithBooksForeignAddress/AddressLine1Txt` | SZ | 2014–2024 | 59 | 0.00153% |  |
| x7 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfGamingRecordsKeeper/AddressForeign/AddressLine1` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfGamingRecordsKeeper/AddressUS/AddressLine1` | SZ | not observed | 0 |  |  |

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
| x6 |  |  |  |  |  | 3 | 2 | 3 | 2 | 2 | 4 | 8 | 8 | 10 | 10 | 7 |
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
| 990    | 106,240 | 17             | 35      |
| 990-EZ | 22,531  | 16             | 35      |

### Most common values

| Value              | Filings | Share |
|--------------------|---------|-------|
| `3412 Marquita Dr` | 419     | 22.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | CANADIAN CANCER SOCIETY | 55 ST CLAIR AVENUE WEST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513499349300301_public.xml) |
| 2024 | 990 | x5 | Polish American Citizens Club | 111 Elm Street | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349326723_public.xml) |
| 2013 | 990 | x4 | PROJECT ORBIS INTERNATIONAL INC | ROOM 12 1/F 15 WATSON ROAD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423179349301287_public.xml) |
| 2013 | 990 | x3 | HELMETTA VOLUNTEER FIRE DEPARTMENT INC | 4 LAKE AVE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421619349300802_public.xml) |
| 2012 | 990 | x2 | PROJECT ORBIS INTERNATIONAL INC | ROOM 12 1/F 15 WATSON ROAD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302489349300110_public.xml) |
| 2012 | 990 | x1 | FREE CLINIC OF PIERCE AND ST CROIX COUN… | 124 S SECOND ST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341619349300804_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GRK_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
