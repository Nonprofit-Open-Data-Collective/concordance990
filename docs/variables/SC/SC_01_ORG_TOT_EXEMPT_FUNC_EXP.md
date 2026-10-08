# SC_01_ORG_TOT_EXEMPT_FUNC_EXP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_01_ORG_TOT_EXEMPT_FUNC_EXP

Total exempt function expenditures

- Description: Total of direct and indirect exempt function
  expenditures. Add lines 1 and 2

- Table:

  [`SC-P01-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p01-t00-lobby)
  (one)

- Part: Part I - Political Campaign Activities (I-A, I-B, I-C)

- Location:

  `SCHED-C-PART-01-C-LINE-03`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

20k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.3x (IRS990ScheduleC/TotalExemptFunctionExpendAmt, 990, TY2018) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.2x (990EZ: IRS990ScheduleC/TotalExmptFunctionExpenditures vs IRS990ScheduleC/TotalExemptFunctionExpendAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/TotalExmptFunctionExpenditures` | SZ | 2009–2012 | 2,366 | 0.293% |  |
| x2 | `IRS990ScheduleC/TotalExemptFunctionExpendAmt` | SZ | 2013–2024 | 17,320 | 0.392% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartI/TotalExmptFunctionExpenditures` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 85 | 844 | 636 | 801 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 828 | 974 | 1.0k | 1.2k | 1.3k | 1.5k | 1.4k | 1.8k | 1.7k | 2.0k | 1.9k | 1.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-------|--------|--------|-----------|
| 990    | 16,803  | 100.0%    | 9.8%   | 0.0%       | 2,184 | 11,150 | 54,018 | 2,415,962 |
| 990-EZ | 2,883   | 100.0%    | 27.8%  | 0.0%       | 450   | 1,918  | 6,338  | 51,462    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE INSTITUTE FOR RESPONSIBLE ALCOHOL | 25000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523289349301112_public.xml) |
| 2012 | 990 | x1 | IBEW Local Union 73 | 25200 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201340789349300209_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_01_ORG_TOT_EXEMPT_FUNC_EXP, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
