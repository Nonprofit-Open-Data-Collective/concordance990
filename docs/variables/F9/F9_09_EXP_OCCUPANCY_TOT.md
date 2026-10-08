# F9_09_EXP_OCCUPANCY_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_09_EXP_OCCUPANCY_TOT

Occupancy - total expenses

- Description: Occupancy; rent; utilities; and maintenance

- Table:

  [`F9-P09-T00-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p09-t00-expenses)
  (one)

- Part: Part IX - Statement of Functional Expenses

- Location:

  `F990-PC-PART-09-LINE-16-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

3.7M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.4x (IRS990/Occupancy/Total, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/Occupancy/Total` | PC | 2009–2012 | 367,548 | 73.8% |  |
| x2 | `IRS990EZ/OccupancyRentUtilitiesAndMaint` | EZ | 2009–2012 | 122,942 | 46.2% |  |
| x3 | `IRS990/OccupancyGrp/TotalAmt` | PC | 2013–2024 | 2,362,804 | 67.5% |  |
| x4 | `IRS990EZ/OccupancyRentUtltsAndMaintAmt` | EZ | 2013–2024 | 854,173 | 48.6% |  |
| x5 | `IRS990/Form990PartIX/Occupancy/Total` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 26k | 91k | 118k | 133k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 8.6k | 32k | 39k | 43k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 146k | 160k | 169k | 176k | 188k | 193k | 201k | 224k | 234k | 242k | 245k | 187k |
| x4 |  |  |  |  | 48k | 52k | 55k | 56k | 60k | 64k | 66k | 74k | 96k | 99k | 99k | 87k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 79 | 74 | 74 | 74 | 73 | 73 | 73 | 72 | 72 | 71 | 71 | 70 | 69 | 69 | 69 | 67 |
| 990-EZ | 56 | 51 | 47 | 46 | 46 | 45 | 44 | 43 | 43 | 43 | 43 | 43 | 47 | 48 | 48 | 49 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25   | Median | P75     | P99       |
|--------|-----------|-----------|--------|------------|-------|--------|---------|-----------|
| 990    | 2,730,341 | 100.0%    | 13.4%  | 0.0%       | 7,692 | 32,520 | 111,310 | 4,930,651 |
| 990-EZ | 977,105   | 100.0%    | 12.1%  | 0.0%       | 1,827 | 6,926  | 16,614  | 87,335    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | THE CREATIVES PROJECT INC | 31786 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2024 | 990 | x3 | OWL CREEK COUNTRY CLUB | 49792 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990EZ | x2 | THE MASONIC LIBRARY AND MUSEUM OF INDIA… | 1691 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332279349200753_public.xml) |
| 2012 | 990 | x1 | ROUNDTABLE ON SUSTAINABLE | 40437 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349300428_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_09_EXP_OCCUPANCY_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
