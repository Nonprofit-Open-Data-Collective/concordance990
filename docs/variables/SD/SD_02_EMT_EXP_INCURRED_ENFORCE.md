# SD_02_EMT_EXP_INCURRED_ENFORCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_02_EMT_EXP_INCURRED_ENFORCE

Amount of expenses incurred in monitoring, inspecting, handling of
violations, and enforcing conservation easements

- Description: Amount of expenses incurred in monitoring or enforcing
  easements during the taxable year

- Table:

  [`SD-P02-T00-CONSERV-EASEMENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p02-t00-conserv-easements)
  (one)

- Part: Part II - Conservation Easements

- Location:

  `SCHED-D-PART-02-LINE-07`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

13k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.1x (IRS990ScheduleD/ExpensesIncurredEnforcementAmt, 990, TY2023) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.7x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/ExpensesIncurredForEnforcement` | SZ | 2009–2012 | 2,028 | 0.384% |  |
| x2 | `IRS990ScheduleD/ExpensesIncurredEnforcementAmt` | SZ | 2013–2024 | 10,800 | 0.273% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartII/ExpensesIncurredForEnforcement` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 194 | 519 | 625 | 690 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 739 | 784 | 818 | 849 | 900 | 900 | 936 | 1.0k | 1.0k | 1.0k | 1.0k | 758 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|-----|--------|--------|---------|
| 990    | 12,828  | 100.0%    | 24.7%  | 0.0%       | 0   | 2,672  | 16,422 | 373,183 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HISTORIC ANNAPOLIS INC | 975 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630779349301293_public.xml) |
| 2012 | 990 | x1 | Bedminster Regional Land Conservancy | 23551 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341289349301314_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_02_EMT_EXP_INCURRED_ENFORCE, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
