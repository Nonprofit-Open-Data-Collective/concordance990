# F9_01_EXP_FEE_OTH_PAY_KONTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_01_EXP_FEE_OTH_PAY_KONTR

Prof. fees and other payments to independent contractors

- Description: Professional fees and other payments to independent
  contractors

- Table:

  [`F9-P01-T00-SUMMARY-EZ`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p01-t00-summary-ez)
  (one)

- Part: Part I - Summary

- Location:

  `F990-EZ-PART-01-LINE-13`

- Type: numeric

- Scope: EZ – 990-EZ only

- Database: F990

- Forms: EZ

2 / 3

xpaths observed / mapped

1.5M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.9x (IRS990EZ/FeesAndOthPymtToIndContractors, 990EZ, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/FeesAndOthPymtToIndContractors` | EZ | 2009–2012 | 182,679 | 71.6% |  |
| x2 | `IRS990EZ/FeesAndOtherPymtToIndCntrctAmt` | EZ | 2013–2024 | 1,319,175 | 71% |  |
| x3 | `IRS990EZ/FeesAndOthPymtToIndContracters` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11k | 46k | 59k | 67k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 74k | 83k | 88k | 92k | 97k | 104k | 106k | 118k | 141k | 144k | 145k | 127k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | 72 | 72 | 72 | 72 | 71 | 71 | 71 | 70 | 70 | 70 | 70 | 69 | 70 | 70 | 70 | 71 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75   | P99    |
|--------|-----------|-----------|--------|------------|-----|--------|-------|--------|
| 990-EZ | 1,501,846 | 100.0%    | 7.2%   | 0.0%       | 590 | 1,730  | 7,056 | 94,194 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | SAINT CLAIR HOUSE INC | 9700 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2012 | 990EZ | x1 | CONCORD CHRISTIAN ACADEMY GIVING & GOING | 1200 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332829349200713_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_01_EXP_FEE_OTH_PAY_KONTR, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
