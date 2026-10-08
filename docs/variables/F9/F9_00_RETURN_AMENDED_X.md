# F9_00_RETURN_AMENDED_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_RETURN_AMENDED_X

Amended return \[x\]

- Description: Inidcates this form is an amended return

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

67k

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
| x1 | `IRS990/AmendedReturn` | PC | 2009–2012 | 4,677 | 0.598% |  |
| x2 | `IRS990EZ/AmendedReturn` | EZ | 2009–2012 | 1,061 | 0.152% |  |
| x3 | `IRS990/AmendedReturnInd` | PC | 2013–2024 | 43,996 | 0.617% |  |
| x4 | `IRS990EZ/AmendedReturnInd` | EZ | 2013–2024 | 17,715 | 0.37% |  |
| x5 | `IRS990/Form990PartI/AmendedReturn` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 389 | 1.1k | 1.5k | 1.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 78 | 247 | 321 | 415 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.7k | 2.1k | 2.2k | 2.3k | 2.6k | 2.9k | 4.0k | 5.4k | 5.9k | 6.4k | 5.7k | 2.8k |
| x4 |  |  |  |  | 496 | 563 | 637 | 796 | 881 | 1.0k | 1.5k | 2.0k | 2.8k | 2.7k | 2.6k | 1.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 1 |
| 990-EZ | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 67,449  | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | FOUNDATION FOR HEALTH ENVIRONMENTS RESEA | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349201597_public.xml) |
| 2024 | 990 | x3 | BRUCE TUCKER MEMORIAL SCHOLARSHIP | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501619349300410_public.xml) |
| 2012 | 990EZ | x2 | NEWJ GLOUCESTER CITY PBA LOCAL 40 | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349200517_public.xml) |
| 2012 | 990 | x1 | PINNACLE CREDIT UNION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301299349301355_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_RETURN_AMENDED_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
