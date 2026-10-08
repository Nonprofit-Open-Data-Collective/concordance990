# F9_08_REV_OTH_INV_GRO_SALE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_INV_GRO_SALE

Gross sales of inventory

- Description: gross sales of inventory

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-10A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

983k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 4.0x (IRS990EZ/GrossSalesOfInventory, 990EZ, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.4x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/GrossSalesOfInventory` | PC | 2009–2012 | 66,512 | 13.4% |  |
| x2 | `IRS990EZ/GrossSalesOfInventory` | EZ | 2009–2012 | 42,937 | 15.8% |  |
| x3 | `IRS990/GrossSalesOfInventoryAmt` | PC | 2013–2024 | 511,615 | 15.4% |  |
| x4 | `IRS990EZ/GrossSalesOfInventoryAmt` | EZ | 2013–2024 | 362,427 | 25.6% |  |
| x5 | `IRS990/Form990PartVIII/GrossSalesOfInventory` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.7k | 16k | 21k | 24k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 3.1k | 11k | 14k | 15k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 26k | 29k | 31k | 40k | 43k | 43k | 44k | 50k | 53k | 55k | 55k | 43k |
| x4 |  |  |  |  | 16k | 17k | 18k | 19k | 20k | 22k | 24k | 30k | 49k | 50k | 50k | 46k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 14 | 13 | 13 | 13 | 13 | 13 | 13 | 16 | 16 | 16 | 16 | 16 | 16 | 16 | 15 | 15 |
| 990-EZ | 20 | 18 | 17 | 16 | 15 | 15 | 15 | 15 | 15 | 15 | 16 | 18 | 24 | 24 | 24 | 26 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|-------|--------|---------|-----------|
| 990    | 578,127 | 100.0%    | 18.1%  | 0.1%       | 6,124 | 44,836 | 198,625 | 8,202,113 |
| 990-EZ | 405,362 | 100.0%    | 48.5%  | 0.0%       | 0     | 4,428  | 20,182  | 138,844   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | KANPE HAITI | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510769349200611_public.xml) |
| 2024 | 990 | x3 | IAAI FOUNDATION INC | 19329 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x2 | PTA TEXAS CONGRESS 1446 MCCOY ELEMENTAR… | 49386 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349204213_public.xml) |
| 2012 | 990 | x1 | Fraternal Order of Eagles 2171 Aerie | 142773 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421059349300437_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_INV_GRO_SALE, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
