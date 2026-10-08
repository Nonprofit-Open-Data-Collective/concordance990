# F9_03_INFO_SCHED_O_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_03_INFO_SCHED_O_X

Schedule O contains response to Part 3 \[x\]

- Description: Was Schedule O used to respond to any part of Part III?

- Table:

  [`F9-P03-T00-PROGRAMS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-programs)
  (one)

- Part: Part III - Statement of Program Service Accomplishments

- Location:

  `F990-PC-PART-03-LINE-00`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 4

xpaths observed / mapped

1.9M

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
| x1 | `IRS990/InfoInScheduleOPartIII` | PC | 2010–2012 | 149,456 | 32.6% |  |
| x2 | `IRS990EZ/InfoInScheduleOPartIII` | EZ | 2010–2012 | 85,739 | 36% |  |
| x3 | `IRS990/InfoInScheduleOPartIIIInd` | PC | 2013–2024 | 1,061,190 | 29.5% |  |
| x4 | `IRS990EZ/InfoInScheduleOPartIIIInd` | EZ | 2013–2024 | 624,722 | 28.4% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 40k | 51k | 59k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 23k | 29k | 34k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 65k | 70k | 76k | 79k | 85k | 88k | 92k | 103k | 105k | 108k | 108k | 82k |
| x4 |  |  |  |  | 38k | 42k | 45k | 48k | 50k | 53k | 54k | 58k | 63k | 62k | 61k | 51k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 32 | 32 | 33 | 33 | 32 | 32 | 32 | 33 | 32 | 33 | 32 | 31 | 31 | 30 | 30 |
| 990-EZ |  | 36 | 36 | 36 | 36 | 36 | 36 | 36 | 36 | 35 | 35 | 34 | 31 | 30 | 30 | 28 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings   | Share  |
|-------|-----------|--------|
| `X`   | 1,921,107 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | KYLE GOLDBERG MEMORIAL FOUNDATION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511219349201801_public.xml) |
| 2024 | 990 | x3 | YOUNG MEN'S CHRISTIAN ASSOCIATION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2012 | 990EZ | x2 | ART FORMS & THEATRE CONCEPTS INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |
| 2012 | 990 | x1 | Oregon Council of the Blind | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331219349301263_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_03_INFO_SCHED_O_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
