# F9_00_RETURN_FINAL_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_RETURN_FINAL_X

Final return \[x\]

- Description: Inidcates this form is a final return

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-B`

- Type: checkbox

- Scope: HD – header (all returns)

- Database: F990

- Forms: EZ, PC

4 / 9

xpaths observed / mapped

45k

filings with a value

2009–2024

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
| x1 | `IRS990EZ/TerminatedReturn` | EZ | 2009–2012 | 2,135 | 0.312% |  |
| x2 | `IRS990/TerminatedReturn` | PC | 2009–2012 | 2,079 | 0.289% |  |
| x3 | `IRS990EZ/FinalReturnInd` | EZ | 2013–2024 | 21,608 | 0.538% |  |
| x4 | `IRS990/FinalReturnInd` | PC | 2013–2024 | 19,604 | 0.426% |  |
| x5 | `IRS990/FinalReturn` | PC | not observed | 0 |  |  |
| x6 | `IRS990/Form990PartI/TerminationReturn` | PC | not observed | 0 |  |  |
| x7 | `IRS990/TerminationReturn` | PC | not observed | 0 |  |  |
| x8 | `IRS990EZ/FinalReturn` | EZ | not observed | 0 |  |  |
| x9 | `IRS990EZ/TerminationReturn` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 102 | 500 | 679 | 854 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 96 | 485 | 707 | 791 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 929 | 1.1k | 1.2k | 1.4k | 1.6k | 1.7k | 1.7k | 1.9k | 2.4k | 2.6k | 2.7k | 2.5k |
| x4 |  |  |  |  | 1.0k | 1.1k | 1.3k | 1.4k | 1.5k | 1.7k | 1.7k | 2.0k | 1.8k | 2.0k | 2.1k | 1.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 45,426  | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | Pacific Shores Property Owners Assocn | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511329349203641_public.xml) |
| 2024 | 990 | x4 | NORTH AMERICAN SWISS ALLIANCE | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513149349304201_public.xml) |
| 2012 | 990EZ | x1 | BARRON COUNTY RESTORATIVE JUSTICE | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322269349201222_public.xml) |
| 2012 | 990 | x2 | ENVIRONMENTAL AIR SYSTEMS INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422879349300542_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_RETURN_FINAL_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
