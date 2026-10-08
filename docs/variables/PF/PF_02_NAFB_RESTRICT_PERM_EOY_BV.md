# PF_02_NAFB_RESTRICT_PERM_EOY_BV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_02_NAFB_RESTRICT_PERM_EOY_BV

Book Value

- Description: Permanently Restricted - End of Year - Book Value

- Table:

  [`PF-P02-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p02-t00-balance-sheet)
  (one)

- Part: Part II - Balance Sheets

- Location:

  `F990-PF-PART-02-LINE-26-COL-B`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

5.6k

filings with a value

2009–2018

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/BalanceSheets/PermanentlyRestrictedEOY` | PF | 2009–2012 | 1,353 | 1.38% |  |
| x2 | `IRS990PF/Form990PFBalanceSheetsGrp/PermanentlyRestrictedEOYAmt` | PF | 2013–2018 | 4,211 | 1.17% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 58 | 308 | 436 | 551 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 606 | 634 | 660 | 692 | 733 | 886 |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75       | P99        |
|--------|---------|-----------|--------|------------|--------|---------|-----------|------------|
| 990-PF | 5,564   | 100.0%    | 7.6%   | 0.2%       | 72,459 | 341,269 | 1,186,562 | 52,829,660 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2018 | 990PF | x2 | WILLARD SWEITZER AMERICAN LEGION TR | 100135 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201910919349100301_public.xml) |
| 2012 | 990PF | x1 | MILFORD CENTER BAPTIST CHURCH TUW OF LE… | 35251 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311299349100501_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_02_NAFB_RESTRICT_PERM_EOY_BV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
