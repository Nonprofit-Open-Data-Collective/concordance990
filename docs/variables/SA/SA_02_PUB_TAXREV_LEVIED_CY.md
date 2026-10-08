# SA_02_PUB_TAXREV_LEVIED_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_PUB_TAXREV_LEVIED_CY

Tax revenues levied for organization benefit during the current tax year

- Description: Current tax year

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02-SECTION-A-LINE-02-COL-E`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

88k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 49.0x (IRS990ScheduleA/TaxRevLeviedOrgnztnlBnft170Grp/CurrentTaxYearAmt, 990, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.9x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/TaxRevLeviedForOrgBenefit170/CurrentTaxYear` | SZ | 2009–2012 | 7,645 | 0.97% |  |
| x2 | `IRS990ScheduleA/TaxRevLeviedOrgnztnlBnft170Grp/CurrentTaxYearAmt` | SZ | 2013–2024 | 80,678 | 2.72% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartII/TaxRevenuesLeviedForOrgBenefit/CurrentTaxYear` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 544 | 2.0k | 2.4k | 2.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.9k | 3.3k | 3.6k | 3.7k | 3.9k | 4.4k | 4.9k | 7.1k | 9.8k | 11k | 13k | 12k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 |
| 990-EZ | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 3 | 3 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|-----|--------|---------|-----------|
| 990    | 47,006  | 100.0%    | 48.8%  | 0.0%       | 0   | 89,603 | 329,004 | 8,081,509 |
| 990-EZ | 41,315  | 100.0%    | 85.6%  | 0.0%       | 0   | 0      | 8,142   | 133,075   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | Science & Technology Education Project | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2012 | 990 | x1 | Exeter Volunteer Fire Company \#2 | 185375 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302119349300220_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_PUB_TAXREV_LEVIED_CY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
