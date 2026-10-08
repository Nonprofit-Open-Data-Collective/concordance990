# SE_01_MAINT_SCHOLARSHIP_RECORD_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SE_01_MAINT_SCHOLARSHIP_RECORD_X

Maintains records documenting that scholarships and other financial
assistance are awarded on a racially nondiscriminatory basis \[x\]

- Description: Does the organization maintain scholarships records?

- Table:

  [`SE-P01-T00-SCHOOLS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#se-p01-t00-schools)
  (one)

- Part: Part I - Schools

- Location:

  `SCHED-E-PART-01-LINE-04B`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

222k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 11% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleE/MaintScholarshipsRecords` | SZ | 2009–2012 | 33,045 | 4.07% |  |
| x2 | `IRS990ScheduleE/MaintainScholarshipsRecsInd` | SZ | 2013–2024 | 188,772 | 2.53% |  |
| x3 | `IRS990ScheduleE/Form990ScheduleE/MaintScholarshipsRecords` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.3k | 7.7k | 9.9k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 12k | 13k | 14k | 14k | 16k | 16k | 16k | 18k | 19k | 19k | 19k | 12k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 12 | 6 | 6 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 3 |
| 990-EZ | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `true`  | 115,455 | 52.0% |
| `1`     | 82,224  | 37.1% |
| `0`     | 12,723  | 5.7%  |
| `false` | 11,415  | 5.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HAWAII PREPARATORY ACADEMY | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510989349300406_public.xml) |
| 2012 | 990 | x1 | AMIGOS POR VIDA - FRIENDS FOR LIFE | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201440519349300909_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SE_01_MAINT_SCHOLARSHIP_RECORD_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
