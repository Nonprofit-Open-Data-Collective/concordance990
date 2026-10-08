# F9_04_FRGN_OFFICE_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_04_FRGN_OFFICE_CNTR

Foreign office country

- Description: Name of foreign country

- Table:

  [`F9-P04-T00-REQUIRED-SCHEDULES-EZ`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p04-t00-required-schedules-ez)
  (one)

- Part: Part IV - Checklist of Required Schedules

- Location:

  `F990-EZ-PART-05-LINE-42C`

- Type: text (multi-value: repeated values joined in one cell)

- Scope: EZ – 990-EZ only

- Database: F990

- Forms: EZ

2 / 2

xpaths observed / mapped

8.8k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 121 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/ForeignOfficeCountry` | EZ | 2009–2012 | 993 | 0.4% | 2.5% |
| x2 | `IRS990EZ/ForeignOfficeCountryCd` | EZ | 2013–2024 | 7,817 | 0.439% | 2.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 26 | 260 | 332 | 375 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 432 | 473 | 508 | 548 | 555 | 598 | 626 | 687 | 842 | 874 | 888 | 786 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `OC`  | 697     | 16.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | ACADEMIC CONCEPTS INC | OC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501719349201130_public.xml) |
| 2012 | 990EZ | x1 | FRIENDS OF RAMANA'S GARDEN | IN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341689349200074_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_04_FRGN_OFFICE_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
