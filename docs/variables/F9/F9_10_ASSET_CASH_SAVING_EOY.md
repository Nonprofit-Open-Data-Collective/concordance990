# F9_10_ASSET_CASH_SAVING_EOY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_10_ASSET_CASH_SAVING_EOY

Cash, savings, and investments - end of year

- Description: Cash, savings, and investments, end of year
  (F990-PC-PART-10-LINE-01-02-11-12-13-EOY-COMBINED:
  F990-EZ-PART-02-LINE-22-EOY)

- Table:

  [`F9-P10-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p10-t00-balance-sheet)
  (one)

- Part: Part X - Balance Sheet

- Location:

  `F990-PC-PART-10-LINE-01-02-11-12-13-EOY`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ

2 / 2

xpaths observed / mapped

2.1M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.4x (IRS990EZ/CashSavingsAndInvestments/EOY, 990EZ, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/CashSavingsAndInvestments/EOY` | EZ | 2009–2012 | 248,081 | 97.3% |  |
| x2 | `IRS990EZ/CashSavingsAndInvestmentsGrp/EOYAmt` | EZ | 2013–2024 | 1,808,276 | 95.5% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 15k | 62k | 80k | 91k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 101k | 113k | 121k | 126k | 134k | 144k | 147k | 163k | 195k | 197k | 197k | 171k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | 98 | 98 | 97 | 97 | 97 | 97 | 97 | 96 | 96 | 96 | 96 | 96 | 96 | 96 | 96 | 96 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25    | Median | P75    | P99     |
|--------|-----------|-----------|--------|------------|--------|--------|--------|---------|
| 990-EZ | 2,056,347 | 100.0%    | 2.0%   | 0.0%       | 13,131 | 37,221 | 85,419 | 389,542 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | THE CREATIVES PROJECT INC | 60670 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2012 | 990EZ | x1 | CONCORD CHRISTIAN ACADEMY GIVING & GOING | 18849 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332829349200713_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_10_ASSET_CASH_SAVING_EOY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
