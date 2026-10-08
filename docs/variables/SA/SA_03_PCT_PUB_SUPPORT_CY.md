# SA_03_PCT_PUB_SUPPORT_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PCT_PUB_SUPPORT_CY

Public support percentage - current year

- Description: Public support percentage (line 8 column(f) divided by
  line 13 column(f))

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-C-LINE-15`

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.3x (IRS990ScheduleA/PublicSupportPercentage509, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleA/PublicSupportCY509Pct: fraction (0-1); IRS990ScheduleA/PublicSupportPercentage509: fraction (0-1) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/PublicSupportPercentage509` | SZ | 2009–2012 | 262,156 | 35.8% |  |
| x2 | `IRS990ScheduleA/PublicSupportCY509Pct` | SZ | 2013–2024 | 1,913,225 | 37.7% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/PublicSupportPercentage` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 15k | 64k | 85k | 98k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 110k | 122k | 132k | 138k | 148k | 157k | 163k | 173k | 193k | 201k | 205k | 172k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 26 | 30 | 31 | 32 | 32 | 32 | 32 | 32 | 32 | 32 | 32 | 31 | 31 | 31 | 32 | 32 |
| 990-EZ | 40 | 42 | 43 | 44 | 44 | 45 | 45 | 45 | 46 | 46 | 46 | 44 | 44 | 45 | 45 | 46 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25  | Median | P75  | P99 |
|--------|-----------|-----------|--------|------------|------|--------|------|-----|
| 990    | 1,217,814 | 100.0%    | 17.5%  | 0.0%       | 0.86 | 0.99   | 1.00 | 1   |
| 990-EZ | 957,553   | 100.0%    | 19.7%  | 0.0%       | 0.91 | 1.00   | 1    | 1   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x1 | PINEBROOK OF CHARLESTON INC | 0.99970 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349201580_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PCT_PUB_SUPPORT_CY, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
