# F9_01_REV_INVEST_TOT_PY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_01_REV_INVEST_TOT_PY

Investment income - prior year

- Description: Investment income - prior year

- Table:

  [`F9-P01-T00-SUMMARY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p01-t00-summary)
  (one)

- Part: Part I - Summary

- Location:

  `F990-PC-PART-01-LINE-10-PY`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

3.2M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.0x (IRS990/PYInvestmentIncomeAmt, 990, TY2023) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.7x |
| ⓘ info | Sign convention | 4.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/InvestmentIncomePriorYear` | PC | 2009–2012 | 432,820 | 87% |  |
| x2 | `IRS990/PYInvestmentIncomeAmt` | PC | 2013–2024 | 2,727,149 | 79.1% |  |
| x3 | `IRS990/Form990PartI/InvestmentIncomePriorYear` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 29k | 107k | 140k | 156k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 170k | 184k | 195k | 202k | 215k | 222k | 231k | 260k | 270k | 277k | 281k | 219k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 88 | 87 | 88 | 87 | 86 | 84 | 83 | 83 | 82 | 82 | 82 | 81 | 80 | 79 | 79 | 79 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25   | Median | P75    | P99       |
|--------|-----------|-----------|--------|------------|-------|--------|--------|-----------|
| 990    | 3,159,964 | 100.0%    | 10.8%  | 4.2%       | 46.50 | 1,405  | 27,174 | 5,561,302 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CHRISTIAN SHANE FONVILLE YOUTH | 3226 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | 239 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_01_REV_INVEST_TOT_PY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
