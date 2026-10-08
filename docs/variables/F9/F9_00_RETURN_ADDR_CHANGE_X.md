# F9_00_RETURN_ADDR_CHANGE_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_RETURN_ADDR_CHANGE_X

Address change \[x\]

- Description: Indicates this form has an address change

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

246k

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
| x1 | `IRS990/AddressChange` | PC | 2009–2012 | 19,701 | 2.53% |  |
| x2 | `IRS990EZ/AddressChange` | EZ | 2009–2012 | 12,706 | 1.62% |  |
| x3 | `IRS990/AddressChangeInd` | PC | 2013–2024 | 133,566 | 2.4% |  |
| x4 | `IRS990EZ/AddressChangeInd` | EZ | 2013–2024 | 80,402 | 1.65% |  |
| x5 | `IRS990/Form990PartI/AddressChange` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.3k | 5.0k | 6.4k | 6.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 938 | 3.3k | 4.0k | 4.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 7.9k | 8.8k | 9.3k | 9.4k | 10k | 11k | 11k | 13k | 14k | 14k | 14k | 11k |
| x4 |  |  |  |  | 4.8k | 5.3k | 5.4k | 5.4k | 5.6k | 6.0k | 6.2k | 7.2k | 9.1k | 9.1k | 8.8k | 7.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 |
| 990-EZ | 6 | 5 | 5 | 5 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 246,375 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | Century Cancer Fund | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523119349200302_public.xml) |
| 2024 | 990 | x3 | SOCIAL VENTURE PARTNERS INTERNATIONAL | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349308195_public.xml) |
| 2012 | 990EZ | x2 | MINNESOTA COOPERATIVE EDUCATION FOUNDAT… | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400429349200040_public.xml) |
| 2012 | 990 | x1 | Golden Rule Community Development Corp | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312539349300736_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_RETURN_ADDR_CHANGE_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
