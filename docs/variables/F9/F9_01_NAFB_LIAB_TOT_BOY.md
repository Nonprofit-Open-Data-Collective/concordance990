# F9_01_NAFB_LIAB_TOT_BOY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_01_NAFB_LIAB_TOT_BOY

Total liabilities - beginning of year

- Description: Total Liabilities; BOY

- Table:

  [`F9-P01-T00-SUMMARY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p01-t00-summary)
  (one)

- Part: Part I - Summary

- Location:

  `F990-PC-PART-01-LINE-21-BOY`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

2 / 5

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.9x (IRS990/TotalLiabilitiesBOY, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.8x |
| ⓘ info | Sign convention | 0.3% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TotalLiabilitiesBOY` | PC | 2009–2012 | 432,294 | 86.6% |  |
| x2 | `IRS990/TotalLiabilitiesBOYAmt` | PC | 2013–2024 | 2,782,054 | 79.5% |  |
| x3 | `IRS990/Form990PartI/TotalLiabilitiesBOY` | PC | not observed | 0 |  |  |
| x4 | `IRS990EZ/TotalLiabilitiesBOY` | EZ | not observed | 0 |  |  |
| x5 | `IRS990EZ/TotalLiabilitiesBOYAmt` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 30k | 108k | 139k | 156k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 171k | 186k | 197k | 205k | 219k | 226k | 237k | 267k | 278k | 285k | 289k | 221k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 91 | 88 | 87 | 87 | 86 | 85 | 85 | 84 | 84 | 83 | 83 | 83 | 83 | 82 | 81 | 80 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25   | Median | P75     | P99         |
|--------|-----------|-----------|--------|------------|-------|--------|---------|-------------|
| 990    | 3,214,339 | 100.0%    | 10.4%  | 0.3%       | 7,485 | 89,233 | 705,178 | 169,404,878 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | OWL CREEK COUNTRY CLUB | 4453640 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 18700 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_01_NAFB_LIAB_TOT_BOY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
