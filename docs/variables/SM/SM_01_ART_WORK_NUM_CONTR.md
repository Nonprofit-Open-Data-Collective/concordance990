# SM_01_ART_WORK_NUM_CONTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_01_ART_WORK_NUM_CONTR

Art - works of art - number of contributions or items contributed

- Description: Number of contributions

- Table:

  [`SM-P01-T00-NONCASH-CONTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p01-t00-noncash-contributions)
  (one)

- Part: Part I - Types of Property

- Location:

  `SCHED-M-PART-01-LINE-01-COL-B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

22k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990ScheduleM/WorksOfArtGrp/ContributionCnt, 990, TY2014) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/WorksOfArt/NumberOfContributions` | SZ | 2009–2012 | 4,803 | 0.849% |  |
| x2 | `IRS990ScheduleM/WorksOfArtGrp/ContributionCnt` | SZ | 2013–2024 | 17,619 | 0.32% |  |
| x3 | `IRS990ScheduleM/Form990ScheduleMPartI/WorksOfArt/NumberOfContributions` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 707 | 1.2k | 1.4k | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.6k | 1.6k | 1.6k | 1.6k | 1.6k | 1.6k | 1.4k | 1.3k | 1.4k | 1.5k | 1.4k | 888 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-------|-----|
| 990    | 22,422  | 100.0%    | 0.3%   | 0.0%       | 1   | 4      | 18.25 | 801 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | MONTHAVEN ARTS & CULTURAL CENTER | 30001 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630889349300058_public.xml) |
| 2012 | 990 | x1 | Essentia Health Foundation | 5 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411199349301066_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_01_ART_WORK_NUM_CONTR, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
