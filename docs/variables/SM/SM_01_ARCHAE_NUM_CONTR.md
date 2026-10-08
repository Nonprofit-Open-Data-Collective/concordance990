# SM_01_ARCHAE_NUM_CONTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_01_ARCHAE_NUM_CONTR

Archeological artifacts - number of contributions or items contributed

- Description: Number of contributions

- Table:

  [`SM-P01-T00-NONCASH-CONTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p01-t00-noncash-contributions)
  (one)

- Part: Part I - Types of Property

- Location:

  `SCHED-M-PART-01-LINE-24-COL-B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

349

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/ArchaeologicalArtifacts/NumberOfContributions` | SZ | 2009–2012 | 82 | 0.0128% |  |
| x2 | `IRS990ScheduleM/ArchaeologicalArtifactsGrp/ContributionCnt` | SZ | 2013–2024 | 267 | 0.00397% |  |
| x3 | `IRS990ScheduleM/Form990ScheduleMPartI/ArchaeologicalArtifacts/NumberOfContributions` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 17 | 20 | 22 | 23 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 19 | 32 | 23 | 25 | 21 | 31 | 17 | 21 | 30 | 19 | 18 | 11 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-------|-----|
| 990    | 349     | 100.0%    | 3.7%   | 0.0%       | 1   | 2      | 12.75 | 137 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | INTOUCH OUTREACH RESOURCE CTR | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202620749349300227_public.xml) |
| 2012 | 990 | x1 | HISTORIC CHARLESTON FOUNDATION | 42 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322259349300012_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_01_ARCHAE_NUM_CONTR, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
