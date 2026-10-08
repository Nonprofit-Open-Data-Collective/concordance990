# SC_01_ORG_AMT_EXPENDED_527_ACT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_01_ORG_AMT_EXPENDED_527_ACT

Amount directly expended for section 527 exempt function activities

- Description: Enter the amount directly expended by the filing
  organization for section 527 exempt function activities

- Table:

  [`SC-P01-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p01-t00-lobby)
  (one)

- Part: Part I - Political Campaign Activities (I-A, I-B, I-C)

- Location:

  `SCHED-C-PART-01-C-LINE-01`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

14k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.8x (IRS990ScheduleC/Expended527ActivitiesAmt, 990, TY2023) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.2x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/AmtExpendedFor527Activities` | SZ | 2009–2012 | 1,780 | 0.225% |  |
| x2 | `IRS990ScheduleC/Expended527ActivitiesAmt` | SZ | 2013–2024 | 12,581 | 0.28% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartI/AmtExpendedFor527Activities` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 121 | 505 | 539 | 615 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 671 | 769 | 741 | 823 | 832 | 1.1k | 1.0k | 1.3k | 1.3k | 1.4k | 1.4k | 1.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 12,636  | 100.0%    | 40.7%  | 0.0%       | 0   | 1,950  | 28,370 | 1,187,540 |
| 990-EZ | 1,725   | 100.0%    | 55.4%  | 0.0%       | 0   | 522    | 6,620  | 46,207    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Iowa Federation of Labor AFL-CIO | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511619349301666_public.xml) |
| 2012 | 990 | x1 | LIONS CLUB OF WAVERLY | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201440579349300524_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_01_ORG_AMT_EXPENDED_527_ACT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
