# PF_01_REV_CAP_GAIN_NET

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_01_REV_CAP_GAIN_NET

Net Investment Income

- Description: Capital Gain Net Income - Net Investment Income

- Table:

  [`PF-P01-T00-REVENUE-EXPENSE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p01-t00-revenue-expense)
  (one)

- Part: Part I - Analysis of Revenue and Expenses

- Location:

  `F990-PF-PART-01-LINE-07-COL-B`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

896k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 90.9x (IRS990PF/AnalysisOfRevenueAndExpenses/CapGainNetIncmNetInvstIncmAmt, 990PF, TY2022) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.1x (990PF: IRS990PF/AnalysisOfRevenueAndExpenses/CapGainNetIncmNetInvstIncmAmt vs IRS990PF/AnalysisOfRevenueAndExpenses/CapitalGainNetIncmNetInvstIncm) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisOfRevenueAndExpenses/CapitalGainNetIncmNetInvstIncm` | PF | 2009–2012 | 78,169 | 76.5% |  |
| x2 | `IRS990PF/AnalysisOfRevenueAndExpenses/CapGainNetIncmNetInvstIncmAmt` | PF | 2013–2024 | 817,535 | 78% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.7k | 19k | 27k | 31k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 36k | 42k | 46k | 49k | 54k | 60k | 69k | 90k | 94k | 93k | 95k | 90k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 74 | 75 | 78 | 76 | 78 | 78 | 78 | 78 | 80 | 79 | 79 | 78 | 79 | 76 | 76 | 78 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990-PF | 895,704 | 100.0%    | 35.8%  | 0.0%       | 0   | 4,862  | 65,625 | 3,579,117 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | C A LUCAS TRUST FBO 1ST CONG | 3135 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | 55583 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_01_REV_CAP_GAIN_NET, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
