# SF_01_FRGN_REG_NUM_EMPL_CONTIN

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_01_FRGN_REG_NUM_EMPL_CONTIN

Total from continuation sheets to Part 1 number of employees, agents,
and independent contractors

- Description: Total number of employees from continuation sheets
  working on region activities outside the US (Part I)

- Table:

  [`SF-P01-T00-FRGN-ACTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p01-t00-frgn-acts)
  (one)

- Part: Part I - General Information on Activities Outside the United
  States

- Location:

  `SCHED-F-PART-01-LINE-03B-COL-C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

92k

filings with a value

2010–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 21.8x (IRS990ScheduleF/ContNumberOfEmployees, 990, TY2012) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/ContNumberOfEmployees` | SZ | 2010–2012 | 10,428 | 2.25% |  |
| x2 | `IRS990ScheduleF/ContinutationTotalEmployeeCnt` | SZ | 2013–2016 | 21,598 | 2.51% |  |
| x3 | `IRS990ScheduleF/ContinuationTotalEmployeeCnt` | SZ | 2017–2024 | 60,288 | 2.43% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2.8k | 3.6k | 4.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.5k | 5.2k | 5.8k | 6.1k |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  | 6.6k | 6.8k | 7.1k | 7.4k | 8.0k | 8.6k | 9.0k | 6.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99   |
|--------|---------|-----------|--------|------------|-----|--------|-----|-------|
| 990    | 92,314  | 100.0%    | 97.2%  | 0.0%       | 0   | 0      | 0   | 31.23 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | THE CLEVELAND CLINIC FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2016 | 990 | x2 | Friends of East Africa Foundation | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201711869349300316_public.xml) |
| 2012 | 990 | x1 | MINORITIES FOR CHRIST INTERNATIONAL | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311359349305856_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_01_FRGN_REG_NUM_EMPL_CONTIN, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
