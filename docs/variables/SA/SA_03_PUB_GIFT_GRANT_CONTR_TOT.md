# SA_03_PUB_GIFT_GRANT_CONTR_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PUB_GIFT_GRANT_CONTR_TOT

Gifts, grants, contributions, and membership fees received during the
current tax year and the four years prior

- Description: Gifts Grants Contrib Received - Total

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-A-LINE-01-COL-F`

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.7x (IRS990ScheduleA/GiftsGrantsContribReceived509/Total, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GiftsGrantsContribReceived509/Total` | SZ | 2009–2012 | 216,382 | 29.5% |  |
| x2 | `IRS990ScheduleA/GiftsGrantsContrisRcvd509Grp/TotalAmt` | SZ | 2013–2024 | 1,677,379 | 34.6% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/GiftsGrantsContribReceived/Total` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 12k | 53k | 70k | 81k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 91k | 102k | 110k | 116k | 125k | 134k | 139k | 156k | 176k | 184k | 188k | 158k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 20 | 24 | 24 | 25 | 25 | 26 | 26 | 26 | 26 | 26 | 26 | 26 | 27 | 27 | 28 | 29 |
| 990-EZ | 35 | 38 | 38 | 38 | 39 | 39 | 40 | 40 | 41 | 42 | 42 | 42 | 42 | 43 | 43 | 44 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 1,013,379 | 100.0% | 2.2% | 0.0% | 164,000 | 599,846 | 1,745,351 | 39,339,117 |
| 990-EZ | 880,365 | 100.0% | 2.4% | 0.0% | 28,553 | 100,273 | 240,473 | 822,107 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CHRISTIAN SHANE FONVILLE YOUTH | 1003383 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | 188363 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PUB_GIFT_GRANT_CONTR_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
