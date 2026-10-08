# SK_04_BOND_ISSUE_REFERENCE_NUM

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_04_BOND_ISSUE_REFERENCE_NUM

Bond issue reference number

- Description: Bond issue reference number (A-D)

- Table:

  [`SK-P04-T01-BOND-ARBITRAGE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p04-t01-bond-arbitrage)
  (many)

- Part: Part IV - Arbitrage

- Location:

  `SCHED-K-PART-04-LINE-00`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

74k

filings with a value

2012–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                     |
|--------|------------------------|--------------------------------------------|
| ✓ pass | Small code list        | up to 4 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape A                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case              |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartIV/BondReferenceCd` | SZ | 2012–2012 | 5,612 | 3.12% | 41.3% |
| x2 | `IRS990ScheduleK/TaxExemptBondsArbitrageGrp/BondReferenceCd` | SZ | 2013–2024 | 68,044 | 1.06% | 40.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  | 5.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.7k | 5.9k | 5.9k | 5.9k | 6.3k | 5.9k | 5.9k | 6.0k | 5.9k | 5.9k | 5.7k | 2.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `A`   | 73,620  | 57.4% |
| `B`   | 30,013  | 23.4% |
| `C`   | 15,617  | 12.2% |
| `D`   | 8,967   | 7.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_04_BOND_ISSUE_REFERENCE_NUM, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
