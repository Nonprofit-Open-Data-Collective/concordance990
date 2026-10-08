# PF_03_NAFB_OTH_INCREASE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_03_NAFB_OTH_INCREASE

Other Increases

- Description: Other Increases

- Table:

  [`PF-P03-T00-NET-ASSET-FUND-BALANCE-CHANGE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p03-t00-net-asset-fund-balance-change)
  (one)

- Part: Part III - Analysis of Changes in Net Assets or Fund Balances

- Location:

  `F990-PF-PART-03-LINE-03`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

699k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 552.8x (IRS990PF/ChgInNetAssetsFundBalancesGrp/OtherIncreasesAmt, 990PF, TY2017) |
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 23.8x (990PF: IRS990PF/ChangesInNetAssetsFundBalances/OtherIncreases vs IRS990PF/ChgInNetAssetsFundBalancesGrp/OtherIncreasesAmt) |
| ⓘ info | Sign convention | 0.4% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/ChangesInNetAssetsFundBalances/OtherIncreases` | PF | 2009–2012 | 60,839 | 58.6% |  |
| x2 | `IRS990PF/ChgInNetAssetsFundBalancesGrp/OtherIncreasesAmt` | PF | 2013–2024 | 637,751 | 61% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k | 15k | 20k | 23k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 27k | 31k | 33k | 37k | 41k | 45k | 55k | 73k | 74k | 73k | 77k | 70k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 66 | 61 | 59 | 59 | 59 | 58 | 57 | 59 | 60 | 59 | 63 | 64 | 62 | 60 | 62 | 61 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99       |
|--------|---------|-----------|--------|------------|-----|--------|-------|-----------|
| 990-PF | 698,590 | 100.0%    | 58.0%  | 0.4%       | 0   | 0      | 1,703 | 2,578,173 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THELMA WEBB SCHOLARSHIP | 4399 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | 162628 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_03_NAFB_OTH_INCREASE, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
