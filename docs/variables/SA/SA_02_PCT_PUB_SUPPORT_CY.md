# SA_02_PCT_PUB_SUPPORT_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_PCT_PUB_SUPPORT_CY

Public support percentage - current year

- Description: Public support percentage (line 6 column (f) divided by
  line 12 column (f)

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02-SECTION-C-LINE-14`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

2.2M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.1x (IRS990ScheduleA/PublicSupportPertcentage170, 990EZ, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleA/PublicSupportCY170Pct: fraction (0-1); IRS990ScheduleA/PublicSupportPertcentage170: fraction (0-1) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/PublicSupportPertcentage170` | SZ | 2009–2012 | 273,929 | 37% |  |
| x2 | `IRS990ScheduleA/PublicSupportCY170Pct` | SZ | 2013–2024 | 1,883,889 | 34.4% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartII/PublicSupportPertcentage` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 17k | 67k | 89k | 101k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 112k | 124k | 133k | 139k | 148k | 154k | 161k | 176k | 193k | 192k | 195k | 157k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 37 | 37 | 38 | 38 | 38 | 39 | 39 | 39 | 39 | 38 | 39 | 38 | 38 | 37 | 37 | 37 |
| 990-EZ | 30 | 34 | 35 | 35 | 35 | 35 | 34 | 35 | 34 | 34 | 33 | 32 | 32 | 30 | 30 | 31 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25  | Median | P75  | P99 |
|--------|-----------|-----------|--------|------------|------|--------|------|-----|
| 990    | 1,457,679 | 100.0%    | 14.5%  | 0.0%       | 0.68 | 0.93   | 1.00 | 1   |
| 990-EZ | 700,119   | 100.0%    | 34.2%  | 0.0%       | 0    | 0.91   | 1.00 | 1   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | 0.67300 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x1 | THE MASONIC LIBRARY AND MUSEUM OF INDIA… | 0.69860 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332279349200753_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_PCT_PUB_SUPPORT_CY, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
