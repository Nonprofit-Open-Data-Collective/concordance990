# SD_02_EMT_TOT_ACREAGE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_02_EMT_TOT_ACREAGE

Total acreage restricted by conservation easements

- Description: Total acreage subject to easements

- Table:

  [`SD-P02-T00-CONSERV-EASEMENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p02-t00-conserv-easements)
  (one)

- Part: Part II - Conservation Easements

- Location:

  `SCHED-D-PART-02-LINE-02b`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

19k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.9x (IRS990ScheduleD/TotalAcreageCnt, 990, TY2015) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/TotalAcreage` | SZ | 2009–2012 | 2,737 | 0.54% |  |
| x2 | `IRS990ScheduleD/TotalAcreageCnt` | SZ | 2013–2024 | 16,468 | 0.434% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartII/TotalAcreage` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 242 | 671 | 853 | 971 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.1k | 1.1k | 1.2k | 1.3k | 1.4k | 1.4k | 1.4k | 1.6k | 1.6k | 1.6k | 1.6k | 1.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990    | 19,205  | 100.0%    | 2.8%   | 0.0%       | 17  | 96.03  | 1,361 | 116,380 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | FALMOUTH CONSERVATION TRUST | 73 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630709349301858_public.xml) |
| 2012 | 990 | x1 | Bedminster Regional Land Conservancy | 45 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341289349301314_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_02_EMT_TOT_ACREAGE, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
