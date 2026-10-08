# SA_03_TOT_SUPPORT_CY_M3

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_TOT_SUPPORT_CY_M3

Gifts, grants, contributions, and membership fees received during the
current tax year minus three years

- Description: Current tax year minus three years

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-B-LINE-13-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.2x (IRS990ScheduleA/TotalSupportTotal/CurrentTaxYearMinus3Years, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.7x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/TotalSupportTotal/CurrentTaxYearMinus3Years` | SZ | 2009–2012 | 181,382 | 25% |  |
| x2 | `IRS990ScheduleA/TotalSupportCalendarYearGrp/CurrentTaxYearMinus3YearsAmt` | SZ | 2013–2024 | 1,391,879 | 29.6% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.3k | 45k | 59k | 68k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 76k | 84k | 91k | 96k | 104k | 110k | 115k | 129k | 146k | 152k | 154k | 135k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 18 | 22 | 23 | 23 | 23 | 23 | 23 | 24 | 24 | 24 | 24 | 24 | 24 | 24 | 24 | 26 |
| 990-EZ | 22 | 28 | 28 | 29 | 29 | 29 | 29 | 29 | 30 | 30 | 31 | 31 | 32 | 33 | 33 | 36 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25     | Median  | P75       | P99        |
|--------|---------|-----------|--------|------------|---------|---------|-----------|------------|
| 990    | 913,536 | 100.0%    | 1.3%   | 0.0%       | 156,657 | 374,813 | 1,276,938 | 56,624,367 |
| 990-EZ | 659,719 | 100.0%    | 7.2%   | 0.0%       | 29,929  | 59,358  | 97,511    | 306,063    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CHRISTIAN SHANE FONVILLE YOUTH | 505414 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990EZ | x1 | PTA TEXAS CONGRESS 1446 MCCOY ELEMENTAR… | 49362 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349204213_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_TOT_SUPPORT_CY_M3, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
