# SA_05_DIST_ALLOC_EXCESS_NY_M3

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_05_DIST_ALLOC_EXCESS_NY_M3

Excess distributions carryover to next year from two years prior

- Description: Excess from year 3

- Table:

  [`SA-P05-T00-SUPPORT-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p05-t00-support-orgs)
  (one)

- Part: Part V - Type III Non-Functionally Integrated 509(a)(3)
  Supporting Organizations

- Location:

  `SCHED-A-PART-05-SECTION-E-LINE-08C`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

29k

filings with a value

2015–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/DistributionAllocationsGrp/ExcessFromYear3Amt` | SZ | 2015–2024 | 28,649 | 0.813% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  |  | 1.3k | 1.5k | 2.1k | 2.1k | 2.9k | 3.6k | 3.6k | 3.8k | 4.1k | 3.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  |  |  | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ |  |  |  |  |  |  | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99       |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----------|
| 990    | 17,759  | 100.0%    | 84.1%  | 0.0%       | 0   | 0      | 0   | 1,324,640 |
| 990-EZ | 10,890  | 100.0%    | 92.5%  | 0.0%       | 0   | 0      | 0   | 62,447    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x1 | Noah's Ark Community Development Corp | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521269349201272_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_05_DIST_ALLOC_EXCESS_NY_M3, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
