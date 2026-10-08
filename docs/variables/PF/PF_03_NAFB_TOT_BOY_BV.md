# PF_03_NAFB_TOT_BOY_BV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_03_NAFB_TOT_BOY_BV

Total Net Assets or Fund Balances at Beginning of Year

- Description: Total Net Assets or Fund Balances at Beginning of Year

- Table:

  [`PF-P03-T00-NET-ASSET-FUND-BALANCE-CHANGE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p03-t00-net-asset-fund-balance-change)
  (one)

- Part: Part III - Analysis of Changes in Net Assets or Fund Balances

- Location:

  `F990-PF-PART-03-LINE-01`

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.4x (IRS990PF/ChangesInNetAssetsFundBalances/TotalNetAssetsFundBalancesBOY, 990PF, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 1.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/ChangesInNetAssetsFundBalances/TotalNetAssetsFundBalancesBOY` | PF | 2009–2012 | 99,866 | 97.8% |  |
| x2 | `IRS990PF/ChgInNetAssetsFundBalancesGrp/TotNetAstOrFundBalancesBOYAmt` | PF | 2013–2024 | 1,002,390 | 94.2% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.3k | 25k | 34k | 39k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 45k | 52k | 57k | 61k | 66k | 73k | 85k | 110k | 113k | 116k | 117k | 108k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 98 | 98 | 98 | 98 | 98 | 97 | 97 | 97 | 97 | 96 | 96 | 96 | 95 | 95 | 94 | 94 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25    | Median  | P75       | P99        |
|--------|-----------|-----------|--------|------------|--------|---------|-----------|------------|
| 990-PF | 1,102,256 | 100.0%    | 2.8%   | 1.2%       | 78,111 | 451,920 | 1,663,667 | 58,607,382 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | C A LUCAS TRUST FBO 1ST CONG | 227727 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | 58632 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_03_NAFB_TOT_BOY_BV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
