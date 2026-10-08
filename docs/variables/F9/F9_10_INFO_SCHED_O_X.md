# F9_10_INFO_SCHED_O_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_10_INFO_SCHED_O_X

Schedule O contains response to Part 10 (PC) or Part 2 (EZ) \[x\]

- Description: Schedule O contains a response to a question in Part II

- Table:

  [`F9-P10-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p10-t00-balance-sheet)
  (one)

- Part: Part X - Balance Sheet

- Location:

  `F990-PC-PART-10-LINE-00`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

1.0M

filings with a value

2010–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | values are almost always X/true when present, so a missing value usually means unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/InfoInScheduleOPartII` | EZ | 2010–2012 | 129,301 | 54% |  |
| x2 | `IRS990/InfoInScheduleOPartX` | PC | 2012–2012 | 1,331 | 0.741% |  |
| x3 | `IRS990EZ/InfoInScheduleOPartIIInd` | EZ | 2013–2024 | 857,142 | 38.4% |  |
| x4 | `IRS990/InfoInScheduleOPartXInd` | PC | 2013–2024 | 32,462 | 0.92% |  |
| x5 | `IRS990EZ/InfoInScheduleOPartXInd` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 34k | 44k | 51k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  | 1.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 56k | 61k | 64k | 66k | 68k | 71k | 72k | 79k | 86k | 84k | 82k | 69k |
| x4 |  |  |  |  | 1.7k | 2.0k | 2.2k | 2.3k | 2.5k | 3.1k | 2.8k | 3.4k | 3.2k | 3.4k | 3.3k | 2.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ |  | 54 | 54 | 54 | 54 | 52 | 51 | 50 | 49 | 48 | 47 | 46 | 42 | 41 | 40 | 38 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings   | Share  |
|-------|-----------|--------|
| `X`   | 1,020,236 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | SAINT CLAIR HOUSE INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2024 | 990 | x4 | LAKE FOREST COUNTRY CLUB | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503169349304900_public.xml) |
| 2012 | 990EZ | x1 | CONCORD CHRISTIAN ACADEMY GIVING & GOING | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332829349200713_public.xml) |
| 2012 | 990 | x2 | SAMARITAN'S PURSE | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442039349300644_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_10_INFO_SCHED_O_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
