# SL_01_TRANSAC_CORRECTED_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_01_TRANSAC_CORRECTED_X

Transaction corrected \[x\]

- Description: Transaction corrected?

- Table:

  [`SL-P01-T01-EXCESS-BENEFIT-TRANSAC`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p01-t01-excess-benefit-transac)
  (many)

- Part: Part I - Excess Benefit Transactions

- Location:

  `SCHED-L-PART-01-LINE-01-COL-D`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

4.0k

filings with a value

2009–2024

tax years observed

2 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 80% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/DQPTable/TransactionCorrected` | SZ | 2009–2012 | 620 | 0.0208% | 30.3% |
| x2 | `IRS990ScheduleL/DisqualifiedPersonExBnftTrGrp/TransactionCorrectedInd` | SZ | 2013–2024 | 3,342 | 0.0296% | 73.7% |
| x3 | `IRS990ScheduleL/Form990ScheduleLPartI/DQPTable/TransactionCorrected` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 18 | 486 | 59 | 57 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 63 | 65 | 124 | 161 | 225 | 269 | 290 | 434 | 489 | 534 | 553 | 135 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 2,900   | 71.9% |
| `true`  | 593     | 14.7% |
| `0`     | 341     | 8.5%  |
| `1`     | 200     | 5.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NATIONAL RIFLE ASSOCIATION OF AMERICA | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523179349308667_public.xml) |
| 2012 | 990 | x1 | STANLEY BRITISH PRIMARY SCHOOL | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441679349300919_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_01_TRANSAC_CORRECTED_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
