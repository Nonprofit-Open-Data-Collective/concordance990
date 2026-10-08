# SA_02_PCT_PUB_SUPPORT_PY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_PCT_PUB_SUPPORT_PY

Public support percentage, previous year

- Description: Public support percentage from prior year's Schedule A;
  Part II; line 14

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02-SECTION-C-LINE-15`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.6M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.0x (IRS990ScheduleA/PublicSupportPertcentPriorYear, 990EZ, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleA/PublicSupportPertcentPriorYear: fraction (0-1); IRS990ScheduleA/PublicSupportPY170Pct: fraction (0-1) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/PublicSupportPertcentPriorYear` | SZ | 2009–2012 | 197,274 | 26.6% |  |
| x2 | `IRS990ScheduleA/PublicSupportPY170Pct` | SZ | 2013–2024 | 1,399,523 | 26.9% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartII/PublicSupportPertcentPriorYear` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 14k | 48k | 63k | 73k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 81k | 90k | 96k | 101k | 108k | 112k | 117k | 131k | 143k | 148k | 151k | 123k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 32 | 29 | 30 | 30 | 30 | 31 | 31 | 31 | 31 | 31 | 31 | 31 | 31 | 31 | 31 | 31 |
| 990-EZ | 19 | 19 | 19 | 20 | 20 | 19 | 19 | 19 | 19 | 19 | 19 | 19 | 19 | 20 | 20 | 21 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25  | Median | P75  | P99 |
|--------|-----------|-----------|--------|------------|------|--------|------|-----|
| 990    | 1,181,710 | 100.0%    | 0.6%   | 0.0%       | 0.78 | 0.96   | 1.00 | 1   |
| 990-EZ | 415,075   | 100.0%    | 5.4%   | 0.0%       | 0.81 | 0.99   | 1    | 1   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | THE CREATIVES PROJECT INC | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2012 | 990EZ | x1 | THE MASONIC LIBRARY AND MUSEUM OF INDIA… | 0.51390 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332279349200753_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_PCT_PUB_SUPPORT_PY, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
