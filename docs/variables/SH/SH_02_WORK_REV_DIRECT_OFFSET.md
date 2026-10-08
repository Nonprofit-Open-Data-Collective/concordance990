# SH_02_WORK_REV_DIRECT_OFFSET

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_02_WORK_REV_DIRECT_OFFSET

Workforce development - direct offsetting revenue

- Description: Direct offsetting revenue

- Table:

  [`SH-P02-T00-FAP-COMMUNITY-BENEFIT-POLICY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p02-t00-fap-community-benefit-policy)
  (one)

- Part: Part II - Community Building Activities

- Location:

  `SCHED-H-PART-02-LINE-08-COL-D`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

2.6k

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
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/WorkforceDevelopment/DirectOffsettingRevenue` | SZ | 2009–2012 | 627 | 0.0757% |  |
| x2 | `IRS990ScheduleH/WorkforceDevelopmentGrp/DirectOffsettingRevenueAmt` | SZ | 2013–2024 | 1,926 | 0.0206% |  |
| x3 | `IRS990ScheduleH/Form990ScheduleHPartII/WorkforceDevelopment/DirectOffsettingRevenue` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 126 | 184 | 181 | 136 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 146 | 153 | 172 | 186 | 194 | 187 | 166 | 162 | 138 | 175 | 190 | 57 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-----|---------|
| 990    | 2,553   | 100.0%    | 79.6%  | 0.0%       | 0   | 0      | 0   | 386,620 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HOLY ROSARY HEALTHCARE | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533089349301528_public.xml) |
| 2012 | 990 | x1 | BANNER HEALTH | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303199349308175_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_02_WORK_REV_DIRECT_OFFSET, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
