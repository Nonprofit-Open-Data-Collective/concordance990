# PF_01_EXP_LEGAL_BEN_NET

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_01_EXP_LEGAL_BEN_NET

Net Investment Income

- Description: Legal Fees - Net Investment Income

- Table:

  [`PF-P01-T00-REVENUE-EXPENSE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p01-t00-revenue-expense)
  (one)

- Part: Part I - Analysis of Revenue and Expenses

- Location:

  `F990-PF-PART-01-LINE-16A-COL-B`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

165k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 6.4x (IRS990PF/AnalysisOfRevenueAndExpenses/LegalFeesNetInvstIncm, 990PF, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/AnalysisOfRevenueAndExpenses/LegalFeesNetInvstIncm` | PF | 2009–2012 | 11,461 | 11.1% |  |
| x2 | `IRS990PF/AnalysisOfRevenueAndExpenses/LegalFeesNetInvstIncmAmt` | PF | 2013–2024 | 153,189 | 17.4% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 330 | 2.9k | 3.8k | 4.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.4k | 6.4k | 7.3k | 7.7k | 8.3k | 9.1k | 11k | 18k | 19k | 20k | 21k | 20k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 14 | 11 | 11 | 11 | 12 | 12 | 12 | 12 | 12 | 12 | 13 | 15 | 16 | 16 | 17 | 17 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99    |
|--------|---------|-----------|--------|------------|-----|--------|-------|--------|
| 990-PF | 164,650 | 100.0%    | 62.9%  | 0.0%       | 0   | 0      | 1,063 | 59,550 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | SECURE WORLD FOUNDATION | 750 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533179349102288_public.xml) |
| 2012 | 990PF | x1 | Henry & Martha Hederman Charitable Foun… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331339349101983_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_01_EXP_LEGAL_BEN_NET, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
