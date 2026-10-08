# PF_03_NAFB_OTH_DECREASE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_03_NAFB_OTH_DECREASE

Other Decreases

- Description: Other Decreases

- Table:

  [`PF-P03-T00-NET-ASSET-FUND-BALANCE-CHANGE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p03-t00-net-asset-fund-balance-change)
  (one)

- Part: Part III - Analysis of Changes in Net Assets or Fund Balances

- Location:

  `F990-PF-PART-03-LINE-05`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

692k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 472.4x (IRS990PF/ChgInNetAssetsFundBalancesGrp/OtherDecreasesAmt, 990PF, TY2017) |
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 10.5x (990PF: IRS990PF/ChangesInNetAssetsFundBalances/OtherDecreases vs IRS990PF/ChgInNetAssetsFundBalancesGrp/OtherDecreasesAmt) |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/ChangesInNetAssetsFundBalances/OtherDecreases` | PF | 2009–2012 | 60,372 | 56.8% |  |
| x2 | `IRS990PF/ChgInNetAssetsFundBalancesGrp/OtherDecreasesAmt` | PF | 2013–2024 | 632,083 | 59% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k | 15k | 21k | 23k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 26k | 31k | 35k | 36k | 40k | 47k | 54k | 71k | 73k | 77k | 74k | 68k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 64 | 60 | 61 | 57 | 57 | 59 | 60 | 57 | 58 | 62 | 61 | 62 | 61 | 63 | 59 | 59 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99       |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----------|
| 990-PF | 692,455 | 100.0%    | 56.4%  | 0.1%       | 0   | 0      | 888 | 1,576,582 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | EDWIN D MARTIN AND JUDITH M MARTIN PRIV… | 60 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531279349100148_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_03_NAFB_OTH_DECREASE, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
