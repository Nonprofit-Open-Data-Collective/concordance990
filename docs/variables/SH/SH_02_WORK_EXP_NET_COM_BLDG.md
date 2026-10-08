# SH_02_WORK_EXP_NET_COM_BLDG

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_02_WORK_EXP_NET_COM_BLDG

Workforce development - net community building expense

- Description: Net community building expense

- Table:

  [`SH-P02-T00-FAP-COMMUNITY-BENEFIT-POLICY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p02-t00-fap-community-benefit-policy)
  (one)

- Part: Part II - Community Building Activities

- Location:

  `SCHED-H-PART-02-LINE-08-COL-E`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

11k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/WorkforceDevelopment/NetCommunityBuildingExpense` | SZ | 2009–2012 | 2,407 | 0.371% |  |
| x2 | `IRS990ScheduleH/WorkforceDevelopmentGrp/NetCommunityBenefitExpnsAmt` | SZ | 2013–2024 | 8,787 | 0.137% |  |
| x3 | `IRS990ScheduleH/Form990ScheduleHPartII/WorkforceDevelopment/NetCommunityBuildingExpense` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 383 | 662 | 695 | 667 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 663 | 713 | 745 | 756 | 808 | 771 | 722 | 661 | 744 | 850 | 975 | 379 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|-------|--------|---------|-----------|
| 990    | 11,194  | 100.0%    | 25.9%  | 0.1%       | 1,052 | 15,013 | 123,593 | 1,815,628 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | St Francis Hospital Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349302599_public.xml) |
| 2012 | 990 | x1 | ST JOSEPHS HOSPITAL HEALTH CENTER | 695 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323189349305472_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_02_WORK_EXP_NET_COM_BLDG, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
