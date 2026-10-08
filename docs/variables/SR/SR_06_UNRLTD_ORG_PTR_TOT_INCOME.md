# SR_06_UNRLTD_ORG_PTR_TOT_INCOME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_06_UNRLTD_ORG_PTR_TOT_INCOME

Share of total income

- Description: Form990 Schedule RPart VI - ShareOfTotalIncome

- Table:

  [`SR-P06-T01-UNRLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p06-t01-unrltd-orgs-taxable-partnership)
  (many)

- Part: Part VI - Unrelated Organizations Taxable as a Partnership

- Location:

  `SCHED-R-PART-06-COL-F`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

1.8k

filings with a value

2011–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.8x |
| ⓘ info | Sign convention | 24.9% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartVI/ShareOfTotalIncome` | SZ | 2011–2012 | 188 | 0.0618% | 23.4% |
| x2 | `IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/ShareOfTotalIncomeAmt` | SZ | 2013–2024 | 1,642 | 0.027% | 23.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  | 77 | 111 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 125 | 131 | 126 | 132 | 142 | 149 | 161 | 173 | 159 | 143 | 126 | 75 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75     | P99        |
|--------|---------|-----------|--------|------------|-----|--------|---------|------------|
| 990    | 1,830   | 100.0%    | 9.8%   | 24.9%      | -1  | 15,551 | 278,570 | 11,228,156 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NATIONAL INVESTMENT CENTER FOR SENIORS | -29869 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533179349303708_public.xml) |
| 2012 | 990 | x1 | MERCY MEDICAL CENTER INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411289349302296_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_06_UNRLTD_ORG_PTR_TOT_INCOME, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
