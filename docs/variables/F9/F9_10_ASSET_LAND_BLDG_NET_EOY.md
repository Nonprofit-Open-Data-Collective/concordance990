# F9_10_ASSET_LAND_BLDG_NET_EOY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_10_ASSET_LAND_BLDG_NET_EOY

Net land, buildings, and equipment - end of year

- Description: Net value including lands; buildings; and equipment; end
  of year

- Table:

  [`F9-P10-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p10-t00-balance-sheet)
  (one)

- Part: Part X - Balance Sheet

- Location:

  `F990-PC-PART-10-LINE-10C-EOY`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

2 / 5

xpaths observed / mapped

2.8M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.5x (IRS990/LandBuildingsEquipmentBasisNet/EOY, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/LandBuildingsEquipmentBasisNet/EOY` | PC | 2009–2012 | 389,918 | 78.1% |  |
| x2 | `IRS990/LandBldgEquipBasisNetGrp/EOYAmt` | PC | 2013–2024 | 2,444,307 | 67.6% |  |
| x3 | `IRS990/Form990PartX/LandBuildingsEquipmentBasisNet/EOY` | PC | not observed | 0 |  |  |
| x4 | `IRS990EZ/LandBldgEquipBasisNetGrp/EOYAmt` | EZ | not observed | 0 |  |  |
| x5 | `IRS990EZ/LandBuildingsEquipmentBasisNet/EOY` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 28k | 97k | 125k | 140k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 154k | 168k | 178k | 186k | 198k | 203k | 209k | 231k | 239k | 245k | 247k | 188k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 84 | 79 | 78 | 78 | 77 | 77 | 76 | 76 | 76 | 75 | 74 | 72 | 71 | 70 | 70 | 68 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 2,834,220 | 100.0% | 11.4% | 0.0% | 17,220 | 262,957 | 1,393,214 | 100,726,110 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | OWL CREEK COUNTRY CLUB | 5000208 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 3092 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_10_ASSET_LAND_BLDG_NET_EOY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
