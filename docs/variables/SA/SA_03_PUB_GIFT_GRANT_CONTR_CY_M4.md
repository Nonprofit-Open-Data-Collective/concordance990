# SA_03_PUB_GIFT_GRANT_CONTR_CY_M4

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PUB_GIFT_GRANT_CONTR_CY_M4

Gifts, grants, contributions, and membership fees received during the
current tax year minus four years

- Description: Current tax year minus four years

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-A-LINE-01-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.5M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.7x (IRS990ScheduleA/GiftsGrantsContribReceived509/CurrentTaxYearMinus4Years, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GiftsGrantsContribReceived509/CurrentTaxYearMinus4Years` | SZ | 2009–2012 | 165,666 | 23% |  |
| x2 | `IRS990ScheduleA/GiftsGrantsContrisRcvd509Grp/CurrentTaxYearMinus4YearsAmt` | SZ | 2013–2024 | 1,290,585 | 25.9% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/GiftsGrantsContribReceived/CurrentTaxYearMinus4Years` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.9k | 40k | 53k | 63k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 71k | 79k | 86k | 90k | 97k | 103k | 108k | 121k | 136k | 140k | 143k | 118k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 17 | 19 | 20 | 21 | 21 | 21 | 22 | 22 | 22 | 22 | 22 | 22 | 22 | 22 | 23 | 24 |
| 990-EZ | 27 | 26 | 27 | 28 | 28 | 28 | 28 | 28 | 29 | 29 | 29 | 30 | 30 | 30 | 30 | 29 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75     | P99       |
|--------|---------|-----------|--------|------------|--------|---------|---------|-----------|
| 990    | 837,848 | 100.0%    | 2.0%   | 0.0%       | 33,383 | 120,786 | 353,846 | 7,996,481 |
| 990-EZ | 618,399 | 100.0%    | 4.2%   | 0.0%       | 6,921  | 23,591  | 55,118  | 229,945   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CHRISTIAN SHANE FONVILLE YOUTH | 57301 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990EZ | x1 | FARMINGVILLE ELEMENTARY SCHOOL PTA | 4409 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343099349200539_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PUB_GIFT_GRANT_CONTR_CY_M4, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
