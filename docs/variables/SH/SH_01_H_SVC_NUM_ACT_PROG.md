# SH_01_H_SVC_NUM_ACT_PROG

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_01_H_SVC_NUM_ACT_PROG

Community health improvement services and community benefit operations -
number of activities or programs

- Description: Number of activities or programs

- Table:

  [`SH-P01-T00-FAP-COMMUNITY-BENEFIT-POLICY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p01-t00-fap-community-benefit-policy)
  (one)

- Part: Part I - Financial Assistance and Certain Other Community
  Benefits at Cost

- Location:

  `SCHED-H-PART-01-LINE-07E-COL-A`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

7.2k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/CommunityHealthServices/NumberOfActivitiesOrPrograms` | SZ | 2009–2012 | 1,912 | 0.292% |  |
| x2 | `IRS990ScheduleH/CommunityHealthServicesGrp/ActivitiesOrProgramsCnt` | SZ | 2013–2024 | 5,320 | 0.044% |  |
| x3 | `IRS990ScheduleH/Form990ScheduleHPartI/CommunityHealthServices/NumberOfActivitiesOrPrograms` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 339 | 516 | 532 | 525 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 540 | 501 | 478 | 462 | 470 | 443 | 483 | 471 | 449 | 441 | 460 | 122 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99   |
|--------|---------|-----------|--------|------------|-----|--------|-------|-------|
| 990    | 7,232   | 100.0%    | 4.1%   | 0.0%       | 7   | 15.75  | 35.38 | 1,891 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | OSWEGO HOSPITAL | 59 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503179349309975_public.xml) |
| 2012 | 990 | x1 | MARIMED FOUNDATION FOR ISLAND HEALTH CA… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420309349300687_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_01_H_SVC_NUM_ACT_PROG, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
