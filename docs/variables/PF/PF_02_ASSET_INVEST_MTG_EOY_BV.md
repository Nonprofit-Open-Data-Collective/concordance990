# PF_02_ASSET_INVEST_MTG_EOY_BV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_02_ASSET_INVEST_MTG_EOY_BV

Book Value

- Description: Investments; Mortgage Loans - End of Year - Book Value

- Table:

  [`PF-P02-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p02-t00-balance-sheet)
  (one)

- Part: Part II - Balance Sheets

- Location:

  `F990-PF-PART-02-LINE-12-COL-B`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

24k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.9x (IRS990PF/Form990PFBalanceSheetsGrp/MortgageLoansEOYAmt, 990PF, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/BalanceSheets/InvestmentsMortgageLoansEOY` | PF | 2009–2012 | 894 | 0.861% |  |
| x2 | `IRS990PF/Form990PFBalanceSheetsGrp/MortgageLoansEOYAmt` | PF | 2013–2024 | 22,895 | 3.37% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 34 | 216 | 300 | 344 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 365 | 416 | 437 | 470 | 555 | 692 | 1.3k | 3.3k | 3.7k | 3.8k | 4.0k | 3.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75     | P99        |
|--------|---------|-----------|--------|------------|--------|---------|---------|------------|
| 990-PF | 23,789  | 100.0%    | 72.6%  | 0.0%       | 23,019 | 146,652 | 516,790 | 10,140,069 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | BITS OF LOVE HORSE RESCUE INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501359349100615_public.xml) |
| 2012 | 990PF | x1 | NARENDRA & SUSHILA JAIN FOUNDATION INC | 438915 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312279349100261_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_02_ASSET_INVEST_MTG_EOY_BV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
