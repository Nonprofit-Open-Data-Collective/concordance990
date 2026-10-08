# PF_04_CAP_GAINLOSS_DESC_ASSET

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_04_CAP_GAINLOSS_DESC_ASSET

Description of Asset

- Description: Description of Asset

- Table:

  [`PF-P04-T01-INVEST-INCOME-TAX-CAPITAL-GAINLOSS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p04-t01-invest-income-tax-capital-gainloss)
  (many)

- Part: Part IV - Capital Gains and Losses for Tax on Investment Income

- Location:

  `F990-PF-PART-04-LINE-01-ABCDE-COL-A`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

649k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/CapitalGainsAndLosses/CapitalGainsAndLossesInfo/DescriptionOfAsset` | PF | 2009–2012 | 52,797 | 51.1% | 80.0% |
| x2 | `IRS990PF/CapGainsLossTxInvstIncmDetail/CapGainsLossTxInvstIncmGrp/PropertyDesc` | PF | 2013–2024 | 595,898 | 55.9% | 82.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.3k | 13k | 18k | 20k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 24k | 29k | 33k | 36k | 39k | 44k | 53k | 68k | 69k | 69k | 68k | 64k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 55 | 52 | 52 | 51 | 52 | 53 | 57 | 57 | 57 | 59 | 60 | 59 | 58 | 56 | 55 | 56 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 648,695 | 27             | 102     |

### Most common values

| Value                                    | Filings | Share |
|------------------------------------------|---------|-------|
| `CAPITAL GAIN DIVIDENDS`                 | 156,484 | 39.1% |
| `CAPITAL GAINS DIVIDENDS`                | 114,872 | 28.7% |
| `PUBLICLY TRADED SECURITIES`             | 58,963  | 14.7% |
| `Publicly-traded Securities`             | 14,414  | 3.6%  |
| `Capital Gain Dividends`                 | 13,961  | 3.5%  |
| `Capital Gains Dividends`                | 11,437  | 2.9%  |
| `CAPITAL GAIN DISTRIBUTIONS`             | 6,577   | 1.6%  |
| `SALES OF PUBLICLY TRADED SECURITIES`    | 4,899   | 1.2%  |
| `1. VANGUARD S&P 500 ETF`                | 2,205   | 0.6%  |
| `1. VANGUARD 500 INDEX FUND SHS ETF`     | 1,461   | 0.4%  |
| `1. VANGUARD FTSE DEVELOPED MARKETS ETF` | 1,434   | 0.4%  |
| `2. VANGUARD 500 INDEX FUND SHS ETF`     | 1,333   | 0.3%  |
| `1. ISHARES TR S&P 500 INDEX FD`         | 1,276   | 0.3%  |
| `1. ISHARES CORE S&P MID CAP ETF`        | 1,092   | 0.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THELMA WEBB SCHOLARSHIP | 225.265 PZENA EMERG MKTS VALUE-INST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | 2000 SHARES BARCLAYS BANK PLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_04_CAP_GAINLOSS_DESC_ASSET, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
