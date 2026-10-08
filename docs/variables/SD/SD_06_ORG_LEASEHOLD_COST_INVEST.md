# SD_06_ORG_LEASEHOLD_COST_INVEST

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_06_ORG_LEASEHOLD_COST_INVEST

Leasehold improvements - cost or other basis (investment)

- Description: Investment cost or other basis

- Table:

  [`SD-P06-T00-LAND-BLDG-EQUIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p06-t00-land-bldg-equip)
  (one)

- Part: Part VI - Land, Buildings, and Equipment

- Location:

  `SCHED-D-PART-06-LINE-01C-COL-A`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

147k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 76.8x (IRS990ScheduleD/LeaseholdImprovementsGrp/InvestmentCostOrOtherBasisAmt, 990, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.6x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/LeaseholdImprovements/InvestmentCostOrOtherBasis` | SZ | 2009–2012 | 19,324 | 3.54% |  |
| x2 | `IRS990ScheduleD/LeaseholdImprovementsGrp/InvestmentCostOrOtherBasisAmt` | SZ | 2013–2024 | 127,718 | 4.21% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartVI/LeaseholdImprovements/InvestmentCostOrOtherBasis` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.9k | 5.1k | 5.9k | 6.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.8k | 7.3k | 7.6k | 7.7k | 8.1k | 8.9k | 10k | 15k | 15k | 15k | 15k | 12k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 6 | 4 | 4 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 4 | 5 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|-----|--------|---------|-----------|
| 990    | 147,041 | 100.0%    | 46.1%  | 0.0%       | 0   | 18,362 | 190,928 | 6,946,382 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | DRY DOCK CORPORATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511349349311601_public.xml) |
| 2012 | 990 | x1 | MARIMED FOUNDATION FOR ISLAND HEALTH CA… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420309349300687_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_06_ORG_LEASEHOLD_COST_INVEST, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
