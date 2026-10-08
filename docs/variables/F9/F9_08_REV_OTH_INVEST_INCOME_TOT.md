# F9_08_REV_OTH_INVEST_INCOME_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_INVEST_INCOME_TOT

Investment income - total

- Description: Invest income

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-03-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 7

xpaths observed / mapped

4.2M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.7x (IRS990/InvestmentIncomeGrp/TotalRevenueColumnAmt, 990, TY2023) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.6x |
| ⓘ info | Sign convention | 0.4% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/InvestmentIncome/TotalRevenueColumn` | PC | 2009–2012 | 422,464 | 83.8% |  |
| x2 | `IRS990EZ/InvestmentIncome` | EZ | 2009–2012 | 162,427 | 61.9% |  |
| x3 | `IRS990/InvestmentIncomeGrp/TotalRevenueColumnAmt` | PC | 2013–2024 | 2,625,842 | 77.6% |  |
| x4 | `IRS990EZ/InvestmentIncomeAmt` | EZ | 2013–2024 | 1,023,787 | 55.8% |  |
| x5 | `IRS990/Form990PartVIII/InvestmentIncome/TotalRevenueColumn` | PC | not observed | 0 |  |  |
| x6 | `IRS990EZ/InvestmentIncome/TotalRevenueColumn` | EZ | not observed | 0 |  |  |
| x7 | `IRS990EZ/InvestmentIncomeGrp/TotalRevenueColumnAmt` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 30k | 106k | 136k | 151k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 11k | 41k | 52k | 58k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 164k | 177k | 187k | 194k | 207k | 214k | 222k | 248k | 257k | 266k | 275k | 215k |
| x4 |  |  |  |  | 62k | 67k | 69k | 71k | 74k | 78k | 80k | 89k | 109k | 111k | 113k | 100k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 90 | 86 | 85 | 84 | 82 | 81 | 80 | 80 | 79 | 79 | 78 | 77 | 76 | 76 | 77 | 78 |
| 990-EZ | 71 | 65 | 63 | 62 | 59 | 57 | 55 | 54 | 54 | 52 | 52 | 53 | 54 | 54 | 55 | 56 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|-----------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 3,048,300 | 100.0%    | 6.2%   | 0.6%       | 139 | 2,224  | 31,438 | 3,991,370 |
| 990-EZ | 1,186,213 | 100.0%    | 23.7%  | 0.0%       | 4   | 46.50  | 504    | 25,102    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | KYLE GOLDBERG MEMORIAL FOUNDATION | 338 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511219349201801_public.xml) |
| 2024 | 990 | x3 | IAAI FOUNDATION INC | 11598 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x2 | THE MASONIC LIBRARY AND MUSEUM OF INDIA… | 3522 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332279349200753_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | 228 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_INVEST_INCOME_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
