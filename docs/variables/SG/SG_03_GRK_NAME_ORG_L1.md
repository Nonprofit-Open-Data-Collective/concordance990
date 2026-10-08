# SG_03_GRK_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GRK_NAME_ORG_L1

Preparer of gaming/special events books and records - organization name
line 1

- Description: Name Of Gaming Rec Keeper Bus - BusinessNameLine1

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

3 / 3

xpaths observed / mapped

19k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/NameOfGamingRecKeeperBus/BusinessNameLine1` | SZ | 2009–2012 | 2,656 | 0.36% |  |
| x2 | `IRS990ScheduleG/PersonsWithBooksName/BusinessNameLine1` | SZ | 2013–2013 | 1,079 | 0.356% |  |
| x3 | `IRS990ScheduleG/PersonsWithBooksName/BusinessNameLine1Txt` | SZ | 2014–2024 | 15,028 | 0.314% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 224 | 590 | 857 | 985 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.1k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 1.1k | 1.2k | 1.2k | 1.3k | 1.3k | 1.3k | 1.3k | 1.5k | 1.6k | 1.7k | 1.4k |
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
| 990    | 16,205  | 19             | 73      |
| 990-EZ | 2,558   | 18             | 56      |

### Most common values

| Value                        | Filings | Share |
|------------------------------|---------|-------|
| `Fort Worth Bookkeeping Inc` | 422     | 27.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | SONS OF ITALY IN AMERICA | SONS OF ITALY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302669_public.xml) |
| 2013 | 990 | x2 | LIFELONG AIDS ALLIANCE | LIFELONG AIDS ALLIANCE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521359349309602_public.xml) |
| 2012 | 990 | x1 | GREATER FREDERICKSBURG HABITAT FOR HUMA… | VARIOUS PEOPLE IN ORGANIZATION HANDLES BOOKS AND RECORDS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343169349304264_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GRK_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
