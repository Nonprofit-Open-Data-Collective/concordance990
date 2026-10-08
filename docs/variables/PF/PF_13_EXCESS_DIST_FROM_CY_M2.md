# PF_13_EXCESS_DIST_FROM_CY_M2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_13_EXCESS_DIST_FROM_CY_M2

Excess from Year 2

- Description: Excess from Year 2

- Table:

  [`PF-P13-T00-UNDISTRIBUTED-INCOME`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p13-t00-undistributed-income)
  (one)

- Part: Part XIII - Undistributed Income (2023: Part XII)

- Location:

  `F990-PF-PART-13-LINE-10C`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

600k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.6x (IRS990PF/UndistributedIncomeGrp/ExcessFromYear2Amt, 990PF, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.6x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/UndistributedIncome/ExcessFromYear2` | PF | 2009–2012 | 49,311 | 47.9% |  |
| x2 | `IRS990PF/UndistributedIncomeGrp/ExcessFromYear2Amt` | PF | 2013–2024 | 551,177 | 52.6% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.0k | 12k | 17k | 19k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 22k | 27k | 30k | 32k | 35k | 42k | 49k | 64k | 63k | 64k | 63k | 60k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 44 | 49 | 49 | 48 | 48 | 51 | 50 | 50 | 51 | 56 | 56 | 56 | 53 | 52 | 51 | 53 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|-------|--------|---------|-----------|
| 990-PF | 600,488 | 100.0%    | 28.1%  | 0.0%       | 3,075 | 16,908 | 101,086 | 4,047,880 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | The Brad & Jill Jackson Family Foundati… | 48707 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502969349100900_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | 172928 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_13_EXCESS_DIST_FROM_CY_M2, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
