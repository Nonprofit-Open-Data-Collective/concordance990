# SD_02_EMT_STAFF_HOURS_ENFORCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_02_EMT_STAFF_HOURS_ENFORCE

Staff and volunteer hours devoted to monitoring, inspecting, handling of
violations, and enforcing conservation easements

- Description: Staff hours devoted to monitoring or enforcing easements
  during the year

- Table:

  [`SD-P02-T00-CONSERV-EASEMENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p02-t00-conserv-easements)
  (one)

- Part: Part II - Conservation Easements

- Location:

  `SCHED-D-PART-02-LINE-06`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

15k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990ScheduleD/StaffHoursSpentEnforcementCnt, 990, TY2019) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/StaffHoursSpentOnEnforcement` | SZ | 2009–2012 | 2,351 | 0.45% |  |
| x2 | `IRS990ScheduleD/StaffHoursSpentEnforcementCnt` | SZ | 2013–2024 | 13,105 | 0.333% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartII/StaffHoursSpentOnEnforcement` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 220 | 589 | 733 | 809 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 893 | 941 | 998 | 1.0k | 1.1k | 1.1k | 1.1k | 1.3k | 1.3k | 1.3k | 1.2k | 924 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99   |
|--------|---------|-----------|--------|------------|-----|--------|-----|-------|
| 990    | 15,456  | 100.0%    | 10.1%  | 0.0%       | 10  | 50     | 260 | 5,734 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HISTORIC ANNAPOLIS INC | 24.00 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630779349301293_public.xml) |
| 2012 | 990 | x1 | Bedminster Regional Land Conservancy | 14 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341289349301314_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_02_EMT_STAFF_HOURS_ENFORCE, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
