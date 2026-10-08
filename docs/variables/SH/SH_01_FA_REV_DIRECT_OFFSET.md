# SH_01_FA_REV_DIRECT_OFFSET

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_01_FA_REV_DIRECT_OFFSET

Financial assistance at cost - direct offsetting revenue

- Description: Direct offsetting revenue

- Table:

  [`SH-P01-T00-FAP-COMMUNITY-BENEFIT-POLICY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p01-t00-fap-community-benefit-policy)
  (one)

- Part: Part I - Financial Assistance and Certain Other Community
  Benefits at Cost

- Location:

  `SCHED-H-PART-01-LINE-07A-COL-D`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 4

xpaths observed / mapped

14k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.9x (IRS990ScheduleH/CharityCareAtCost/DirectOffsettingRevenue, 990, TY2011) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.6% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/CharityCareAtCost/DirectOffsettingRevenue` | SZ | 2009–2012 | 3,717 | 0.537% |  |
| x2 | `IRS990ScheduleH/FinancialAssistanceAtCostTyp/DirectOffsettingRevenueAmt` | SZ | 2013–2024 | 10,163 | 0.145% |  |
| x3 | `IRS990ScheduleH/CharityCareAtCostGrp/DirectOffsettingRevenueAmt` | SZ | not observed | 0 |  |  |
| x4 | `IRS990ScheduleH/Form990ScheduleHPartI/CharityCareAtCost/DirectOffsettingRevenue` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 604 | 1.1k | 1.1k | 965 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 934 | 943 | 878 | 843 | 905 | 836 | 881 | 901 | 891 | 874 | 874 | 403 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median  | P75       | P99        |
|--------|---------|-----------|--------|------------|-----|---------|-----------|------------|
| 990    | 13,880  | 100.0%    | 37.1%  | 0.6%       | 0   | 130,646 | 1,440,099 | 43,221,128 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | MARIMED FOUNDATION FOR ISLAND HEALTH CA… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420309349300687_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_01_FA_REV_DIRECT_OFFSET, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
