# F9_10_NAFB_UNRESTRICT_BOY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_10_NAFB_UNRESTRICT_BOY

Net assets without donor restrictions - beginning of year

- Description: Unrestricted net assets, beginning of year

- Table:

  [`F9-P10-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p10-t00-balance-sheet)
  (one)

- Part: Part X - Balance Sheet

- Location:

  `F990-PC-PART-10-LINE-27-BOY`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

3 / 4

xpaths observed / mapped

2.9M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.1x (IRS990/UnrestrictedNetAssets/BOY, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 8.4% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/UnrestrictedNetAssets/BOY` | PC | 2009–2012 | 375,832 | 75.4% |  |
| x2 | `IRS990/UnrestrictedNetAssetsGrp/BOYAmt` | PC | 2013–2018 | 1,074,115 | 75.1% |  |
| x3 | `IRS990/NoDonorRestrictionNetAssetsGrp/BOYAmt` | PC | 2019–2024 | 1,406,075 | 71.4% |  |
| x4 | `IRS990/Form990PartX/UnrestrictedNetAssets/BOY` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 29k | 92k | 120k | 135k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 150k | 164k | 175k | 183k | 198k | 204k |  |  |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  | 212k | 235k | 246k | 255k | 260k | 198k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 86 | 75 | 75 | 75 | 75 | 75 | 75 | 75 | 76 | 75 | 75 | 73 | 73 | 73 | 73 | 71 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 2,856,010 | 100.0% | 0.5% | 8.4% | 101,835 | 454,792 | 2,025,616 | 134,938,902 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | OWL CREEK COUNTRY CLUB | 3763073 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2018 | 990 | x2 | ORMOND MEMORIAL ART MUSEUM INC | 1204872 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202031269349300518_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 3726110 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_10_NAFB_UNRESTRICT_BOY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
