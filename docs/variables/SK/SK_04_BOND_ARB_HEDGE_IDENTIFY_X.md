# SK_04_BOND_ARB_HEDGE_IDENTIFY_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_04_BOND_ARB_HEDGE_IDENTIFY_X

Entered into a qualified hedge \[x\]

- Description: Hedge identified in books and records?

- Table:

  [`SK-P04-T01-BOND-ARBITRAGE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p04-t01-bond-arbitrage)
  (many)

- Part: Part IV - Arbitrage

- Location:

  `SCHED-K-PART-04-LINE-04A`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

86k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 83% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartIV/HedgeIdentifiedInBooksAndRecds` | SZ | 2009–2012 | 18,561 | 3.1% | 41.6% |
| x2 | `IRS990ScheduleK/TaxExemptBondsArbitrageGrp/HedgeIdentifiedInBksAndRecInd` | SZ | 2013–2024 | 67,563 | 1.05% | 40.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.7k | 4.9k | 5.3k | 5.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.7k | 5.8k | 5.9k | 5.9k | 6.2k | 5.9k | 5.9k | 6.0k | 5.9k | 5.8k | 5.7k | 2.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 8 | 4 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `0`     | 50,789  | 55.0% |
| `false` | 25,489  | 27.6% |
| `1`     | 11,050  | 12.0% |
| `true`  | 5,002   | 5.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | Mercy Health System of Southeastern Pen… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349308784_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_04_BOND_ARB_HEDGE_IDENTIFY_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
