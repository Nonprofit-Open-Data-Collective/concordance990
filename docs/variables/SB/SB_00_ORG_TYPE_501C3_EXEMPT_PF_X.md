# SB_00_ORG_TYPE_501C3_EXEMPT_PF_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_00_ORG_TYPE_501C3_EXEMPT_PF_X

Organization type: 501(c)(3) exempt private foundation

- Description: Organization type: 501(c)(3) exempt private foundation

- Table:

  [`SB-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sb-p00-t00-header)
  (one)

- Part: Heading - Organization Type and Filing Rules

- Location:

  `SCHED-B-PART-01`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990, F990PF

2 / 2

xpaths observed / mapped

303k

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
| ⓘ info | Meaning of a blank | values are almost always X/true when present, so a missing value usually means unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/Organization501c3ExemptPF` |  | 2009–2012 | 27,102 | 3.54% |  |
| x2 | `IRS990ScheduleB/Organization501c3ExemptPFInd` |  | 2013–2024 | 275,534 | 5.17% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 571 | 6.6k | 8.9k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 13k | 15k | 16k | 18k | 19k | 20k | 23k | 29k | 32k | 31k | 31k | 30k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 24 | 26 | 26 | 28 | 27 | 28 | 28 | 28 | 28 | 26 | 26 | 25 | 27 | 25 | 25 | 26 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 302,636 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | TRUSS MANUFACTURERES ASSOC OF TEXAS | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543159349102514_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_00_ORG_TYPE_501C3_EXEMPT_PF_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
