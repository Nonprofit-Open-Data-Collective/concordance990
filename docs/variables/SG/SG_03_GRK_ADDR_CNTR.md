# SG_03_GRK_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GRK_ADDR_CNTR

Preparer of gaming/special events books and records - country

- Description: Persons With Books Foreign Address - Country

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

3 / 4

xpaths observed / mapped

72

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                     |
|--------|------------------------|--------------------------------------------|
| ✓ pass | Small code list        | up to 4 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                     |
| ✓ pass | Consistent letter case | 0.0% of values are lower case              |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `GAP` | ▲ warn | (variable) | no 990EZ filings in 2010,2011,2012,2013,2014,2016,2017,2018,2019,2020,2021, but filings before and after | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/AddressOfGamingRecKeeperFrgn/Country` | SZ | 2009–2012 | 10 | 0.000731% |  |
| x2 | `IRS990ScheduleG/PersonsWithBooksForeignAddress/Country` | SZ | 2013–2013 | 3 | 0.000989% |  |
| x3 | `IRS990ScheduleG/PersonsWithBooksForeignAddress/CountryCd` | SZ | 2014–2024 | 59 | 0.00153% |  |
| x4 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfGamingRecordsKeeper/AddressForeign/Country` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2 | 3 | 3 | 2 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 3 | 2 | 3 | 2 | 2 | 4 | 8 | 8 | 10 | 10 | 7 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 |  |  |  |  |  | \<1 |  |  |  |  |  |  | \<1 | \<1 |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 26      | 36.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | HOSPITAL FOR SICK CHILDREN FOUNDATION | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640489349302204_public.xml) |
| 2013 | 990 | x2 | AMERICAN LEGION POST 66 | MA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431339349305223_public.xml) |
| 2012 | 990 | x1 | THE PLATT-DUETSCHE CORPORATION | NE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400499349301030_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GRK_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
