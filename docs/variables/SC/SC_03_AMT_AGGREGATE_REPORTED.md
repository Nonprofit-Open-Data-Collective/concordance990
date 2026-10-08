# SC_03_AMT_AGGREGATE_REPORTED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_03_AMT_AGGREGATE_REPORTED

Aggregate amount reported of nondeductible dues

- Description: Aggregate amount reported in section 6033(e)(1)(A)
  notices of nondeductible section 162(e) dues

- Table:

  [`SC-P03-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p03-t00-lobby)
  (one)

- Part: Part III - Lobbying and Political Activities of Section
  501(c)(4), (5), and (6) Organizations (III-A, III-B)

- Location:

  `SCHED-C-PART-03-B-LINE-03`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

57k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.1x (IRS990ScheduleC/AggrAmtReportedInDuesNotices, 990, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/AggrAmtReportedInDuesNotices` | SZ | 2009–2012 | 7,560 | 1.05% |  |
| x2 | `IRS990ScheduleC/AggregateReportedDuesNtcAmt` | SZ | 2013–2024 | 49,363 | 0.832% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartIII/AggrAmtReportedInDuesNotices` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 347 | 1.9k | 2.5k | 2.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.2k | 3.5k | 3.7k | 3.9k | 4.1k | 4.2k | 4.4k | 4.7k | 4.7k | 4.7k | 4.6k | 3.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|--------|--------|---------|-----------|
| 990    | 50,280  | 100.0%    | 2.0%   | 0.0%       | 29,829 | 80,585 | 237,097 | 5,885,710 |
| 990-EZ | 6,643   | 100.0%    | 1.0%   | 0.1%       | 8,489  | 16,553 | 30,497  | 93,450    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Dallas Regional Chamber | 297935 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543179349310514_public.xml) |
| 2012 | 990 | x1 | IBEW Local Union 73 | 5079 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201340789349300209_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_03_AMT_AGGREGATE_REPORTED, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
