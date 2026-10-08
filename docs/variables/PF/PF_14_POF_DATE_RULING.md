# PF_14_POF_DATE_RULING

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_14_POF_DATE_RULING

Date of Ruling

- Description: Date of Ruling

- Table:

  [`PF-P14-T00-PRIVATE-OPERATING-FOUNDATIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p14-t00-private-operating-foundations)
  (one)

- Part: Part XIV - Private Operating Foundations (2023: Part XIII)

- Location:

  `F990-PF-PART-14-LINE-01A`

- Type: date

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

54k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check     | Detail                       |
|--------|-----------------|------------------------------|
| ✓ pass | One date format | 100.0% use date (YYYY-MM-DD) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/PrivateOperatingFoundations/DateOfRuling` | PF | 2009–2012 | 4,653 | 4.62% |  |
| x2 | `IRS990PF/PrivateOperatingFoundationsGrp/PrivateOperatingFndtnRulingDt` | PF | 2013–2024 | 49,034 | 4.71% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 129 | 1.1k | 1.5k | 1.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.1k | 2.5k | 2.8k | 2.9k | 3.1k | 3.3k | 3.9k | 5.4k | 5.7k | 5.8k | 6.0k | 5.4k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 6 | 5 | 4 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | 4 | 5 | 5 | 5 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format       | Filings | Share  |
|--------------|---------|--------|
| `9999-99-99` | 53,687  | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | PLANTING SEEDS GROWING HOPE | 2005-10-25 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531219349100123_public.xml) |
| 2012 | 990PF | x1 | ADVANCE ATHLETICS INC | 2009-06-10 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312279349100291_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_14_POF_DATE_RULING, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
