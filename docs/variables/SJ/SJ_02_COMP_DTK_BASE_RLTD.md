# SJ_02_COMP_DTK_BASE_RLTD

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SJ_02_COMP_DTK_BASE_RLTD

Base compensation from related org

- Description: Compensation based on related organizations?

- Table:

  [`SJ-P02-T01-COMPENSATION-DTK`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sj-p02-t01-compensation-dtk)
  (many)

- Part: Part II - Officers, Directors, Trustees, Key Employees, and
  Highest Compensated Employees

- Location:

  `SCHED-J-PART-02-COL-B(i)-LINE-(ii)`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

685k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 4.2x (IRS990ScheduleJ/Form990ScheduleJPartII/CompBasedOnRelatedOrgs, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleJ/Form990ScheduleJPartII/CompBasedOnRelatedOrgs` | SZ | 2009–2012 | 102,086 | 18.3% | 63.3% |
| x2 | `IRS990ScheduleJ/RltdOrgOfficerTrstKeyEmplGrp/CompensationBasedOnRltdOrgsAmt` | SZ | 2013–2024 | 583,105 | 15.5% | 63.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 12k | 26k | 31k | 33k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 35k | 39k | 41k | 42k | 46k | 48k | 51k | 55k | 58k | 61k | 64k | 43k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 36 | 21 | 19 | 18 | 18 | 18 | 17 | 17 | 18 | 18 | 18 | 17 | 17 | 18 | 18 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75     | P99     |
|--------|---------|-----------|--------|------------|-----|--------|---------|---------|
| 990    | 685,191 | 100.0%    | 61.1%  | 0.0%       | 0   | 0      | 189,857 | 894,025 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 712360 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SJ_02_COMP_DTK_BASE_RLTD, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
