# SF_01_FRGN_REG_ACT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_01_FRGN_REG_ACT

Activities conducted in the region

- Description: Activities conducted in the region outside the US (by
  type) (i.e.; fundraising; program services; grants to recipients
  located in the region)

- Table:

  [`SF-P01-T01-FRGN-ACTS-BY-REGION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p01-t01-frgn-acts-by-region)
  (many)

- Part: Part I - General Information on Activities Outside the United
  States

- Location:

  `SCHED-F-PART-01-LINE-03-COL-D`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

155k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleF/AccountActivitiesOutsideUSGrp/TypeOfActivitiesConductedTxt: longest value is exactly 100 characters; IRS990ScheduleF/AcctsActvsOutUSTable/TypeOfActivitiesConducted: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/AcctsActvsOutUSTable/TypeOfActivitiesConducted` | SZ | 2009–2012 | 19,093 | 3.83% | 54.3% |
| x2 | `IRS990ScheduleF/AccountActivitiesOutsideUSGrp/TypeOfActivitiesConductedTxt` | SZ | 2013–2024 | 136,078 | 4.13% | 51.7% |
| x3 | `IRS990ScheduleF/Form990ScheduleFPartI/AcctsActvsOutUSTable/TypeOfActivitiesConducted` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 4.6k | 6.0k | 6.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 7.7k | 8.7k | 9.5k | 10k | 11k | 11k | 12k | 12k | 13k | 14k | 15k | 11k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 155,171 | 18             | 100     |

### Most common values

| Value                                    | Filings | Share |
|------------------------------------------|---------|-------|
| `PROGRAM SERVICES`                       | 43,974  | 35.1% |
| `Program Services`                       | 25,447  | 20.3% |
| `Investments`                            | 10,997  | 8.8%  |
| `INVESTMENTS`                            | 10,647  | 8.5%  |
| `Grantmaking`                            | 9,170   | 7.3%  |
| `Program services`                       | 6,784   | 5.4%  |
| `GRANTMAKING`                            | 6,238   | 5.0%  |
| `PROGRAM SERVICE`                        | 4,954   | 4.0%  |
| `GRANTS TO RECIPIENTS LOCATED IN REGION` | 2,662   | 2.1%  |
| `GRANTS`                                 | 2,393   | 1.9%  |
| `GRANTS TO RECIPIENTS`                   | 1,492   | 1.2%  |
| `Fundraising`                            | 397     | 0.3%  |
| `program services`                       | 46      | 0.0%  |
| `Program Service`                        | 29      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | PROGRAM SERVICES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | MINNEAPOLIS COLLEGE OF ART & DESIGN | PROGRAM SERVICES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_01_FRGN_REG_ACT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
