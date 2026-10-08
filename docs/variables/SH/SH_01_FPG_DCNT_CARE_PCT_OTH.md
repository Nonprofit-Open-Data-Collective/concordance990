# SH_01_FPG_DCNT_CARE_PCT_OTH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_01_FPG_DCNT_CARE_PCT_OTH

Other percentage used as the family income limit in determining
eligibility for providing discounted care

- Description: Discounted other percentage

- Table:

  [`SH-P01-T00-FAP-COMMUNITY-BENEFIT-POLICY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p01-t00-fap-community-benefit-policy)
  (one)

- Part: Part I - Financial Assistance and Certain Other Community
  Benefits at Cost

- Location:

  `SCHED-H-PART-01-LINE-03B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

6.3k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.7x |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleH/DiscountedCareOthPercentageGrp/DiscountedCareOtherPct: large count or amount; IRS990ScheduleH/DiscountedOther/DiscountedOtherPercentage: large count or amount |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/DiscountedOther/DiscountedOtherPercentage` | SZ | 2009–2012 | 1,515 | 0.23% |  |
| x2 | `IRS990ScheduleH/DiscountedCareOthPercentageGrp/DiscountedCareOtherPct` | SZ | 2013–2024 | 4,767 | 0.0678% |  |
| x3 | `IRS990ScheduleH/Form990ScheduleHPartI/DiscountedCare/DiscountedOtherPercentage` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 246 | 433 | 423 | 413 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 414 | 402 | 428 | 427 | 454 | 425 | 422 | 427 | 405 | 395 | 380 | 188 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----|
| 990    | 6,282   | 100.0%    | 2.2%   | 0.0%       | 184 | 450    | 500 | 797 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Texas Health Harris Methodist Hospital … | 500\. | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533109349300848_public.xml) |
| 2012 | 990 | x1 | MEDICAL SERVICES INC | 150.000000000000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332739349300093_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_01_FPG_DCNT_CARE_PCT_OTH, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
