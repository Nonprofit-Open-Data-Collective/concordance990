# F9_08_REV_OTH_SALE_LESS_COST

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_SALE_LESS_COST

Cost of assets and sales expenses

- Description: Cost or other basis and sales expenses
  (F990-PC-PART-08-LINE-07B-COL-i-ii-COMBINED: F990-EZ-PART-01-LINE-05B)

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-07B-COL-i-ii`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ

2 / 2

xpaths observed / mapped

897k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 117.6x (IRS990EZ/CostOrOtherBasisExpenseSaleAmt, 990EZ, TY2021) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/CostOtherBasisAndSalesExpenses` | EZ | 2009–2012 | 107,089 | 43.3% |  |
| x2 | `IRS990EZ/CostOrOtherBasisExpenseSaleAmt` | EZ | 2013–2024 | 790,195 | 44.1% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.3k | 26k | 34k | 41k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 44k | 49k | 52k | 54k | 57k | 61k | 60k | 69k | 87k | 89k | 90k | 79k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | 41 | 41 | 42 | 43 | 42 | 42 | 42 | 41 | 41 | 41 | 40 | 40 | 43 | 43 | 43 | 44 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99    |
|--------|---------|-----------|--------|------------|-----|--------|-----|--------|
| 990-EZ | 897,283 | 100.0%    | 93.5%  | 0.0%       | 0   | 0      | 0   | 56,270 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | OLD TIMERS BASEBALL ASSN OF PORTLAND INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541289349201694_public.xml) |
| 2012 | 990EZ | x1 | Electricians Building Corporation | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322679349200717_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_SALE_LESS_COST, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
