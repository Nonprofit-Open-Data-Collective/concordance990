# SK_02_BOND_PROCEED_Y_COMPLETION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_02_BOND_PROCEED_Y_COMPLETION

Year of substantial completion

- Description: Year of substantial completion

- Table:

  [`SK-P02-T01-BOND-PROCEEDS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p02-t01-bond-proceeds)
  (many)

- Part: Part II - Proceeds

- Location:

  `SCHED-K-PART-02-LINE-13`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

66k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check     | Detail                 |
|--------|-----------------|------------------------|
| ✓ pass | One date format | 100.0% use year (YYYY) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartII/YearOfSubstCompletion` | SZ | 2009–2012 | 15,420 | 2.53% | 39.6% |
| x2 | `IRS990ScheduleK/TaxExemptBondsProceedsGrp/SubstantialCompletionYr` | SZ | 2013–2024 | 50,469 | 0.76% | 39.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.3k | 4.1k | 4.4k | 4.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.5k | 4.6k | 4.5k | 4.4k | 4.6k | 4.3k | 4.3k | 4.4k | 4.3k | 4.2k | 4.2k | 2.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format | Filings | Share  |
|--------|---------|--------|
| `9999` | 65,889  | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | 2008 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | 2008 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_02_BOND_PROCEED_Y_COMPLETION, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
