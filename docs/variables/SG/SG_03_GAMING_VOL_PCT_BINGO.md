# SG_03_GAMING_VOL_PCT_BINGO

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GAMING_VOL_PCT_BINGO

Volunteer labor percentage for bingo

- Description: volunteer labor percentage; bingo

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-06-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

26k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.0x (IRS990ScheduleG/GamingInformation/VolunteerLaborPercentageBingo, 990, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleG/GamingInformation/VolunteerLaborPercentageBingo: fraction (0-1); IRS990ScheduleG/GamingInformationGrp/VolunteerLaborBingoPct: fraction (0-1) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/GamingInformation/VolunteerLaborPercentageBingo` | SZ | 2009–2012 | 3,958 | 0.542% |  |
| x2 | `IRS990ScheduleG/GamingInformationGrp/VolunteerLaborBingoPct` | SZ | 2013–2024 | 22,515 | 0.396% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartIII/GamingInformation/VolunteerLaborPercentageBingo` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 198 | 993 | 1.3k | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.7k | 1.8k | 1.9k | 1.9k | 1.9k | 2.0k | 1.7k | 1.7k | 1.9k | 2.1k | 2.1k | 1.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | 1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----|
| 990    | 21,171  | 100.0%    | 4.7%   | 0.0%       | 1   | 1      | 1   | 1   |
| 990-EZ | 5,302   | 100.0%    | 18.9%  | 0.0%       | 1   | 1      | 1   | 1   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | HELPFUL HEARTS FOUNDATION INC | 1.00 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541329349201039_public.xml) |
| 2012 | 990 | x1 | AMERICAN VETERANS OF WW II KOREA | 1.00000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323179349303042_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GAMING_VOL_PCT_BINGO, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
