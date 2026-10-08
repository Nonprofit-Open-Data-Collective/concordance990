# PF_AX11_DEPREC_AMT_PYZ

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX11_DEPREC_AMT_PYZ

Prior Years' Depreciation

- Description: Prior Years' Depreciation

- Table:

  [`PF-P99-T11-DEPREC`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t11-deprec)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-11`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

70k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.1x (DepreciationSchedule/DepreciationPropertyGrp/PriorYearDepreciationAmt, 990PF, TY2018) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `DepreciationSchedule/Depreciation/PriorYearsDepreciation` | PF | 2009–2012 | 7,231 | 7.33% | 75.1% |
| x2 | `DepreciationSchedule/DepreciationPropertyGrp/PriorYearDepreciationAmt` | PF | 2013–2024 | 62,466 | 5.1% | 74.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 211 | 1.7k | 2.4k | 2.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.3k | 3.8k | 4.3k | 4.4k | 4.7k | 4.9k | 5.3k | 6.5k | 6.5k | 6.5k | 6.5k | 5.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 9 | 7 | 7 | 7 | 7 | 7 | 7 | 7 | 7 | 6 | 6 | 6 | 5 | 5 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990-PF | 69,697  | 100.0%    | 0.9%   | 0.0%       | 486 | 1,539  | 5,384 | 399,127 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | WICOMICO VALLEY FOUNDATION OF | 921 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513199349101371_public.xml) |
| 2012 | 990PF | x1 | TONGANOXIE SENIOR CITIZENS | 123080 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322129349100407_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX11_DEPREC_AMT_PYZ, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
