# PF_13_EXCESS_DIST_CY_M2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_13_EXCESS_DIST_CY_M2

Year 2

- Description: Excess Distributions Carryover - Year 2

- Table:

  [`PF-P13-T00-UNDISTRIBUTED-INCOME`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p13-t00-undistributed-income)
  (one)

- Part: Part XIII - Undistributed Income (2023: Part XII)

- Location:

  `F990-PF-PART-13-LINE-03D`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

610k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.2x (IRS990PF/UndistributedIncomeGrp/ExcessDistributionCyovYr2Amt, 990PF, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/UndistributedIncome/ExcessDistriCarryoverYear2` | PF | 2009–2012 | 50,665 | 49.1% |  |
| x2 | `IRS990PF/UndistributedIncomeGrp/ExcessDistributionCyovYr2Amt` | PF | 2013–2024 | 559,317 | 53.7% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.1k | 13k | 17k | 20k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 22k | 28k | 30k | 32k | 35k | 42k | 49k | 65k | 64k | 64k | 64k | 62k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 45 | 50 | 50 | 49 | 49 | 52 | 51 | 51 | 52 | 56 | 56 | 56 | 54 | 52 | 51 | 54 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|-------|--------|---------|-----------|
| 990-PF | 609,982 | 100.0%    | 26.7%  | 0.0%       | 2,738 | 16,510 | 100,198 | 4,100,916 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | The Brad & Jill Jackson Family Foundati… | 48707 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502969349100900_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | 17206 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_13_EXCESS_DIST_CY_M2, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
