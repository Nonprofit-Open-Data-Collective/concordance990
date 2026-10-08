# PF_02_ASSET_ACC_BOY_BV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_02_ASSET_ACC_BOY_BV

Book Value

- Description: Accounts Receivable - Beginning of Year - Book Value

- Table:

  [`PF-P02-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p02-t00-balance-sheet)
  (one)

- Part: Part II - Balance Sheets

- Location:

  `F990-PF-PART-02-LINE-03-COL-A`

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 29.8x (IRS990PF/Form990PFBalanceSheetsGrp/AcctRcvblBOYAmt, 990PF, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.4% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/BalanceSheets/AccountsReceivableBOY` | PF | 2009–2012 | 4,877 | 5.04% |  |
| x2 | `IRS990PF/Form990PFBalanceSheetsGrp/AcctRcvblBOYAmt` | PF | 2013–2024 | 65,559 | 7.95% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 155 | 1.1k | 1.6k | 2.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.3k | 2.6k | 2.9k | 2.9k | 3.2k | 3.5k | 4.5k | 7.6k | 8.2k | 8.8k | 9.8k | 9.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 7 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 7 | 7 | 7 | 8 | 8 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990-PF | 70,436  | 100.0%    | 32.6%  | 0.4%       | 487 | 2,896  | 21,341 | 2,363,013 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | ROBINS KAPLAN FOUNDATION | 100 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202611969349100126_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | 26 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_02_ASSET_ACC_BOY_BV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
