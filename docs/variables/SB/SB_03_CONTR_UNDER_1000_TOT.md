# SB_03_CONTR_UNDER_1000_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_03_CONTR_UNDER_1000_TOT

Total of exclusively religious, charitable, etc. contributions of
\$1,000 or less

- Description: Total of exclusively religious, charitable, etc.
  contributions of \$1,000 or less

- Table:

  [`SB-P03-T00-EXCLUSIVELY-RELIGIOUS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sb-p03-t00-exclusively-religious)
  (one)

- Part: Part III - Exclusively Religious, Charitable, etc.,
  Contributions to Organizations Described in Section 501(c)(7), (8), or
  (10)

- Location:

  `SCHED-B-PART-01`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990, F990PF

2 / 2

xpaths observed / mapped

130

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `GAP` | ▲ warn | (variable) | no 990PF filings in 2014, but filings before and after | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/TotalUnder1000Contributions` |  | 2009–2012 | 62 | 0.000957% |  |
| x2 | `IRS990ScheduleB/TotalUnder1000ContributionsAmt` |  | 2013–2024 | 68 | 0.000876% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2 | 25 | 32 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2 |  | 4 | 4 | 1 | 8 | 8 | 8 | 12 | 8 | 8 | 5 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75     | P99     |
|--------|---------|-----------|--------|------------|--------|--------|---------|---------|
| 990-PF | 130     | 100.0%    | 0.8%   | 0.0%       | 15,085 | 30,414 | 100,664 | 165,529 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Latinoamerica Valerio Foundations Inc | 144005 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531899349101453_public.xml) |
| 2012 | 990PF | x1 | Hakirah Inc | 25000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301199349100335_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_03_CONTR_UNDER_1000_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
