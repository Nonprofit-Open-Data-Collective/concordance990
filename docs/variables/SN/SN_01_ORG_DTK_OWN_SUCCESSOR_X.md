# SN_01_ORG_DTK_OWN_SUCCESSOR_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_01_ORG_DTK_OWN_SUCCESSOR_X

Officer, director, trustee, or key employee did or will become a direct
or indirect owner of a successor or transferee organization \[x\]

- Description: Become a direct or indirect owner of a successor or
  transferee organization?

- Table:

  [`SN-P01-T00-LIQUIDATION-TERMINATION-DISSOLUTION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p01-t00-liquidation-termination-dissolution)
  (one)

- Part: Part I - Liquidation, Termination, or Dissolution

- Location:

  `SCHED-N-PART-01-LINE-02C`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

40k

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
| ⓘ info | Meaning of a blank | 99% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/OwnerOfSuccessor` | SZ | 2009–2012 | 3,887 | 0.549% |  |
| x2 | `IRS990ScheduleN/OwnerOfSuccessorInd` | SZ | 2013–2024 | 36,602 | 0.848% |  |
| x3 | `IRS990ScheduleN/Form990ScheduleNPartI/OwnerOfSuccessor` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 204 | 922 | 1.3k | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.9k | 2.1k | 2.3k | 2.5k | 2.7k | 3.0k | 2.9k | 3.5k | 3.6k | 4.1k | 4.2k | 3.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | 1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | 1 | 1 | 1 |
| 990-EZ | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 23,107  | 57.1% |
| `0`     | 17,123  | 42.3% |
| `true`  | 149     | 0.4%  |
| `1`     | 110     | 0.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | ECORITY | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543509349300449_public.xml) |
| 2012 | 990 | x1 | NORTHWEST AGING ASSOCIATION | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201440309349300464_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_01_ORG_DTK_OWN_SUCCESSOR_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
