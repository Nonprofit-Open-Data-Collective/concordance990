# SA_05_DIST_ALLOC_CYOV_NOT_APPLY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_05_DIST_ALLOC_CYOV_NOT_APPLY

Carryover of excess distributions from prior years not applied (Section
E line 3i)

- Description: Carryover of excess distributions from prior years not
  applied (Section E line 3i)

- Table:

  [`SA-P05-T00-SUPPORT-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p05-t00-support-orgs)
  (one)

- Part: Part V - Type III Non-Functionally Integrated 509(a)(3)
  Supporting Organizations

- Location:

  `SCHED-A-PART-05`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

24k

filings with a value

2018–2024

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
| x1 | `IRS990ScheduleA/DistributionAllocationsGrp/CarryoverPYNotAppliedAmt` | SZ | 2018–2024 | 23,747 | 0.813% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  |  |  |  |  | 2.1k | 2.9k | 3.6k | 3.6k | 3.8k | 4.1k | 3.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  |  |  |  |  |  | \<1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ |  |  |  |  |  |  |  |  |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-----|---------|
| 990    | 14,632  | 100.0%    | 96.1%  | 0.0%       | 0   | 0      | 0   | 316,643 |
| 990-EZ | 9,115   | 100.0%    | 97.5%  | 0.0%       | 0   | 0      | 0   | 14,325  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x1 | COUNTRYWOOD PTA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523149349202317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_05_DIST_ALLOC_CYOV_NOT_APPLY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
