# SC_02_EXP_TOT_EXEMPT_AFFGROUP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_EXP_TOT_EXEMPT_AFFGROUP

Total exempt purpose expenditures - affiliated group totals

- Description: Total exempt purpose expenditures - Affiliated group
  totals

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-A-LINE-01E-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

5.3k

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
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 10.3x (990: IRS990ScheduleC/TotalExemptPurposeExpenditures/AffiliatedGroupTotals vs IRS990ScheduleC/TotalExemptPurposeExpendGrp/AffiliatedGroupTotalAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/TotalExemptPurposeExpenditures/AffiliatedGroupTotals` | SZ | 2009–2012 | 957 | 0.0991% |  |
| x2 | `IRS990ScheduleC/TotalExemptPurposeExpendGrp/AffiliatedGroupTotalAmt` | SZ | 2013–2024 | 4,339 | 0.0862% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartII/TotalExemptPurposeExpenditures/AffiliatedGroupTotals` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 156 | 245 | 285 | 271 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 288 | 291 | 315 | 350 | 355 | 321 | 309 | 374 | 370 | 456 | 517 | 393 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 4,887 | 100.0% | 19.8% | 0.0% | 1,815,557 | 47,425,958 | 397,624,976 | 3,032,285,671 |
| 990-EZ | 409 | 100.0% | 85.6% | 0.0% | 28,442 | 38,422 | 53,459 | 677,775 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | LEGACY VISITING NURSE ASSOCIATION | 3167295063 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600489349301020_public.xml) |
| 2012 | 990 | x1 | ATLANTICARE HEALTH SYSTEM INC | 757471000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343189349301139_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_EXP_TOT_EXEMPT_AFFGROUP, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
