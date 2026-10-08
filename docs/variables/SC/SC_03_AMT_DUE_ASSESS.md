# SC_03_AMT_DUE_ASSESS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_03_AMT_DUE_ASSESS

Dues, assessments, and similar amounts from members

- Description: Dues; assessments and similar amounts from members

- Table:

  [`SC-P03-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p03-t00-lobby)
  (one)

- Part: Part III - Lobbying and Political Activities of Section
  501(c)(4), (5), and (6) Organizations (III-A, III-B)

- Location:

  `SCHED-C-PART-03-B-LINE-01`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

79k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.1x (IRS990ScheduleC/DuesAssessmentsAmt, 990, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/DuesAssessments` | SZ | 2009–2012 | 10,251 | 1.42% |  |
| x2 | `IRS990ScheduleC/DuesAssessmentsAmt` | SZ | 2013–2024 | 68,341 | 1.17% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartIII/DuesAssessments` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 412 | 2.5k | 3.4k | 3.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.4k | 4.9k | 5.1k | 5.3k | 5.6k | 5.8k | 5.9k | 6.5k | 6.5k | 6.5k | 6.4k | 5.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25     | Median  | P75       | P99        |
|--------|---------|-----------|--------|------------|---------|---------|-----------|------------|
| 990    | 70,215  | 100.0%    | 0.8%   | 0.0%       | 175,440 | 456,750 | 1,285,702 | 29,293,709 |
| 990-EZ | 8,377   | 100.0%    | 0.9%   | 0.0%       | 32,150  | 53,003  | 89,191    | 179,419    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NATIONAL UTILITY CONTRACTORS ASSOC | 112450 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541819349300844_public.xml) |
| 2012 | 990 | x1 | ASSOCIATION OF VA SURGEONS CO SUE LENTZ | 29700 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303189349308545_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_03_AMT_DUE_ASSESS, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
