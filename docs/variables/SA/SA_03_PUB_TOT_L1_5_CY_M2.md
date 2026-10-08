# SA_03_PUB_TOT_L1_5_CY_M2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PUB_TOT_L1_5_CY_M2

Total public support during the current tax year minus two years

- Description: Current tax year minus two years

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-A-LINE-06-COL-C`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.8M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.9x (IRS990ScheduleA/Total509/CurrentTaxYearMinus2Years, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/Total509/CurrentTaxYearMinus2Years` | SZ | 2009–2012 | 212,288 | 28.9% |  |
| x2 | `IRS990ScheduleA/Total509Grp/CurrentTaxYearMinus2YearsAmt` | SZ | 2013–2024 | 1,576,348 | 31.7% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/Total/CurrentTaxYearMinus2Years` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13k | 52k | 69k | 79k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 88k | 98k | 106k | 111k | 120k | 127k | 131k | 147k | 164k | 168k | 173k | 144k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 22 | 25 | 25 | 26 | 26 | 26 | 26 | 26 | 27 | 27 | 27 | 26 | 27 | 27 | 27 | 28 |
| 990-EZ | 34 | 34 | 35 | 35 | 35 | 35 | 35 | 35 | 36 | 36 | 37 | 37 | 37 | 36 | 37 | 37 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 1,019,146 | 100.0% | 0.8% | 0.0% | 150,143 | 349,453 | 1,063,637 | 52,210,563 |
| 990-EZ | 769,484 | 100.0% | 4.0% | 0.0% | 29,533 | 58,619 | 96,693 | 269,040 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | SAINT CLAIR HOUSE INC | 102286 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2012 | 990EZ | x1 | PTA TEXAS CONGRESS 1446 MCCOY ELEMENTAR… | 47490 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349204213_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PUB_TOT_L1_5_CY_M2, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
