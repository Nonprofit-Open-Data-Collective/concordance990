# PF_01_REV_DIVIDEND_ADJ_NET

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_01_REV_DIVIDEND_ADJ_NET

Adjusted Net Income

- Description: Dividends and Interest from Securities - Adjusted Net
  Income

- Table:

  [`PF-P01-T00-REVENUE-EXPENSE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p01-t00-revenue-expense)
  (one)

- Part: Part I - Analysis of Revenue and Expenses

- Location:

  `F990-PF-PART-01-LINE-04-COL-C`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

176k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.7x (IRS990PF/AnalysisOfRevenueAndExpenses/DividendsAdjNetIncmAmt, 990PF, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisOfRevenueAndExpenses/DividendsAdjNetIncm` | PF | 2009–2012 | 15,422 | 15.7% |  |
| x2 | `IRS990PF/AnalysisOfRevenueAndExpenses/DividendsAdjNetIncmAmt` | PF | 2013–2024 | 160,813 | 16.4% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 364 | 3.6k | 5.1k | 6.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 7.4k | 8.4k | 8.9k | 9.5k | 10k | 11k | 12k | 17k | 18k | 20k | 20k | 19k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 16 | 14 | 15 | 16 | 16 | 16 | 15 | 15 | 15 | 14 | 14 | 15 | 15 | 16 | 16 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-------|--------|--------|-----------|
| 990-PF | 176,235 | 100.0%    | 12.3%  | 0.0%       | 2,506 | 11,291 | 43,514 | 1,036,873 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | CHILMARK FOUNDATION | 39558 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531329349100988_public.xml) |
| 2012 | 990PF | x1 | TONGANOXIE SENIOR CITIZENS | 2934 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322129349100407_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_01_REV_DIVIDEND_ADJ_NET, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
