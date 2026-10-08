# PF_06_CREDIT_PAY_TAX_EXTENSION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_06_CREDIT_PAY_TAX_EXTENSION

Tax Paid with Extension

- Description: Tax Paid with Extension

- Table:

  [`PF-P06-T00-INVEST-INCOME-EXCISE-TAX`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p06-t00-invest-income-excise-tax)
  (one)

- Part: Part VI - Excise Tax Based on Investment Income (2023: Part V)

- Location:

  `F990-PF-PART-06-LINE-06C`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

563k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 11.0x (IRS990PF/ExciseTaxBasedOnInvstIncmGrp/AppliedToEsTaxAmt, 990PF, TY2014) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 8.3x (990PF: IRS990PF/ExciseTaxBasedOnInvstIncmGrp/ExtsnRequestIncomeTaxPaidAmt vs IRS990PF/ExciseTaxBasedOnInvestmentIncm/TaxPaidWithExtension) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/ExciseTaxBasedOnInvestmentIncm/TaxPaidWithExtension` | PF | 2009–2012 | 16,959 | 15.7% |  |
| x2 | `IRS990PF/ExciseTaxBasedOnInvstIncmGrp/AppliedToEsTaxAmt` | PF | 2013–2016 | 43,380 | 19.4% |  |
| x3 | `IRS990PF/ExciseTaxBasedOnInvstIncmGrp/ExtsnRequestIncomeTaxPaidAmt` | PF | 2017–2024 | 502,375 | 62.7% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 293 | 4.5k | 5.9k | 6.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 7.7k | 12k | 12k | 12k |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  | 37k | 44k | 52k | 71k | 75k | 75k | 77k | 72k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 12 | 18 | 17 | 16 | 17 | 22 | 20 | 19 | 54 | 58 | 59 | 62 | 62 | 61 | 62 | 63 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99    |
|--------|---------|-----------|--------|------------|-----|--------|-----|--------|
| 990-PF | 562,714 | 100.0%    | 79.0%  | 0.0%       | 0   | 0      | 245 | 66,052 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | C A LUCAS TRUST FBO 1ST CONG | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2016 | 990PF | x2 | THE PATEL FAMILY FOUNDATION | 400 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201731789349100613_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_06_CREDIT_PAY_TAX_EXTENSION, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
