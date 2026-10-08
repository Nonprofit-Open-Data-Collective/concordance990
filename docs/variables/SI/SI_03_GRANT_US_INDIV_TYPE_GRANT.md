# SI_03_GRANT_US_INDIV_TYPE_GRANT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_03_GRANT_US_INDIV_TYPE_GRANT

Type of grant or assistance

- Description: Type of grant or assistance

- Table:

  [`SI-P03-T01-GRANTS-US-INDIV`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p03-t01-grants-us-indiv)
  (many)

- Part: Part III - Grants and Other Assistance to Domestic Individuals

- Location:

  `SCHED-I-PART-03-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

396k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleI/GrantsOtherAsstToIndivInUSGrp/GrantTypeTxt: longest value is exactly 1000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/Form990ScheduleIPartIII/TypeOfGrant` | SZ | 2009–2012 | 53,431 | 10.4% | 34.0% |
| x2 | `IRS990ScheduleI/GrantsOtherAsstToIndivInUSGrp/GrantTypeTxt` | SZ | 2013–2024 | 342,276 | 9.8% | 32.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.4k | 13k | 17k | 19k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 20k | 22k | 24k | 25k | 28k | 28k | 29k | 32k | 34k | 36k | 37k | 27k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 16 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 11 | 10 | 10 | 10 | 10 | 10 | 10 | 10 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 395,707 | 29             | 1,000   |

### Most common values

| Value                      | Filings | Share |
|----------------------------|---------|-------|
| `SCHOLARSHIPS`             | 62,484  | 56.4% |
| `Scholarships`             | 13,675  | 12.3% |
| `SCHOLARSHIP`              | 8,790   | 7.9%  |
| `FINANCIAL AID`            | 6,293   | 5.7%  |
| `COLLEGE SCHOLARSHIPS`     | 4,727   | 4.3%  |
| `TUITION ASSISTANCE`       | 3,699   | 3.3%  |
| `EDUCATIONAL SCHOLARSHIPS` | 2,830   | 2.6%  |
| `FOOD`                     | 2,829   | 2.6%  |
| `FINANCIAL ASSISTANCE`     | 2,559   | 2.3%  |
| `STUDENT SCHOLARSHIPS`     | 1,801   | 1.6%  |
| `TRANSPORTATION`           | 444     | 0.4%  |
| `Scholarship`              | 363     | 0.3%  |
| `STIPENDS`                 | 220     | 0.2%  |
| `Financial Aid`            | 69      | 0.1%  |
| `scholarships`             | 52      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | Training Scholarships | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | MINNEAPOLIS COLLEGE OF ART & DESIGN | SCHOLARSHIPS AND GRANTS PROVIDED AS FINANCIAL AID TO STUDENTS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_03_GRANT_US_INDIV_TYPE_GRANT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
