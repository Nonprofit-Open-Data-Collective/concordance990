# F9_07_COMP_DTK_AVE_HOUR_WEEK_RL

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_DTK_AVE_HOUR_WEEK_RL

Average hours per week - related organizations

- Description: Average hours per week for related organizations
  (F990-PC-PART-07-SECTION-A: F990-EZ-PART-04-PART-06-LINE-50-CONBINED)

- Table:

  [`F9-P07-T01-COMPENSATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p07-t01-compensation)
  (many)

- Part: Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent Contractors

- Location:

  `F990-PC-PART-07-SECTION-A-LINE-01A-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: PC

2 / 2

xpaths observed / mapped

1.4M

filings with a value

2012–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.3x (IRS990/Form990PartVIISectionAGrp/AverageHoursPerWeekRltdOrgRt, 990, TY2018) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990/Form990PartVIISectionA/AverageHoursPerWeekRelated: percent or small count; IRS990/Form990PartVIISectionAGrp/AverageHoursPerWeekRltdOrgRt: percent or small count |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/Form990PartVIISectionA/AverageHoursPerWeekRelated` | PC | 2012–2012 | 51,102 | 28.4% | 94.7% |
| x2 | `IRS990/Form990PartVIISectionAGrp/AverageHoursPerWeekRltdOrgRt` | PC | 2013–2024 | 1,337,346 | 42.8% | 93.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  | 51k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 71k | 84k | 90k | 95k | 103k | 107k | 112k | 128k | 137k | 144k | 148k | 119k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  | 28 | 35 | 38 | 39 | 39 | 39 | 39 | 40 | 40 | 41 | 41 | 42 | 43 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75  | P99 |
|--------|-----------|-----------|--------|------------|-----|--------|------|-----|
| 990    | 1,388,422 | 100.0%    | 74.1%  | 0.0%       | 0   | 0      | 0.32 | 50  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CHRISTIAN SHANE FONVILLE YOUTH | 0.00 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | 0.00 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_DTK_AVE_HOUR_WEEK_RL, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
