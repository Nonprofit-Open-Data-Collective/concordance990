# F9_00_RETURN_INITIAL_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_RETURN_INITIAL_X

Initial return \[x\]

- Description: Inidcates this form is an initial return

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

4 / 5

xpaths observed / mapped

142k

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
| x1 | `IRS990EZ/InitialReturn` | EZ | 2009–2012 | 6,687 | 0.791% |  |
| x2 | `IRS990/InitialReturn` | PC | 2009–2012 | 4,084 | 0.458% |  |
| x3 | `IRS990EZ/InitialReturnInd` | EZ | 2013–2024 | 84,827 | 2.21% |  |
| x4 | `IRS990/InitialReturnInd` | PC | 2013–2024 | 46,424 | 1.09% |  |
| x5 | `IRS990/Form990PartI/InitialReturn` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 359 | 2.0k | 2.2k | 2.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 213 | 1.2k | 1.4k | 1.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 2.7k | 3.8k | 4.3k | 4.5k | 4.7k | 5.5k | 6.0k | 7.1k | 12k | 12k | 12k | 10k |
| x4 |  |  |  |  | 1.7k | 2.2k | 2.4k | 2.4k | 2.6k | 3.0k | 3.4k | 5.4k | 5.9k | 6.3k | 6.2k | 5.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ | 2 | 3 | 3 | 2 | 3 | 3 | 3 | 3 | 3 | 4 | 4 | 4 | 6 | 6 | 6 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 142,022 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | Science & Technology Education Project | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2024 | 990 | x4 | TOMBALL SCHOLARSHIP FOUNDATION TSF | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349305831_public.xml) |
| 2012 | 990EZ | x1 | THE COMMITTEE FOR THE CONFUCIUS | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302189349201015_public.xml) |
| 2012 | 990 | x2 | ROUNDTABLE ON SUSTAINABLE | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349300428_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_RETURN_INITIAL_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
