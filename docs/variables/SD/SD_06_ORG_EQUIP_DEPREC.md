# SD_06_ORG_EQUIP_DEPREC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_06_ORG_EQUIP_DEPREC

Equipment - accumulated depreciation

- Description: Equipment - Depreciation

- Table:

  [`SD-P06-T00-LAND-BLDG-EQUIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p06-t00-land-bldg-equip)
  (one)

- Part: Part VI - Land, Buildings, and Equipment

- Location:

  `SCHED-D-PART-06-LINE-01D-COL-C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

2.0M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.2x (IRS990ScheduleD/Equipment/Depreciation, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/Equipment/Depreciation` | SZ | 2009–2012 | 281,003 | 56.1% |  |
| x2 | `IRS990ScheduleD/EquipmentGrp/DepreciationAmt` | SZ | 2013–2024 | 1,698,162 | 43.7% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartVI/Equipment/Depreciation` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 22k | 69k | 89k | 101k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 111k | 120k | 127k | 131k | 140k | 142k | 147k | 161k | 165k | 167k | 166k | 121k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 65 | 56 | 56 | 56 | 56 | 55 | 54 | 54 | 53 | 52 | 52 | 50 | 49 | 48 | 47 | 44 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25    | Median | P75     | P99        |
|--------|-----------|-----------|--------|------------|--------|--------|---------|------------|
| 990    | 1,979,159 | 100.0%    | 1.1%   | 0.1%       | 19,039 | 75,555 | 358,225 | 44,811,959 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 498705 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | 14017 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_06_ORG_EQUIP_DEPREC, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
