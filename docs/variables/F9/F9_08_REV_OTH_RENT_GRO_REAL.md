# F9_08_REV_OTH_RENT_GRO_REAL

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_RENT_GRO_REAL

Gross rents - real

- Description: Gross Rents Real

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-06A-COL-i`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

544k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.5x (IRS990/GrossRents/Real, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/GrossRents/Real` | PC | 2009–2012 | 76,238 | 14.7% |  |
| x2 | `IRS990/GrossRentsGrp/RealAmt` | PC | 2013–2024 | 467,788 | 13.8% |  |
| x3 | `IRS990/Form990PartVIII/GrossRents/Real` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 7.1k | 19k | 24k | 26k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 29k | 31k | 33k | 34k | 36k | 37k | 38k | 44k | 47k | 49k | 50k | 38k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 21 | 15 | 15 | 15 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-------|--------|--------|-----------|
| 990    | 544,023 | 100.0%    | 8.5%   | 0.1%       | 7,004 | 23,085 | 87,410 | 3,450,415 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | VETERANS OF FOREIGN WARS POST 3676 | 18000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520799349301412_public.xml) |
| 2012 | 990 | x1 | CIRCLEVILLE-PICKAWAY COMMUNITY | 36100 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343189349304264_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_RENT_GRO_REAL, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
