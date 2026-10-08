# SE_01_MAINT_EXPLANATION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SE_01_MAINT_EXPLANATION

Explanation if does not maintain records or copies

- Description: If answered "no" to any of 4a-4d; explain

- Table:

  [`SE-P01-T00-SCHOOLS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#se-p01-t00-schools)
  (one)

- Part: Part I - Schools

- Location:

  `SCHED-E-PART-01-LINE-04D`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

483

filings with a value

2009–2009

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleE/OrgDoesNotMaintainExplanation: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleE/OrgDoesNotMaintainExplanation` | SZ | 2009–2009 | 483 | 0.99% |  |
| x2 | `IRS990ScheduleE/Form990ScheduleE/OrgDoesNotMaintainExplanation` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 483 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | \<1 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 424     | 112            | 1,000   |
| 990-EZ | 59      | 92             | 283     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `THE ORGANIZATION DOES NOT AWARD SCHOLARSHIPS OR OTHER FINANCIAL ASSISTANCE.` | 17 | 22.7% |
| `THE SCHOOL IS A CHARTER SCHOOL SUPPORTED BY OHIO TAXES AND BY LAW CANNOT CHARGE ANY TUITI…` | 13 | 17.3% |
| `RECORDS ARE NOT NECESSARY BECAUSE NO SCHOLARSHIPS OR FINANCIAL ASSISTANCE ARE PROVIDED.` | 11 | 14.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | AMERICAN YOUTHWORKS | no financial assistance provided | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201131809349300328_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SE_01_MAINT_EXPLANATION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
