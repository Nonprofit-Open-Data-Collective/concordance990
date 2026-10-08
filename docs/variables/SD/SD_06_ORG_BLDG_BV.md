# SD_06_ORG_BLDG_BV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_06_ORG_BLDG_BV

Buildings - book value

- Description: Buildings - Book value

- Table:

  [`SD-P06-T00-LAND-BLDG-EQUIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p06-t00-land-bldg-equip)
  (one)

- Part: Part VI - Land, Buildings, and Equipment

- Location:

  `SCHED-D-PART-06-LINE-01B-COL-D`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.4M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.9x (IRS990ScheduleD/Buildings/BookValue, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.7x |
| ⓘ info | Sign convention | 0.3% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/Buildings/BookValue` | SZ | 2009–2012 | 202,177 | 39.5% |  |
| x2 | `IRS990ScheduleD/BuildingsGrp/BookValueAmt` | SZ | 2013–2024 | 1,207,363 | 32.4% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartVI/Buildings/BookValue` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 17k | 51k | 64k | 71k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 77k | 83k | 87k | 90k | 96k | 99k | 103k | 117k | 120k | 122k | 122k | 90k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 50 | 41 | 40 | 39 | 39 | 38 | 37 | 37 | 37 | 36 | 36 | 36 | 36 | 35 | 34 | 32 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 1,409,536 | 100.0% | 3.6% | 0.3% | 164,771 | 590,444 | 2,284,390 | 118,507,854 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | 7432365 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | MINNEAPOLIS COLLEGE OF ART & DESIGN | 12108656 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_06_ORG_BLDG_BV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
