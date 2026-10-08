# PF_01_EXP_OTH_EMPL_SAL_NET

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_01_EXP_OTH_EMPL_SAL_NET

Net Investment Income

- Description: Other Employee Salaries and Wages - Net Investment Income

- Table:

  [`PF-P01-T00-REVENUE-EXPENSE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p01-t00-revenue-expense)
  (one)

- Part: Part I - Analysis of Revenue and Expenses

- Location:

  `F990-PF-PART-01-LINE-14-COL-B`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

224k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.6x (IRS990PF/AnalysisOfRevenueAndExpenses/OthEmplSlrsWgsNetInvstIncm, 990PF, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.4x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisOfRevenueAndExpenses/OthEmplSlrsWgsNetInvstIncm` | PF | 2009–2012 | 10,750 | 9.21% |  |
| x2 | `IRS990PF/AnalysisOfRevenueAndExpenses/OthEmplSlrsWgsNetInvstIncmAmt` | PF | 2013–2024 | 212,887 | 24.7% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 256 | 3.0k | 3.8k | 3.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.2k | 7.8k | 8.4k | 8.8k | 10k | 14k | 18k | 27k | 27k | 29k | 30k | 28k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 11 | 12 | 11 | 9 | 9 | 15 | 14 | 14 | 15 | 19 | 21 | 23 | 23 | 24 | 24 | 25 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-----|---------|
| 990-PF | 223,637 | 100.0%    | 93.0%  | 0.0%       | 0   | 0      | 0   | 160,834 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | EDWIN D MARTIN AND JUDITH M MARTIN PRIV… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531279349100148_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_01_EXP_OTH_EMPL_SAL_NET, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
