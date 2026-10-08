# F9_08_REV_OTH_INV_COST_GOODS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_INV_COST_GOODS

Cost of goods sold

- Description: Less cost of goods sold

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-10B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 96.1x (IRS990EZ/CostOfGoodsSold, 990EZ, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.2x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/CostOfGoodsSold` | EZ | 2009–2012 | 116,458 | 47% |  |
| x2 | `IRS990/CostOfGoodsSold` | PC | 2009–2012 | 62,410 | 12.7% |  |
| x3 | `IRS990EZ/CostOfGoodsSoldAmt` | EZ | 2013–2024 | 862,895 | 47.7% |  |
| x4 | `IRS990/CostOfGoodsSoldAmt` | PC | 2013–2024 | 488,104 | 14.7% |  |
| x5 | `IRS990/Form990PartVIII/CostOfGoodsSold` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.8k | 28k | 37k | 44k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 4.4k | 15k | 20k | 23k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 48k | 53k | 56k | 58k | 62k | 66k | 67k | 76k | 97k | 98k | 97k | 85k |
| x4 |  |  |  |  | 25k | 28k | 29k | 38k | 41k | 41k | 42k | 48k | 51k | 53k | 53k | 41k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 13 | 12 | 13 | 13 | 13 | 13 | 12 | 15 | 16 | 15 | 15 | 15 | 15 | 15 | 15 | 15 |
| 990-EZ | 44 | 45 | 46 | 47 | 46 | 46 | 45 | 45 | 44 | 44 | 44 | 44 | 48 | 48 | 47 | 48 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|-------|--------|---------|-----------|
| 990    | 550,514 | 100.0%    | 22.9%  | 0.2%       | 3,192 | 28,323 | 117,872 | 4,650,886 |
| 990-EZ | 979,351 | 100.0%    | 81.1%  | 0.0%       | 0     | 0      | 0       | 62,141    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | WILD WEST WOMEN INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543179349205389_public.xml) |
| 2024 | 990 | x4 | OWL CREEK COUNTRY CLUB | 437221 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990EZ | x1 | PTA TEXAS CONGRESS 1446 MCCOY ELEMENTAR… | 26591 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349204213_public.xml) |
| 2012 | 990 | x2 | BACH SOCIETY OF SAINT LOUIS | 2309 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410379349301556_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_INV_COST_GOODS, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
