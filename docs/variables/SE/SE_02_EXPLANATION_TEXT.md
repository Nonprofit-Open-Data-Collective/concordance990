# SE_02_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SE_02_EXPLANATION_TEXT

Additional explanations

- Description: Form990 Schedule EPart II - Explanation

- Table:

  [`SE-P02-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#se-p02-t99-supplemental-info)
  (many)

- Part: Part II - Supplemental Information

- Location:

  `SCHED-E-PART-02`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

175k

filings with a value

2010–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleE/Form990ScheduleEPartII/Explanation` | SZ | 2010–2012 | 23,281 | 3.46% | 46.8% |
| x2 | `IRS990ScheduleE/SupplementalInformationDetail/ExplanationTxt` | SZ | 2013–2024 | 151,388 | 1.86% | 48.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 6.1k | 7.7k | 9.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 10k | 11k | 12k | 12k | 13k | 12k | 13k | 14k | 15k | 15k | 15k | 8.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 5 | 4 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 3 |
| 990-EZ |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 159,863 | 175            | 5,496   |
| 990-EZ | 14,806  | 145            | 7,830   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `N/A` | 686 | 12.8% |
| `RECEIVES GRANTS THROUGH THE FLORIDA DEPT OF EDUCATION` | 504 | 9.4% |
| `THE SCHOOL RECEIVES FEDERAL AND STATE FUNDING.` | 343 | 6.4% |
| `THE SCHOOL IS A PUBLIC CHARTER SCHOOL AND THEREFORE IS NOT SUBJECT TO THE FORMAL COMPLIAN…` | 329 | 6.1% |
| `AS A PUBLIC CHARTER SCHOOL, THE SCHOOL DOES NOT PROVIDE SCHOLARSHIPS OR FINANCIAL AID.` | 321 | 6.0% |
| `As a state chartered public school policy communications are the same as required for tra…` | 276 | 5.2% |
| `REVENUES ARE RECEIVED FROM THE FLORIDA DEPARTMENT OF EDUCATION UNDER THE FLORIDA EDUCATIO…` | 274 | 5.1% |
| `The school is a state chartered public school and receives substantially all of its suppo…` | 270 | 5.0% |
| `AS A PUBLIC SCHOOL, SUBJECT TO OPEN ENROLLMENT, THE CHARTER SCHOOL IS NOT SUBJECT TO THE …` | 268 | 5.0% |
| `THE SCHOOL RECEIVES MONTHLY AID PAYMENTS FROM THE STATE OF ARIZONA BASED ON THE NUMBER OF…` | 216 | 4.0% |
| `SEE PART II` | 188 | 3.5% |
| `SUMMIT ACADEMY'S NONDISCRIMINATION POLICY APPEARS ON ALL WRITTEN MARKETING AND PROMOTIONA…` | 142 | 2.7% |
| `The organization publicized its racially nondiscriminatory policy on the homepage of its …` | 137 | 2.6% |
| `ALL RECRUITMENT BOOKLETS AND TOOLS PRODUCED STATE THAT THE ALLIANCE SCHOOLS ARE TUITION-F…` | 126 | 2.4% |
| `THE ORGANIZATION DOES NOT PROVIDE SCHOLARSHIPS OR FINANCIAL ASSISTANCE.` | 124 | 2.3% |
| `AS A PUBLIC CHARTER SCHOOL, THE ORGANIZATION RECEIVES GOVERNMENTAL FUNDING FROM THE U.S. …` | 124 | 2.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | PENNSYLVANIA INSTITUTE OF TECHNOLOGY | ADVERTISEMENTS AND ADMISSION PUBLICATIONS STATE THAT THE COLLEGE HAS A RACIALLY… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202641119349301809_public.xml) |
| 2012 | 990 | x1 | MT PLEASANT CHRISTIAN SCHOOL INC | THE SCHOOL PRINTS THEIR NON-DISCRIMINATION POLICY ON THE SCHOLARSHIP FORMS, FIN… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431359349307313_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SE_02_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
