# SJ_01_COMP_PAY_EQUITY_BASED_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SJ_01_COMP_PAY_EQUITY_BASED_X

Any listed person participated in or received payment from an
equity-based compensation arrangement \[x\]

- Description: Equity based compensation arrangement?

- Table:

  [`SJ-P01-T00-COMPENSATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sj-p01-t00-compensation)
  (one)

- Part: Part I - Questions Regarding Compensation

- Location:

  `SCHED-J-PART-01-LINE-04C`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

850k

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
| ⓘ info | Meaning of a blank | 100% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleJ/EquityBasedCompArrangement` | SZ | 2009–2012 | 125,044 | 22.8% |  |
| x2 | `IRS990ScheduleJ/EquityBasedCompArrngmInd` | SZ | 2013–2024 | 724,819 | 19.8% |  |
| x3 | `IRS990ScheduleJ/Form990ScheduleJPartI/EquityBasedCompArrangement` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 14k | 33k | 38k | 41k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 44k | 48k | 51k | 53k | 58k | 59k | 62k | 68k | 72k | 76k | 80k | 55k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 42 | 26 | 24 | 23 | 22 | 22 | 22 | 22 | 22 | 22 | 22 | 21 | 21 | 22 | 22 | 20 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `0`     | 547,007 | 64.4% |
| `false` | 301,557 | 35.5% |
| `1`     | 838     | 0.1%  |
| `true`  | 461     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | YOUNG MEN'S CHRISTIAN ASSOCIATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2012 | 990 | x1 | ROUNDTABLE ON SUSTAINABLE | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349300428_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SJ_01_COMP_PAY_EQUITY_BASED_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
