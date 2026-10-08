# SB_01_CONTRIBUTOR_TYPE_NONCASH_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_01_CONTRIBUTOR_TYPE_NONCASH_X

Type of contribution: noncash (complete Part II)

- Description: Type of contribution: noncash (complete Part II)

- Table:

  [`SB-P01-T01-CONTRIBUTORS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sb-p01-t01-contributors)
  (many)

- Part: Part I - Contributors

- Location:

  `SCHED-B-PART-01`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990, F990PF

- Forms: SZ

2 / 2

xpaths observed / mapped

72k

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
| ⓘ info | Meaning of a blank | values are almost always X/true when present, so a missing value usually means unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/ContributorInfo/NoncashContributionType` | SZ | 2009–2012 | 5,598 | 0.768% | 26.3% |
| x2 | `IRS990ScheduleB/ContributorInformationGrp/NoncashContributionInd` | SZ | 2013–2024 | 66,805 | 1.29% | 23.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 108 | 1.3k | 1.7k | 2.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.9k | 3.6k | 3.9k | 4.3k | 4.7k | 4.6k | 5.8k | 7.3k | 8.4k | 6.8k | 7.1k | 7.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 5 | 5 | 5 | 6 | 6 | 7 | 7 | 7 | 7 | 6 | 7 | 6 | 7 | 6 | 6 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 72,403  | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | ISAAC & MARJORIE GINDI FOUNDATION INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523179349103192_public.xml) |
| 2012 | 990PF | x1 | THE MORAVITS FAMILY FOUNDATION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332419349100308_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_01_CONTRIBUTOR_TYPE_NONCASH_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
