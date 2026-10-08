# SG_03_GRK_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GRK_NAME_ORG_L2

Preparer of gaming/special events books and records - organization name
line 2

- Description: Name Of Gaming Rec Keeper Bus - BusinessNameLine2

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

672

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
| ⓘ info | No sign of truncation | IRS990ScheduleG/NameOfGamingRecKeeperBus/BusinessNameLine2: longest value is exactly 35 characters; IRS990ScheduleG/PersonsWithBooksName/BusinessNameLine2: longest value is exactly 35 characters; IRS990ScheduleG/PersonsWithBooksName/BusinessNameLine2Txt: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/NameOfGamingRecKeeperBus/BusinessNameLine2` | SZ | 2009–2012 | 101 | 0.0128% |  |
| x2 | `IRS990ScheduleG/PersonsWithBooksName/BusinessNameLine2` | SZ | 2013–2013 | 32 | 0.0106% |  |
| x3 | `IRS990ScheduleG/PersonsWithBooksName/BusinessNameLine2Txt` | SZ | 2014–2024 | 539 | 0.0103% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 12 | 20 | 34 | 35 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 32 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 32 | 39 | 47 | 48 | 53 | 49 | 52 | 57 | 58 | 57 | 47 |
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
| 990    | 573     | 20             | 35      |
| 990-EZ | 99      | 19             | 35      |

### Most common values

| Value             | Filings | Share |
|-------------------|---------|-------|
| `AMERICAN LEGION` | 20      | 10.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | SONS OF ITALY IN AMERICA | PRINCE OF PIEDMONT LODGE475 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302669_public.xml) |
| 2013 | 990 | x2 | AMERICAN LEGION POST 407 | AMERICAN LEGION POST 407 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443469349300119_public.xml) |
| 2012 | 990 | x1 | BENEVOLENT AND PROTECTIVE ORDER OF | THOMAS HAGBERG TREASURER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342679349300779_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GRK_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
