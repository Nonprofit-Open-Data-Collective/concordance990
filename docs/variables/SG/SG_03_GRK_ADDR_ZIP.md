# SG_03_GRK_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GRK_ADDR_ZIP

Preparer of gaming/special events books and records - zip

- Description: Persons With Books Foreign Address - Postal code

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
| ✓ pass | Values have the ZIP format | 100.0% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ✓ pass | No placeholder values | no all-zero / all-nine placeholders among the most common values |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 3.1x year-on-year (in 2010) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/AddressOfGamingRecKeeperUS/ZIPCode` | SZ | 2009–2012 | 16,742 | 2.26% |  |
| x2 | `IRS990ScheduleG/AddressOfGamingRecKeeperFrgn/PostalCode` | SZ | 2009–2012 | 8 | 0.000366% |  |
| x3 | `IRS990ScheduleG/PersonsWithBooksUSAddress/ZIPCode` | SZ | 2013–2013 | 6,938 | 2.29% |  |
| x4 | `IRS990ScheduleG/PersonsWithBooksForeignAddress/PostalCode` | SZ | 2013–2013 | 2 | 0.00066% |  |
| x5 | `IRS990ScheduleG/PersonsWithBooksUSAddress/ZIPCd` | SZ | 2014–2024 | 105,019 | 2.17% |  |
| x6 | `IRS990ScheduleG/PersonsWithBooksForeignAddress/ForeignPostalCd` | SZ | 2014–2024 | 37 | 0.0011% |  |
| x7 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfGamingRecordsKeeper/AddressForeign/PostalCode` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfGamingRecordsKeeper/AddressUS/ZIPCode` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.3k | 4.0k | 5.3k | 6.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 2 | 3 | 2 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 6.9k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 2 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 7.5k | 8.1k | 8.5k | 8.8k | 9.1k | 9.1k | 9.6k | 11k | 12k | 12k | 9.9k |
| x6 |  |  |  |  |  | 2 | 1 | 2 | 1 | 1 | 3 | 5 | 4 | 6 | 7 | 5 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |
| 990-EZ | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format           | Filings | Share |
|------------------|---------|-------|
| `99999`          | 123,035 | 95.6% |
| `999999999`      | 5,681   | 4.4%  |
| `A9A 9A9`        | 26      | 0.0%  |
| `99999-9999`     | 2       | 0.0%  |
| `A9A9A9`         | 1       | 0.0%  |
| `AAAAAA AAAAAAA` | 1       | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | CANADIAN CANCER SOCIETY | M4V 2Y7 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513499349300301_public.xml) |
| 2024 | 990 | x5 | Polish American Citizens Club | 18641 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349326723_public.xml) |
| 2013 | 990 | x4 | AMERICAN LEGION POST 66 | 46319 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431339349305223_public.xml) |
| 2013 | 990EZ | x3 | Veterans of Foreign Wars of the US Dept | 14590 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413079349200436_public.xml) |
| 2012 | 990 | x2 | THE PLATT-DUETSCHE CORPORATION | 68801 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400499349301030_public.xml) |
| 2012 | 990EZ | x1 | MANASOTA AIR CONDITIONING CONTRACTORS | 33702 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341289349200819_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GRK_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
