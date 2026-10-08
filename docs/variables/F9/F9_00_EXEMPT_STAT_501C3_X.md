# F9_00_EXEMPT_STAT_501C3_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_EXEMPT_STAT_501C3_X

501(c)(3) organization \[x\]

- Description: Indicates a 501(c)(3) organization

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-I`

- Type: checkbox

- Scope: HD – header (all returns)

- Database: F990

- Forms: EZ, PC

4 / 4

xpaths observed / mapped

4.5M

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
| x1 | `IRS990/Organization501c3` | PC | 2010–2012 | 348,990 | 49.7% |  |
| x2 | `IRS990EZ/Organization501c3` | EZ | 2010–2012 | 175,437 | 25.2% |  |
| x3 | `IRS990/Organization501c3Ind` | PC | 2013–2024 | 2,553,104 | 46.1% |  |
| x4 | `IRS990EZ/Organization501c3Ind` | EZ | 2013–2024 | 1,442,703 | 30.9% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 93k | 120k | 136k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 46k | 60k | 69k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 151k | 166k | 177k | 185k | 200k | 207k | 217k | 243k | 257k | 268k | 274k | 211k |
| x4 |  |  |  |  | 77k | 87k | 94k | 98k | 106k | 115k | 118k | 130k | 156k | 160k | 161k | 141k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 75 | 76 | 76 | 76 | 76 | 76 | 76 | 76 | 76 | 76 | 76 | 76 | 77 | 77 | 76 |
| 990-EZ |  | 73 | 73 | 74 | 74 | 74 | 75 | 75 | 76 | 77 | 77 | 77 | 77 | 78 | 78 | 79 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings   | Share  |
|-------|-----------|--------|
| `X`   | 4,520,234 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | Science & Technology Education Project | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2024 | 990 | x3 | RISEWELL COMMUNITY SERVICES INC FKA | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990EZ | x2 | ART FORMS & THEATRE CONCEPTS INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_EXEMPT_STAT_501C3_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
