# PF_11_TAX_INCOME_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_11_TAX_INCOME_CY

Income Tax for This Year

- Description: Income Tax for This Year

- Table:

  [`PF-P11-T00-DISTRIBUTABLE-AMOUNT`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p11-t00-distributable-amount)
  (one)

- Part: Part XI - Distributable Amount (2023: Part X)

- Location:

  `F990-PF-PART-11-LINE-02B`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

36k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.6x (IRS990PF/DistributableAmountGrp/IncomeTaxAmt, 990PF, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.0x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/DistributableAmount/IncomeTaxForThisYear` | PF | 2009–2012 | 536 | 0.571% |  |
| x2 | `IRS990PF/DistributableAmountGrp/IncomeTaxAmt` | PF | 2013–2024 | 35,299 | 5.98% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 10 | 110 | 188 | 228 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 313 | 444 | 477 | 486 | 632 | 842 | 1.5k | 4.8k | 5.7k | 6.3k | 6.9k | 6.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 4 | 5 | 5 | 6 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990-PF | 35,835  | 100.0%    | 67.1%  | 0.0%       | 234 | 1,172  | 5,984 | 367,267 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Fetosur Foundation USA Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543019349100704_public.xml) |
| 2012 | 990PF | x1 | PEVEHOUSE FAMILY FOUNDATION INC | 917 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341299349101564_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_11_TAX_INCOME_CY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
