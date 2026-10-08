# SH_02_TOT_EXP_TOT_COM_BLDG

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_02_TOT_EXP_TOT_COM_BLDG

Total community building activities - total community building expertise

- Description: Total community building expense

- Table:

  [`SH-P02-T00-FAP-COMMUNITY-BENEFIT-POLICY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p02-t00-fap-community-benefit-policy)
  (one)

- Part: Part II - Community Building Activities

- Location:

  `SCHED-H-PART-02-LINE-10-COL-C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

20k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.4x (IRS990ScheduleH/TotalCommuntityBuildingActyGrp/TotalCommunityBenefitExpnsAmt, 990, TY2021) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Total/TotalCommunityBuildingExpense` | SZ | 2009–2012 | 4,925 | 0.77% |  |
| x2 | `IRS990ScheduleH/TotalCommuntityBuildingActyGrp/TotalCommunityBenefitExpnsAmt` | SZ | 2013–2024 | 14,936 | 0.202% |  |
| x3 | `IRS990ScheduleH/Form990ScheduleHPartII/Total/TotalCommunityBuildingExpense` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 813 | 1.4k | 1.4k | 1.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.4k | 1.3k | 1.3k | 1.3k | 1.3k | 1.3k | 1.2k | 1.2k | 1.3k | 1.3k | 1.4k | 560 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|--------|--------|---------|-----------|
| 990    | 19,861  | 100.0%    | 8.3%   | 0.0%       | 11,855 | 56,314 | 245,822 | 5,645,348 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Casa Colina Hospital and Centers for He… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610479349301421_public.xml) |
| 2012 | 990 | x1 | Powell Valley Health Care Inc | 23393 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349304887_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_02_TOT_EXP_TOT_COM_BLDG, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
