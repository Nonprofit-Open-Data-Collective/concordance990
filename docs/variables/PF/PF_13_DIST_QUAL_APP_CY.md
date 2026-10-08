# PF_13_DIST_QUAL_APP_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_13_DIST_QUAL_APP_CY

Applied to Current Year

- Description: Applied to Current Year

- Table:

  [`PF-P13-T00-UNDISTRIBUTED-INCOME`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p13-t00-undistributed-income)
  (one)

- Part: Part XIII - Undistributed Income (2023: Part XII)

- Location:

  `F990-PF-PART-13-LINE-04D-COL-D`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

880k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.1x (IRS990PF/UndistributedIncomeGrp/AppliedToCurrentYearAmt, 990PF, TY2014) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/UndistributedIncome/AppliedToCurrentYear` | PF | 2009–2012 | 80,760 | 78.5% |  |
| x2 | `IRS990PF/UndistributedIncomeGrp/AppliedToCurrentYearAmt` | PF | 2013–2024 | 799,244 | 73.9% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.0k | 20k | 27k | 31k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 36k | 42k | 45k | 49k | 53k | 58k | 69k | 89k | 90k | 92k | 92k | 85k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 85 | 79 | 79 | 79 | 78 | 78 | 77 | 77 | 77 | 77 | 78 | 78 | 76 | 75 | 74 | 74 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-------|--------|--------|-----------|
| 990-PF | 880,004 | 100.0%    | 7.6%   | 0.0%       | 2,108 | 14,516 | 62,479 | 2,283,231 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | C A LUCAS TRUST FBO 1ST CONG | 7368 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | 43740 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_13_DIST_QUAL_APP_CY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
