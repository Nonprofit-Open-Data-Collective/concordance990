# SA_03_PUB_TOT_L1_5_CY_M1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PUB_TOT_L1_5_CY_M1

Total public support during the current tax year minus one year

- Description: Current tax year minus one year

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-A-LINE-06-COL-D`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.9M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.0x (IRS990ScheduleA/Total509/CurrentTaxYearMinus1Year, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/Total509/CurrentTaxYearMinus1Year` | SZ | 2009–2012 | 220,343 | 29.9% |  |
| x2 | `IRS990ScheduleA/Total509Grp/CurrentTaxYearMinus1YearAmt` | SZ | 2013–2024 | 1,638,883 | 33.1% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/Total/CurrentTaxYearMinus1Year` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13k | 54k | 71k | 82k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 91k | 102k | 110k | 115k | 124k | 132k | 137k | 152k | 169k | 176k | 180k | 151k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 22 | 25 | 26 | 26 | 27 | 27 | 27 | 27 | 27 | 27 | 27 | 27 | 27 | 28 | 28 | 29 |
| 990-EZ | 35 | 36 | 37 | 37 | 37 | 37 | 38 | 38 | 38 | 39 | 39 | 39 | 38 | 38 | 39 | 40 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 1,043,882 | 100.0% | 0.5% | 0.0% | 157,284 | 369,760 | 1,121,775 | 54,587,606 |
| 990-EZ | 815,335 | 100.0% | 2.7% | 0.0% | 29,640 | 59,899 | 98,367 | 229,720 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | SAINT CLAIR HOUSE INC | 109280 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2012 | 990EZ | x1 | QUAD CITY HEAT BASEBALL CLUB | 101986 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323469349200217_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PUB_TOT_L1_5_CY_M1, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
