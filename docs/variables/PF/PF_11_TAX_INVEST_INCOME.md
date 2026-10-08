# PF_11_TAX_INVEST_INCOME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_11_TAX_INVEST_INCOME

Tax Based on Investment Income

- Description: Tax Based on Investment Income

- Table:

  [`PF-P11-T00-DISTRIBUTABLE-AMOUNT`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p11-t00-distributable-amount)
  (one)

- Part: Part XI - Distributable Amount (2023: Part X)

- Location:

  `F990-PF-PART-11-LINE-02A`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

811k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.7x (IRS990PF/DistributableAmountGrp/TaxBasedOnInvestmentIncomeAmt, 990PF, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.6x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/DistributableAmount/TaxBasedOnInvestmentIncome` | PF | 2009–2012 | 70,137 | 68% |  |
| x2 | `IRS990PF/DistributableAmountGrp/TaxBasedOnInvestmentIncomeAmt` | PF | 2013–2024 | 740,601 | 72.4% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 17k | 24k | 27k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 32k | 37k | 40k | 42k | 47k | 54k | 64k | 83k | 84k | 86k | 89k | 83k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 69 | 69 | 69 | 68 | 69 | 69 | 68 | 67 | 68 | 72 | 73 | 72 | 71 | 70 | 71 | 72 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99    |
|--------|---------|-----------|--------|------------|-----|--------|-------|--------|
| 990-PF | 810,738 | 100.0%    | 6.3%   | 0.0%       | 86  | 422    | 1,775 | 76,114 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | The Brad & Jill Jackson Family Foundati… | 1110 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502969349100900_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | 574 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_11_TAX_INVEST_INCOME, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
