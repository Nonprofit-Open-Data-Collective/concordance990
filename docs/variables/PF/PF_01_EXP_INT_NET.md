# PF_01_EXP_INT_NET

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_01_EXP_INT_NET

Net Investment Income

- Description: Interest - Net Investment Income

- Table:

  [`PF-P01-T00-REVENUE-EXPENSE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p01-t00-revenue-expense)
  (one)

- Part: Part I - Analysis of Revenue and Expenses

- Location:

  `F990-PF-PART-01-LINE-17-COL-B`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

67k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.7x (IRS990PF/AnalysisOfRevenueAndExpenses/InterestNetInvstIncm, 990PF, TY2011) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisOfRevenueAndExpenses/InterestNetInvstIncm` | PF | 2009–2012 | 4,523 | 4.61% |  |
| x2 | `IRS990PF/AnalysisOfRevenueAndExpenses/InterestNetInvstIncmAmt` | PF | 2013–2024 | 62,034 | 8.38% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 155 | 1.1k | 1.5k | 1.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.0k | 2.3k | 2.4k | 2.5k | 2.6k | 2.9k | 3.7k | 7.4k | 7.6k | 9.2k | 10.0k | 9.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 7 | 4 | 4 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 6 | 6 | 7 | 8 | 8 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25  | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|------|--------|-------|---------|
| 990-PF | 66,557  | 100.0%    | 46.2%  | 0.0%       | 3.50 | 164    | 3,386 | 235,225 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | PAUL GUBITOSI CHARITABLE FUND INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541069349100709_public.xml) |
| 2012 | 990PF | x1 | The Anchor Foundation | 27 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349100801_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_01_EXP_INT_NET, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
