# PF_04_CAP_GAINLOSS_GAIN_M_EXCESS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_04_CAP_GAINLOSS_GAIN_M_EXCESS

Gains Minus Excess or Losses

- Description: Gains Minus Excess or Losses

- Table:

  [`PF-P04-T01-INVEST-INCOME-TAX-CAPITAL-GAINLOSS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p04-t01-invest-income-tax-capital-gainloss)
  (many)

- Part: Part IV - Capital Gains and Losses for Tax on Investment Income

- Location:

  `F990-PF-PART-04-LINE-01-ABCDE-COL-L`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

639k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 4.9x (IRS990PF/CapGainsLossTxInvstIncmDetail/CapGainsLossTxInvstIncmGrp/GainsMinusExcessOrLossesAmt, 990PF, TY2017) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.9x |
| ⓘ info | Sign convention | 38.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/CapitalGainsAndLosses/CapitalGainsAndLossesInfo/GainsMinusExcessOrLosses` | PF | 2009–2012 | 51,779 | 49.8% | 80.3% |
| x2 | `IRS990PF/CapGainsLossTxInvstIncmDetail/CapGainsLossTxInvstIncmGrp/GainsMinusExcessOrLossesAmt` | PF | 2013–2024 | 587,082 | 55.4% | 81.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.3k | 13k | 18k | 20k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 23k | 28k | 33k | 35k | 38k | 44k | 52k | 67k | 68k | 68k | 68k | 64k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 55 | 51 | 51 | 50 | 51 | 52 | 56 | 56 | 56 | 58 | 59 | 58 | 57 | 55 | 54 | 55 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-----|---------|
| 990-PF | 638,861 | 100.0%    | 1.1%   | 38.0%      | -43 | 60     | 843 | 260,046 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | The Brad & Jill Jackson Family Foundati… | 78815 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502969349100900_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | 9658 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_04_CAP_GAINLOSS_GAIN_M_EXCESS, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
