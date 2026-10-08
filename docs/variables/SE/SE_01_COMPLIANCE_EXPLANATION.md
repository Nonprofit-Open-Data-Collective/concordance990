# SE_01_COMPLIANCE_EXPLANATION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SE_01_COMPLIANCE_EXPLANATION

Explanation if did not comply with requirements covering racial
nondiscrimination

- Description: If answered "no" to 7; explain

- Table:

  [`SE-P01-T00-SCHOOLS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#se-p01-t00-schools)
  (one)

- Part: Part I - Schools

- Location:

  `SCHED-E-PART-01-LINE-07`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

67

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
| ⓘ info | No sign of truncation | IRS990ScheduleE/ComplianceProc75_50Explanation: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleE/ComplianceProc75_50Explanation` | SZ | 2009–2009 | 67 | 0.137% |  |
| x2 | `IRS990ScheduleE/Form990ScheduleE/ComplianceProc75_50Explanation` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 67 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | \<1 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 63      | 295            | 1,000   |
| 990-EZ | 4       | 368            | 1,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `SINCE WE RECEIVE MORE THAN 50% OF OUR SUPPORT FROM GOVERNMENT SOURCES, WE ARE A """"PUBLI…` | 4 | 19.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | The Lexington School for the Deaf | THE SCHOOL IS NOT IN COMPLIANCE WITH SECTION 4.03 OF REV. PROC. 75-50, 1975-2 C… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201131319349300903_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SE_01_COMPLIANCE_EXPLANATION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
