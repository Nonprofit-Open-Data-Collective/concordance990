# PF_01_REV_OTH_INCOME_NET

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_01_REV_OTH_INCOME_NET

Net Investment Income

- Description: Other Income - Net Investment Income

- Table:

  [`PF-P01-T00-REVENUE-EXPENSE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p01-t00-revenue-expense)
  (one)

- Part: Part I - Analysis of Revenue and Expenses

- Location:

  `F990-PF-PART-01-LINE-11-COL-B`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

228k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 51.4x (IRS990PF/AnalysisOfRevenueAndExpenses/OtherIncomeNetInvstIncmAmt, 990PF, TY2019) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 7.3% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisOfRevenueAndExpenses/OtherIncomeNetInvstIncm` | PF | 2009–2012 | 18,210 | 17.4% |  |
| x2 | `IRS990PF/AnalysisOfRevenueAndExpenses/OtherIncomeNetInvstIncmAmt` | PF | 2013–2024 | 209,507 | 21.5% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 605 | 4.8k | 5.8k | 7.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8.6k | 11k | 12k | 13k | 14k | 14k | 18k | 22k | 23k | 25k | 26k | 25k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 26 | 19 | 17 | 17 | 19 | 20 | 20 | 20 | 20 | 19 | 20 | 19 | 19 | 20 | 21 | 22 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99       |
|--------|---------|-----------|--------|------------|-----|--------|-------|-----------|
| 990-PF | 227,717 | 100.0%    | 28.1%  | 7.3%       | 0   | 163    | 7,805 | 1,655,108 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Fetosur Foundation USA Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543019349100704_public.xml) |
| 2012 | 990PF | x1 | MARIE OBRTLIK SCHOLARSHIP FUND | 1736 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341269349100909_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_01_REV_OTH_INCOME_NET, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
