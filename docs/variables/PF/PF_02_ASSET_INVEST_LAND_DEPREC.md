# PF_02_ASSET_INVEST_LAND_DEPREC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_02_ASSET_INVEST_LAND_DEPREC

Accumulated Depreciation (for Investments; Land; Etc.)

- Description: Accumulated Depreciation (for Investments; Land; Etc.)

- Table:

  [`PF-P02-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p02-t00-balance-sheet)
  (one)

- Part: Part II - Balance Sheets

- Location:

  `F990-PF-PART-02-LINE-11-ii`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

26k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.3x (IRS990PF/Form990PFBalanceSheetsGrp/InvstLandAccumDepreciationAmt, 990PF, TY2021) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.6x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/BalanceSheets/AccumDeprecInvestmentsLandEtc` | PF | 2009–2012 | 1,396 | 1.46% |  |
| x2 | `IRS990PF/Form990PFBalanceSheetsGrp/InvstLandAccumDepreciationAmt` | PF | 2013–2024 | 24,429 | 3.51% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 42 | 318 | 452 | 584 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 670 | 773 | 893 | 964 | 1.0k | 1.2k | 1.4k | 2.4k | 3.3k | 3.8k | 4.1k | 4.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 2 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|-------|--------|---------|-----------|
| 990-PF | 25,825  | 100.0%    | 44.2%  | 0.0%       | 5,751 | 37,366 | 180,191 | 6,080,166 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | OLD TIPTON UNION SCHOOL INC | 21427 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541349349102004_public.xml) |
| 2012 | 990PF | x1 | THE KAVLI FOUNDATION | 7060715 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349101953_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_02_ASSET_INVEST_LAND_DEPREC, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
