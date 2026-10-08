# SB_01_CONTRIBUTOR_NUM

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_01_CONTRIBUTOR_NUM

Contributor number

- Description: Schedule B Part I, column (a): contributor number

- Table:

  [`SB-P01-T01-CONTRIBUTORS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sb-p01-t01-contributors)
  (many)

- Part: Part I - Contributors

- Location:

  `SCHED-B-PART-01`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990, F990PF

- Forms: SZ

2 / 2

xpaths observed / mapped

2.5M

filings with a value

2009–2024

tax years observed

2 + 6 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ⚠ fail | Values parse as numbers | 22.4% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.4x (IRS990ScheduleB/ContributorInfo/ContributorNumber, 990PF, TY2011) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/ContributorInfo/ContributorNumber` | SZ | 2009–2012 | 337,628 | 39.3% | 2.4% |
| x2 | `IRS990ScheduleB/ContributorInformationGrp/ContributorNum` | SZ | 2013–2024 | 2,209,884 | 37.8% | 3.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 24k | 82k | 108k | 123k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 137k | 151k | 163k | 171k | 21k | 122k | 203k | 234k | 259k | 265k | 268k | 216k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 59 | 49 | 49 | 49 | 49 | 49 | 49 | 49 | \<1 | 32 | 50 | 50 | 51 | 51 | 51 | 50 |
| 990-EZ | 27 | 25 | 26 | 26 | 25 | 25 | 25 | 26 | \<1 | 10 | 26 | 26 | 28 | 28 | 28 | 28 |
| 990-PF | 25 | 26 | 25 | 28 | 27 | 27 | 27 | 28 | 28 | 26 | 25 | 25 | 26 | 25 | 25 | 25 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|--------|-----------|-----------|--------|------------|-----|--------|-----|-----|
| 990    | 1,743,698 | 0.0%      | 0.0%   | 0.0%       |     |        |     |     |
| 990-EZ | 506,863   | 0.0%      | 0.0%   | 0.0%       |     |        |     |     |
| 990-PF | 296,933   | 100.0%    | 0.0%   | 0.0%       | 1   | 2      | 5   | 141 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | RESTRICTED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_01_CONTRIBUTOR_NUM, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
