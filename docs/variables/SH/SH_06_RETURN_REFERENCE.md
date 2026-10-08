# SH_06_RETURN_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_06_RETURN_REFERENCE

Return reference

- Description: Return reference

- Table:

  [`SH-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-H-PART-06`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

32k

filings with a value

2010–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleH/SupplementalInformationDetail/FormAndLineReferenceDesc: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVI/ReturnReference` | SZ | 2010–2012 | 5,136 | 1.01% | 61.2% |
| x2 | `IRS990ScheduleH/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 26,857 | 0.353% | 97.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.6k | 1.7k | 1.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.4k | 2.4k | 2.4k | 2.3k | 2.4k | 2.3k | 2.3k | 2.3k | 2.3k | 2.3k | 2.3k | 978 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 31,993  | 32             | 100     |

### Most common values

| Value                                                       | Filings | Share |
|-------------------------------------------------------------|---------|-------|
| `PART VI, LINE 4:`                                          | 10,247  | 10.0% |
| `PART III, LINE 4:`                                         | 10,051  | 9.9%  |
| `PART VI, LINE 3:`                                          | 9,699   | 9.5%  |
| `PART III, LINE 9B:`                                        | 9,522   | 9.3%  |
| `PART VI, LINE 2:`                                          | 9,496   | 9.3%  |
| `PART III, LINE 8:`                                         | 9,358   | 9.2%  |
| `PART VI, LINE 5:`                                          | 9,195   | 9.0%  |
| `PART I, LINE 7:`                                           | 8,389   | 8.2%  |
| `PART VI, LINE 6:`                                          | 6,947   | 6.8%  |
| `PART III, LINE 2:`                                         | 6,205   | 6.1%  |
| `PART VI, LINE 7`                                           | 1,428   | 1.4%  |
| `Part VI, Line 4:`                                          | 1,197   | 1.2%  |
| `Part VI, Line 3:`                                          | 1,192   | 1.2%  |
| `PART II, COMMUNITY BUILDING ACTIVITIES:`                   | 1,116   | 1.1%  |
| `Part VI, Line 2:`                                          | 648     | 0.6%  |
| `Part III, Line 4:`                                         | 640     | 0.6%  |
| `Part III, Line 9b:`                                        | 632     | 0.6%  |
| `Part VI, Line 5:`                                          | 628     | 0.6%  |
| `Part III, Line 8:`                                         | 622     | 0.6%  |
| `Schedule H, Part VI, Line 3`                               | 560     | 0.5%  |
| `Part I, Line 7:`                                           | 559     | 0.5%  |
| `Schedule H, Part I, Line 7`                                | 530     | 0.5%  |
| `Part VI, Line 7`                                           | 524     | 0.5%  |
| `Schedule H, Part VI, Line 4`                               | 486     | 0.5%  |
| `Schedule H, Part VI, Line 2`                               | 479     | 0.5%  |
| `PART VI`                                                   | 418     | 0.4%  |
| `Schedule H, Part VI, Line 6`                               | 298     | 0.3%  |
| `Schedule H, Part VI, Line 5`                               | 281     | 0.3%  |
| `PART III LINE 4`                                           | 246     | 0.2%  |
| `990 SCHEDULE H, PART VI`                                   | 140     | 0.1%  |
| `Part VI - Needs Assessment`                                | 126     | 0.1%  |
| `Part VI - Patient Education of Eligibility for Assistance` | 126     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | PART I, LINE 3C: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | MARIMED FOUNDATION FOR ISLAND HEALTH CA… | Schedule H, Part I, Line 7 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420309349300687_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_06_RETURN_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
