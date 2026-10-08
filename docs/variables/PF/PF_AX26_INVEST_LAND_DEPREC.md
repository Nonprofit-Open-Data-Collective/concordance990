# PF_AX26_INVEST_LAND_DEPREC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX26_INVEST_LAND_DEPREC

Accumulated depreciation

- Description: Accumulated depreciation

- Table:

  [`PF-P99-T26-INVEST-LAND`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t26-invest-land)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-26`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

13k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.3x (InvestmentsLandSchedule2/InvestmentLandGrp/AccumulatedDepreciationAmt, 990PF, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `InvestmentsLandSchedule2/InvestmentLand/AccumulatedDepreciation` | PF | 2009–2012 | 1,072 | 1.13% | 57.5% |
| x2 | `InvestmentsLandSchedule2/InvestmentLandGrp/AccumulatedDepreciationAmt` | PF | 2013–2024 | 11,875 | 1.09% | 54.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 34 | 241 | 344 | 453 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 552 | 666 | 708 | 748 | 804 | 859 | 962 | 1.3k | 1.3k | 1.4k | 1.3k | 1.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990-PF | 12,947  | 100.0%    | 18.8%  | 0.0%       | 261 | 2,514  | 18,685 | 1,389,255 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Clawson Family Foundation | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533199349100423_public.xml) |
| 2012 | 990PF | x1 | GRAYSON FOUNDATION INC | 104569 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201440629349100609_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX26_INVEST_LAND_DEPREC, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
