# SC_02_EXP_OTH_EXEMPT_AFFGROUP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_EXP_OTH_EXEMPT_AFFGROUP

Other exempt purpose expenditures - affiliated group totals

- Description: Other exempt purpose expenditures - Affiliated Group
  Totals

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-A-LINE-01D-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

5.1k

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
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 11.6x (990: IRS990ScheduleC/OtherExemptPurposeExpenditures/AffiliatedGroupTotals vs IRS990ScheduleC/OtherExemptPurposeExpendGrp/AffiliatedGroupTotalAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `GAP` | ▲ warn | (variable) | no 990EZ filings in 2013-2014, but filings before and after | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/OtherExemptPurposeExpenditures/AffiliatedGroupTotals` | SZ | 2009–2012 | 895 | 0.0914% |  |
| x2 | `IRS990ScheduleC/OtherExemptPurposeExpendGrp/AffiliatedGroupTotalAmt` | SZ | 2013–2024 | 4,180 | 0.0831% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartII/OtherExemptPurposeExpenditures/AffiliatedGroupTotals` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 150 | 236 | 259 | 250 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 262 | 281 | 297 | 323 | 327 | 309 | 314 | 371 | 365 | 451 | 501 | 379 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 4,690 | 100.0% | 17.4% | 0.0% | 4,358,095 | 52,387,040 | 461,226,649 | 3,100,843,979 |
| 990-EZ | 385 | 100.0% | 85.2% | 0.0% | 61,564 | 67,356 | 161,792 | 1,731,084 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | SOCIETY OF INDUSTRIAL AND OFFICE | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513039349300746_public.xml) |
| 2012 | 990 | x1 | MISSION ROAD MINISTRIES | 15666406 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430469349300303_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_EXP_OTH_EXEMPT_AFFGROUP, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
