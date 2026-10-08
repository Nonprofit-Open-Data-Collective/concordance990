# SH_01_MEDICAID_PCT_EXP_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_01_MEDICAID_PCT_EXP_TOT

Medicaid - percent of total expense

- Description: Percent of total expense

- Table:

  [`SH-P01-T00-FAP-COMMUNITY-BENEFIT-POLICY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p01-t00-fap-community-benefit-policy)
  (one)

- Part: Part I - Financial Assistance and Certain Other Community
  Benefits at Cost

- Location:

  `SCHED-H-PART-01-LINE-07B-COL-F`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

32k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.3x (IRS990ScheduleH/UnreimbursedMedicaidGrp/TotalExpensePct, 990, TY2023) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleH/UnreimbursedMedicaid/PercentOfTotalExpense: fraction (0-1); IRS990ScheduleH/UnreimbursedMedicaidGrp/TotalExpensePct: fraction (0-1) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/UnreimbursedMedicaid/PercentOfTotalExpense` | SZ | 2009–2012 | 7,879 | 1.21% |  |
| x2 | `IRS990ScheduleH/UnreimbursedMedicaidGrp/TotalExpensePct` | SZ | 2013–2024 | 23,823 | 0.307% |  |
| x3 | `IRS990ScheduleH/Form990ScheduleHPartI/UnreimbursedMedicaid/PercentOfTotalExpense` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.3k | 2.2k | 2.2k | 2.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.1k | 2.1k | 2.1k | 2.1k | 2.1k | 2.1k | 2.0k | 2.1k | 2.1k | 2.1k | 2.1k | 850 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25  | Median | P75  | P99  |
|--------|---------|-----------|--------|------------|------|--------|------|------|
| 990    | 31,702  | 100.0%    | 9.5%   | 0.0%       | 0.01 | 0.03   | 0.06 | 0.19 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | 0.04620 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | SOUTH LYON HEALTH CENTER DBA | 0.03390 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400489349300305_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_01_MEDICAID_PCT_EXP_TOT, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
