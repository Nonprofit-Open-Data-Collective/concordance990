# SG_03_GRK_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GRK_ADDR_L2

Preparer of gaming/special events books and records - street address
line 2

- Description: Address Of Gaming Rec Keeper Frgn - AddressLine2

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

5 / 8

xpaths observed / mapped

2.2k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/AddressOfGamingRecKeeperUS/AddressLine2` | SZ | 2009–2012 | 245 | 0.0347% |  |
| x2 | `IRS990ScheduleG/PersonsWithBooksUSAddress/AddressLine2` | SZ | 2013–2013 | 103 | 0.034% |  |
| x3 | `IRS990ScheduleG/PersonsWithBooksForeignAddress/AddressLine2` | SZ | 2013–2013 | 1 | 0.00033% |  |
| x4 | `IRS990ScheduleG/PersonsWithBooksUSAddress/AddressLine2Txt` | SZ | 2014–2024 | 1,860 | 0.0379% |  |
| x5 | `IRS990ScheduleG/PersonsWithBooksForeignAddress/AddressLine2Txt` | SZ | 2020–2024 | 6 | 0.000219% |  |
| x6 | `IRS990ScheduleG/AddressOfGamingRecKeeperFrgn/AddressLine2` | SZ | not observed | 0 |  |  |
| x7 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfGamingRecordsKeeper/AddressForeign/AddressLine2` | SZ | not observed | 0 |  |  |
| x8 | `IRS990ScheduleG/Form990ScheduleGPartIII/AddressOfGamingRecordsKeeper/AddressUS/AddressLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 21 | 58 | 71 | 95 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 103 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  | 121 | 145 | 142 | 149 | 159 | 166 | 164 | 205 | 211 | 225 | 173 |
| x5 |  |  |  |  |  |  |  |  |  |  |  | 3 |  | 1 | 1 | 1 |
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
| 990    | 1,831   | 14             | 34      |
| 990-EZ | 384     | 14             | 33      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `PO BOX 101` | 26      | 11.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x5 | CANADIAN CANCER SOCIETY | SUITE 300 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513499349300301_public.xml) |
| 2024 | 990 | x4 | FRATERNAL ORDER OF EAGLES | 235 N COLUMBUS STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543069349300414_public.xml) |
| 2013 | 990 | x3 | AMERICAN LEGION POST 66 | 245 N INDIANA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431339349305223_public.xml) |
| 2013 | 990EZ | x2 | ROCKFORD SPORTS BOOSTERS | PO BOX 476 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510799349200706_public.xml) |
| 2012 | 990 | x1 | PLUMVILLE DIST VFD INC | PO BOX 176 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342669349300104_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GRK_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
