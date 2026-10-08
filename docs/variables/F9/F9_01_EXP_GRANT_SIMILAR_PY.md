# F9_01_EXP_GRANT_SIMILAR_PY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_01_EXP_GRANT_SIMILAR_PY

Grants and similar amounts paid - prior year

- Description: Grants and similar amounts - prior year

- Table:

  [`F9-P01-T00-SUMMARY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p01-t00-summary)
  (one)

- Part: Part I - Summary

- Location:

  `F990-PC-PART-01-LINE-13-PY`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

2.2M

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 20250.4x (IRS990/GrantsAndSimilarAmntsPriorYear, 990, TY2012) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 4.7x (990: IRS990/GrantsAndSimilarAmntsPriorYear vs IRS990/PYGrantsAndSimilarPaidAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/GrantsAndSimilarAmntsPriorYear` | PC | 2009–2012 | 286,430 | 58.6% |  |
| x2 | `IRS990/PYGrantsAndSimilarPaidAmt` | PC | 2013–2024 | 1,894,046 | 55.2% |  |
| x3 | `IRS990/Form990PartI/GrantsAndSimilarAmntsPriorYear` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 12k | 74k | 95k | 105k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 115k | 125k | 133k | 138k | 148k | 154k | 161k | 181k | 189k | 196k | 200k | 153k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 37 | 60 | 60 | 59 | 58 | 57 | 57 | 57 | 57 | 57 | 57 | 57 | 56 | 56 | 56 | 55 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75    | P99        |
|--------|-----------|-----------|--------|------------|-----|--------|--------|------------|
| 990    | 2,180,473 | 100.0%    | 50.0%  | 0.0%       | 0   | 480    | 89,857 | 15,216,046 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CHRISTIAN SHANE FONVILLE YOUTH | 5000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 480000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_01_EXP_GRANT_SIMILAR_PY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
