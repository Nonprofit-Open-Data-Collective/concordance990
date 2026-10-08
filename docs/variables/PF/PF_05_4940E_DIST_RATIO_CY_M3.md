# PF_05_4940E_DIST_RATIO_CY_M3

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_05_4940E_DIST_RATIO_CY_M3

Distribution ratio - base period year 3

- Description: Distribution Ratio - Year 3

- Table:

  [`PF-P05-T00-NET-INVEST-INCOME-TAX-4940E`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p05-t00-net-invest-income-tax-4940e)
  (one)

- Part: Part V - Qualification Under Section 4940(e) for Reduced Tax on
  Net Investment Income (removed after 2019)

- Location:

  `F990-PF-PART-05-LINE-01-COL-D`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

414k

filings with a value

2009–2019

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.1x (IRS990PF/QlfyUndSect4940eForReducedTax/DistributionRatioYear3, 990PF, TY2011) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990PF/QlfyUndSect4940eForReducedTax/DistributionRatioYear3: percent or small count; IRS990PF/QlfyUndSect4940eReducedTaxGrp/DistributionYr3Rt: percent or small count |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/QlfyUndSect4940eForReducedTax/DistributionRatioYear3` | PF | 2009–2012 | 74,833 | 73.9% |  |
| x2 | `IRS990PF/QlfyUndSect4940eReducedTaxGrp/DistributionYr3Rt` | PF | 2013–2019 | 339,593 | 75% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.8k | 18k | 26k | 30k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 35k | 41k | 44k | 47k | 51k | 57k | 66k |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 75 | 71 | 74 | 74 | 76 | 76 | 75 | 74 | 74 | 75 | 75 |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25  | Median | P75  | P99   |
|--------|---------|-----------|--------|------------|------|--------|------|-------|
| 990-PF | 414,426 | 100.0%    | 7.3%   | 0.0%       | 0.04 | 0.06   | 0.15 | 19.19 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2019 | 990PF | x2 | THE CROTTY FAMILY FOUNDATION INC | 2.866676 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202001959349101100_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | 0.07764 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_05_4940E_DIST_RATIO_CY_M3, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
