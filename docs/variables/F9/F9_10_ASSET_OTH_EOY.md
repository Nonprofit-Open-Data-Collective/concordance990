# F9_10_ASSET_OTH_EOY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_10_ASSET_OTH_EOY

Other assets - end of year

- Description: Other assets, end of year

- Table:

  [`F9-P10-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p10-t00-balance-sheet)
  (one)

- Part: Part X - Balance Sheet

- Location:

  `F990-PC-PART-10-LINE-15-EOY`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

1.9M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.1x (IRS990/OtherAssetsTotal/EOY, 990, TY2011) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.0x |
| ⓘ info | Sign convention | 0.3% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/OtherAssetsTotal/EOY` | PC | 2009–2012 | 265,602 | 52.5% |  |
| x2 | `IRS990/OtherAssetsTotalGrp/EOYAmt` | PC | 2013–2024 | 1,628,245 | 47.3% |  |
| x3 | `IRS990/Form990PartX/OtherAssetsTotal/EOY` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 21k | 66k | 85k | 94k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 102k | 112k | 117k | 121k | 128k | 131k | 135k | 149k | 156k | 171k | 175k | 131k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 62 | 53 | 53 | 52 | 51 | 51 | 50 | 49 | 49 | 48 | 48 | 47 | 46 | 49 | 49 | 47 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75     | P99        |
|--------|-----------|-----------|--------|------------|-----|--------|---------|------------|
| 990    | 1,893,842 | 100.0%    | 25.9%  | 0.3%       | 155 | 21,230 | 327,890 | 44,463,548 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CHRISTIAN SHANE FONVILLE YOUTH | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | 3373 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_10_ASSET_OTH_EOY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
