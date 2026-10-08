# PF_01_REV_SALE_ASSET_NET_BOOKS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_01_REV_SALE_ASSET_NET_BOOKS

Revenue and Expenses per Books

- Description: Net Gain from Sale of Assets - Revenue and Expenses per
  Books

- Table:

  [`PF-P01-T00-REVENUE-EXPENSE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p01-t00-revenue-expense)
  (one)

- Part: Part I - Analysis of Revenue and Expenses

- Location:

  `F990-PF-PART-01-LINE-06A-COL-A`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

737k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 16.4x (IRS990PF/AnalysisOfRevenueAndExpenses/NetGainSaleAstRevAndExpnssAmt, 990PF, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.7x |
| ⓘ info | Sign convention | 17.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisOfRevenueAndExpenses/NetGainSaleAssetsRevAndExpnss` | PF | 2009–2012 | 62,734 | 59.8% |  |
| x2 | `IRS990PF/AnalysisOfRevenueAndExpenses/NetGainSaleAstRevAndExpnssAmt` | PF | 2013–2024 | 673,883 | 64.7% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 17k | 21k | 24k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 28k | 33k | 36k | 39k | 42k | 48k | 57k | 76k | 79k | 80k | 81k | 74k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 67 | 66 | 60 | 60 | 61 | 62 | 62 | 62 | 62 | 63 | 65 | 66 | 66 | 65 | 65 | 65 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990-PF | 736,617 | 100.0%    | 5.0%   | 17.2%      | 588 | 16,419 | 76,501 | 4,085,610 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THELMA WEBB SCHOLARSHIP | 121332 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | 6124 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_01_REV_SALE_ASSET_NET_BOOKS, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
