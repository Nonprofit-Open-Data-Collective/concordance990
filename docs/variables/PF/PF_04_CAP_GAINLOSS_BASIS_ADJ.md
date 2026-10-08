# PF_04_CAP_GAINLOSS_BASIS_ADJ

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_04_CAP_GAINLOSS_BASIS_ADJ

Adjusted Basis as of 12/31/69

- Description: Adjusted Basis as of 12/31/69

- Table:

  [`PF-P04-T01-INVEST-INCOME-TAX-CAPITAL-GAINLOSS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p04-t01-invest-income-tax-capital-gainloss)
  (many)

- Part: Part IV - Capital Gains and Losses for Tax on Investment Income

- Location:

  `F990-PF-PART-04-LINE-01-ABCDE-COL-J`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

24k

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
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/CapitalGainsAndLosses/CapitalGainsAndLossesInfo/AdjustedBasisAsOf123169` | PF | 2009–2012 | 2,575 | 2.47% | 70.4% |
| x2 | `IRS990PF/CapGainsLossTxInvstIncmDetail/CapGainsLossTxInvstIncmGrp/AdjustedBasisAsOf123169Amt` | PF | 2013–2024 | 21,233 | 1.71% | 70.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 56 | 684 | 850 | 985 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.1k | 1.2k | 1.3k | 1.3k | 1.4k | 1.5k | 1.8k | 2.6k | 2.4k | 2.2k | 2.2k | 2.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 2 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----|
| 990-PF | 23,808  | 100.0%    | 99.7%  | 0.0%       | 0   | 0      | 0   | 0   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Hermundslie Foundation | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349102643_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_04_CAP_GAINLOSS_BASIS_ADJ, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
