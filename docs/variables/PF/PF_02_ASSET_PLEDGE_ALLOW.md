# PF_02_ASSET_PLEDGE_ALLOW

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_02_ASSET_PLEDGE_ALLOW

Allowance for Doubtful Accounts (for Pledges Receivable)

- Description: Allowance for Doubtful Accounts (for Pledges Receivable)

- Table:

  [`PF-P02-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p02-t00-balance-sheet)
  (one)

- Part: Part II - Balance Sheets

- Location:

  `F990-PF-PART-02-LINE-04-ii`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

17k

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
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/BalanceSheets/AllwncForDbtflAcctPledgesRcvbl` | PF | 2009–2012 | 35 | 0.025% |  |
| x2 | `IRS990PF/Form990PFBalanceSheetsGrp/PledgesRcvblAllwncDbtflAcctAmt` | PF | 2013–2024 | 16,978 | 2.84% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1 | 12 | 12 | 10 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 9 | 12 | 18 | 56 | 122 | 251 | 803 | 2.7k | 3.1k | 3.2k | 3.4k | 3.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 2 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99   |
|--------|---------|-----------|--------|------------|-----|--------|-----|-------|
| 990-PF | 17,013  | 100.0%    | 98.9%  | 0.0%       | 0   | 0      | 0   | 4,911 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Central Iowa Region Taxpayers Associati… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511359349104596_public.xml) |
| 2012 | 990PF | x1 | Waldis Family Foundation Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301309349101910_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_02_ASSET_PLEDGE_ALLOW, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
