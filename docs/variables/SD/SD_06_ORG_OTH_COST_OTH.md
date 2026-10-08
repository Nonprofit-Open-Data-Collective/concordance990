# SD_06_ORG_OTH_COST_OTH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_06_ORG_OTH_COST_OTH

Other - cost or other basis (other)

- Description: Other cost or other basis

- Table:

  [`SD-P06-T00-LAND-BLDG-EQUIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p06-t00-land-bldg-equip)
  (one)

- Part: Part VI - Land, Buildings, and Equipment

- Location:

  `SCHED-D-PART-06-LINE-01E-COL-B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.3M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.8x (IRS990ScheduleD/OtherLandBuildings/OtherCostOrOtherBasis, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.7x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/OtherLandBuildings/OtherCostOrOtherBasis` | SZ | 2009–2012 | 180,807 | 35.5% |  |
| x2 | `IRS990ScheduleD/OtherLandBuildingsGrp/OtherCostOrOtherBasisAmt` | SZ | 2013–2024 | 1,091,271 | 29.1% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartVI/Other/OtherCostOrOtherBasis` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 15k | 45k | 57k | 64k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 70k | 76k | 80k | 83k | 88k | 90k | 94k | 104k | 107k | 109k | 110k | 81k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 45 | 37 | 36 | 35 | 35 | 35 | 34 | 34 | 34 | 33 | 33 | 32 | 32 | 31 | 31 | 29 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25    | Median | P75     | P99        |
|--------|-----------|-----------|--------|------------|--------|--------|---------|------------|
| 990    | 1,272,074 | 100.0%    | 4.5%   | 0.1%       | 18,891 | 78,893 | 414,119 | 38,791,606 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | 9483 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | ROUNDTABLE ON SUSTAINABLE | 986 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349300428_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_06_ORG_OTH_COST_OTH, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
