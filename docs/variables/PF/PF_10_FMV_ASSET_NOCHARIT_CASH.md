# PF_10_FMV_ASSET_NOCHARIT_CASH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_10_FMV_ASSET_NOCHARIT_CASH

Average Monthly Cash Balances

- Description: Average Monthly Cash Balances

- Table:

  [`PF-P10-T00-MINIMUM-INVESTMENT-RETURN`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p10-t00-minimum-investment-return)
  (one)

- Part: Part X - Minimum Investment Return (2023: Part IX)

- Location:

  `F990-PF-PART-10-LINE-01B`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

1.1M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.6x (IRS990PF/MinimumInvestmentReturn/AvgMonthlyCashBalances, 990PF, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.3% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/MinimumInvestmentReturn/AvgMonthlyCashBalances` | PF | 2009–2012 | 101,391 | 99.2% |  |
| x2 | `IRS990PF/MinimumInvestmentReturnGrp/AverageMonthlyCashBalancesAmt` | PF | 2013–2024 | 1,032,978 | 98.2% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.3k | 25k | 34k | 40k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 46k | 53k | 58k | 62k | 67k | 74k | 86k | 113k | 117k | 121k | 122k | 113k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 100 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 98 | 98 | 98 | 98 | 98 | 98 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25   | Median | P75     | P99       |
|--------|-----------|-----------|--------|------------|-------|--------|---------|-----------|
| 990-PF | 1,134,369 | 100.0%    | 20.9%  | 0.3%       | 1,779 | 25,612 | 139,696 | 5,181,170 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | The Brad & Jill Jackson Family Foundati… | 11701 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502969349100900_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | 3437 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_10_FMV_ASSET_NOCHARIT_CASH, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
