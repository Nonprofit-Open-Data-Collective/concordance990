# SK_02_BOND_PROCEED_BOOK_RECORD_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_02_BOND_PROCEED_BOOK_RECORD_X

Maintains adequate books and records \[x\]

- Description: Adequate books and records maintained?

- Table:

  [`SK-P02-T01-BOND-PROCEEDS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p02-t01-bond-proceeds)
  (many)

- Part: Part II - Proceeds

- Location:

  `SCHED-K-PART-02-LINE-17`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

88k

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
| ⓘ info | Meaning of a blank | 8% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartII/AdequateBooksAndRecdsMaintaind` | SZ | 2009–2012 | 19,165 | 3.19% | 41.1% |
| x2 | `IRS990ScheduleK/TaxExemptBondsProceedsGrp/AdequateBooksAndRecMaintInd` | SZ | 2013–2024 | 68,668 | 1.06% | 40.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.9k | 5.1k | 5.5k | 5.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.8k | 5.9k | 6.0k | 6.0k | 6.3k | 6.0k | 6.0k | 6.1k | 6.0k | 5.9k | 5.8k | 2.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 9 | 4 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `1`     | 54,302  | 61.0% |
| `true`  | 27,606  | 31.0% |
| `0`     | 5,030   | 5.7%  |
| `false` | 2,046   | 2.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | KETCHUM-GRANDE MEMORIAL SCHOOL | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503149349303680_public.xml) |
| 2012 | 990 | x1 | Mercy Health System of Southeastern Pen… | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349308784_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_02_BOND_PROCEED_BOOK_RECORD_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
