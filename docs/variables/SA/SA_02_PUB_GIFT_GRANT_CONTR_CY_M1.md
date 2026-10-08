# SA_02_PUB_GIFT_GRANT_CONTR_CY_M1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_PUB_GIFT_GRANT_CONTR_CY_M1

Gifts, grants, contributions, and membership fees received during the
current tax year minus one year

- Description: Current tax year minus one year

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02-SECTION-A-LINE-01-COL-D`

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.4x (IRS990ScheduleA/GiftsGrantsContribReceived170/CurrentTaxYearMinus1Year, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GiftsGrantsContribReceived170/CurrentTaxYearMinus1Year` | SZ | 2009–2012 | 226,505 | 30.3% |  |
| x2 | `IRS990ScheduleA/GiftsGrantsContriRcvd170Grp/CurrentTaxYearMinus1YearAmt` | SZ | 2013–2024 | 1,574,628 | 29.7% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartII/GiftsGrantsContribReceived/CurrentTaxYearMinus1Year` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 15k | 55k | 73k | 83k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 91k | 101k | 108k | 114k | 122k | 127k | 133k | 148k | 161k | 166k | 169k | 136k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 34 | 32 | 33 | 33 | 33 | 34 | 34 | 34 | 34 | 34 | 34 | 34 | 34 | 34 | 34 | 34 |
| 990-EZ | 24 | 25 | 25 | 25 | 24 | 24 | 24 | 24 | 23 | 23 | 23 | 23 | 23 | 23 | 23 | 23 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 1,299,283 | 100.0% | 0.4% | 0.0% | 147,667 | 453,320 | 1,374,161 | 44,817,748 |
| 990-EZ | 501,833 | 100.0% | 2.1% | 0.0% | 16,105 | 46,463 | 86,498 | 271,752 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | 39175 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x1 | THE MASONIC LIBRARY AND MUSEUM OF INDIA… | 12167 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332279349200753_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_PUB_GIFT_GRANT_CONTR_CY_M1, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
