# SM_01_CLOTHING_NONCSH_CONTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_01_CLOTHING_NONCSH_CONTR

Clothing and household goods - noncash contribution amounts

- Description: Revenues reported on F990; Pt VIII; line 1g

- Table:

  [`SM-P01-T00-NONCASH-CONTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p01-t00-noncash-contributions)
  (one)

- Part: Part I - Types of Property

- Location:

  `SCHED-M-PART-01-LINE-05-COL-C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

66k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.5x (IRS990ScheduleM/ClothingAndHouseholdGoods/NoncashContribsRptdF990, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/ClothingAndHouseholdGoods/NoncashContribsRptdF990` | SZ | 2009–2012 | 9,833 | 1.88% |  |
| x2 | `IRS990ScheduleM/ClothingAndHouseholdGoodsGrp/NoncashContributionsRptF990Amt` | SZ | 2013–2024 | 56,532 | 1.46% |  |
| x3 | `IRS990ScheduleM/Form990ScheduleMPartI/ClothingAndHouseholdGoods/RevenuesReportedLine1G` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.0k | 2.4k | 3.1k | 3.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.7k | 4.1k | 4.3k | 4.5k | 4.8k | 4.8k | 4.8k | 4.9k | 5.2k | 5.7k | 5.7k | 4.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75     | P99        |
|--------|---------|-----------|--------|------------|--------|--------|---------|------------|
| 990    | 66,365  | 100.0%    | 1.2%   | 0.0%       | 15,828 | 65,810 | 259,688 | 14,704,931 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | 19225 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | MARYVILLE ACADEMY | 35196 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421489349300952_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_01_CLOTHING_NONCSH_CONTR, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
