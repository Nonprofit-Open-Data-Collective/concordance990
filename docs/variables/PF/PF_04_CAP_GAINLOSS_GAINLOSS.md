# PF_04_CAP_GAINLOSS_GAINLOSS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_04_CAP_GAINLOSS_GAINLOSS

Gain or Loss

- Description: Cap Gains Loss Tx Invst Incm Grp - Gain or Loss

- Table:

  [`PF-P04-T01-INVEST-INCOME-TAX-CAPITAL-GAINLOSS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p04-t01-invest-income-tax-capital-gainloss)
  (many)

- Part: Part IV - Capital Gains and Losses for Tax on Investment Income

- Location:

  `F990-PF-PART-04-LINE-01-ABCDE-COL-H`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

648k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 11.5x (IRS990PF/CapGainsLossTxInvstIncmDetail/CapGainsLossTxInvstIncmGrp/GainOrLossAmt, 990PF, TY2020) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.2x (990PF: IRS990PF/CapGainsLossTxInvstIncmDetail/CapGainsLossTxInvstIncmGrp/GainOrLossAmt vs IRS990PF/CapitalGainsAndLosses/CapitalGainsAndLossesInfo/GainOrLoss) |
| ⓘ info | Sign convention | 26.3% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/CapitalGainsAndLosses/CapitalGainsAndLossesInfo/GainOrLoss` | PF | 2009–2012 | 52,601 | 50.9% | 79.8% |
| x2 | `IRS990PF/CapGainsLossTxInvstIncmDetail/CapGainsLossTxInvstIncmGrp/GainOrLossAmt` | PF | 2013–2024 | 595,619 | 55.9% | 81.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.3k | 13k | 18k | 20k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 24k | 28k | 33k | 36k | 39k | 44k | 53k | 68k | 69k | 69k | 68k | 64k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 55 | 52 | 52 | 51 | 52 | 53 | 57 | 57 | 57 | 59 | 60 | 59 | 58 | 56 | 55 | 56 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990-PF | 648,220 | 100.0%    | 0.7%   | 26.3%      | -30 | 110    | 1,427 | 341,730 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | The Brad & Jill Jackson Family Foundati… | 78815 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502969349100900_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | 7706 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_04_CAP_GAINLOSS_GAINLOSS, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
