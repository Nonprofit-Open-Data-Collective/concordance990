# PF_AX11_DEPREC_EXP_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX11_DEPREC_EXP_CY

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.6x (DepreciationSchedule/DepreciationPropertyGrp/CurrentYearExpenseAmt, 990PF, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `DepreciationSchedule/Depreciation/CurrentYearExpense` | PF | 2009–2012 | 7,426 | 7.4% | 75.6% |
| x2 | `DepreciationSchedule/DepreciationPropertyGrp/CurrentYearExpenseAmt` | PF | 2013–2024 | 62,118 | 5.04% | 74.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 224 | 1.8k | 2.5k | 3.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.4k | 3.9k | 4.3k | 4.4k | 4.6k | 4.8k | 5.3k | 6.4k | 6.4k | 6.4k | 6.4k | 5.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 10 | 7 | 7 | 7 | 7 | 7 | 7 | 7 | 7 | 6 | 6 | 6 | 5 | 5 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99    |
|--------|---------|-----------|--------|------------|-----|--------|-----|--------|
| 990-PF | 69,544  | 100.0%    | 30.4%  | 0.0%       | 0   | 140    | 694 | 53,043 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | WICOMICO VALLEY FOUNDATION OF | 287 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513199349101371_public.xml) |
| 2012 | 990PF | x1 | ST THOMAS MORE CENTER | 9110 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302279349100615_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX11_DEPREC_EXP_CY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
