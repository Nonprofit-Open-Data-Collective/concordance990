# SF_01_FRGN_REG_NUM_EMPL_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_01_FRGN_REG_NUM_EMPL_TOT

Total number of employees, agents, and independent contractors

- Description: Total employees working on activities outside the US

- Table:

  [`SF-P01-T00-FRGN-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p01-t00-frgn-acts)
  (one)

- Part: Part I - General Information on Activities Outside the United
  States

- Location:

  `SCHED-F-PART-01-LINE-03C-COL-C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

137k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 48.3x (IRS990ScheduleF/TotalEmployeeCnt, 990, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.0x |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/TotalNumberOfEmployees` | SZ | 2009–2012 | 17,264 | 3.34% |  |
| x2 | `IRS990ScheduleF/TotalEmployeeCnt` | SZ | 2013–2024 | 119,829 | 3.69% |  |
| x3 | `IRS990ScheduleF/Form990ScheduleFPartI/TotalNumberOfEmployees` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 4.3k | 5.4k | 6.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.6k | 7.5k | 8.2k | 8.7k | 9.4k | 9.8k | 10k | 11k | 12k | 13k | 13k | 10k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 3 | 3 | 3 | 3 | 3 | 4 | 4 | 4 | 4 | 4 | 3 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----|
| 990    | 137,093 | 100.0%    | 54.3%  | 0.0%       | 0   | 0      | 6   | 988 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Angel Christian Television Trust Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630279349300528_public.xml) |
| 2012 | 990 | x1 | MINORITIES FOR CHRIST INTERNATIONAL | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311359349305856_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_01_FRGN_REG_NUM_EMPL_TOT, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
