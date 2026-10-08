# SE_01_GOVT_FIN_AID_EXPLANATION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SE_01_GOVT_FIN_AID_EXPLANATION

Explanation if receives financial aid or assistance from a governmental
agency or that right has ever been revoked or suspended

- Description: If answered "yes" to any of 6a-6b; explain

- Table:

  [`SE-P01-T00-SCHOOLS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#se-p01-t00-schools)
  (one)

- Part: Part I - Schools

- Location:

  `SCHED-E-PART-01-LINE-06B`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

2.0k

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
| ⓘ info | No sign of truncation | IRS990ScheduleE/GovtFinancialAidExplanation: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleE/GovtFinancialAidExplanation` | SZ | 2009–2009 | 1,966 | 4.03% |  |
| x2 | `IRS990ScheduleE/Form990ScheduleE/GovtFinancialAidExplanation` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.0k |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 6 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | \<1 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,930   | 201            | 1,000   |
| 990-EZ | 36      | 147            | 684     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `THE SCHOOL RECEIVES PER PUPIL FUNDING FROM THE NYC BOARD OF EDUCATION UNDER THEIR CHARTER…` | 18 | 18.6% |
| `THE ORGANIZATION RECEIVES BASIC AID FROM THE STATE OF OHIO, AS WELL AS ADDITIONAL ASSISTA…` | 17 | 17.5% |
| `THE SCHOOL RECEIVES US DEPARTMENT OF EDUCATION TITLE FUNDING THOUGH THE OHIO DEPARTMENT O…` | 14 | 14.4% |
| `THE ORGANIZATION RECEIVES BASIC AID FROM THE STATE OF OHIO AS WELL AS ADDITIONAL ASSISTAN…` | 9 | 9.3% |
| `THE SCHOOL RECEIVES VARIOUS GRANTS FROM THE U.S. DEPARTMENT OF EDUCATION, PASSED THROUGH …` | 8 | 8.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | GOLDEN EAGLE CHARTER SCHOOL | THE ORGANIZATION IS OPERATED AS A CALIFORNIA PUBLIC CHARTER SCHOOL AND RECEIVES… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201110399349301311_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SE_01_GOVT_FIN_AID_EXPLANATION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
