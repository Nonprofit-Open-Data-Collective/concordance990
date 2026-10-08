# F9_05_INFO_SCHED_O_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_INFO_SCHED_O_X

Schedule O contains response to Part 5 \[x\]

- Description: Does Schedule O contains a response to a question in Part
  V?

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-00`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PZ

4 / 4

xpaths observed / mapped

583k

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
| x1 | `IRS990EZ/InfoInScheduleOPartV` | EZ | 2010–2012 | 92,134 | 38.4% |  |
| x2 | `IRS990/InfoInScheduleOPartV` | PZ | 2010–2012 | 9,121 | 1.97% |  |
| x3 | `IRS990EZ/InfoInScheduleOPartVInd` | EZ | 2013–2024 | 415,189 | 14.3% |  |
| x4 | `IRS990/InfoInScheduleOPartVInd` | PZ | 2013–2024 | 66,099 | 1.89% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 24k | 32k | 36k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 2.5k | 3.1k | 3.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 40k | 44k | 46k | 47k | 29k | 29k | 29k | 31k | 33k | 32k | 31k | 26k |
| x4 |  |  |  |  | 3.8k | 3.8k | 4.2k | 4.4k | 4.8k | 5.4k | 5.6k | 6.9k | 7.3k | 7.4k | 7.4k | 5.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ |  | 38 | 39 | 38 | 38 | 38 | 37 | 36 | 20 | 19 | 19 | 18 | 16 | 15 | 15 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 582,543 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | YOUNG VISIONARIES BOARD INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521509349200107_public.xml) |
| 2024 | 990 | x4 | RISEWELL COMMUNITY SERVICES INC FKA | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990EZ | x1 | THE MASONIC LIBRARY AND MUSEUM OF INDIA… | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332279349200753_public.xml) |
| 2012 | 990 | x2 | University Mound Ladies Home | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323199349302832_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_INFO_SCHED_O_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
