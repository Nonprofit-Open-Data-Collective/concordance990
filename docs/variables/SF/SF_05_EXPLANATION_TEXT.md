# SF_05_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_05_EXPLANATION_TEXT

Additional explanations

- Description: Form990 Schedule FPart IV - Explanation

- Table:

  [`SF-P05-T99-EXPLANATION-TEXT`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p05-t99-explanation-text)
  (many)

- Part: Part V - Supplemental Information

- Location:

  `SCHED-F-PART-05`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

113k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleF/Form990ScheduleFPartIV/Explanation: longest value is exactly 9000 characters; IRS990ScheduleF/Form990ScheduleFPartV/Explanation: longest value is exactly 9000 characters; IRS990ScheduleF/SupplementalInformationDetail/ExplanationTxt: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/Form990ScheduleFPartIV/Explanation` | SZ | 2009–2009 | 963 | 2.89% | 17.8% |
| x2 | `IRS990ScheduleF/Form990ScheduleFPartV/Explanation` | SZ | 2010–2012 | 11,820 | 2.64% | 24.9% |
| x3 | `IRS990ScheduleF/SupplementalInformationDetail/ExplanationTxt` | SZ | 2013–2024 | 100,364 | 3.09% | 32.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 963 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 2.9k | 4.1k | 4.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 5.4k | 6.2k | 6.8k | 7.4k | 8.0k | 8.3k | 8.6k | 9.3k | 10.0k | 11k | 11k | 8.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 2 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 113,147 | 318            | 9,000   |

### Most common values

| Value            | Filings | Share |
|------------------|---------|-------|
| `ACCRUAL`        | 636     | 12.6% |
| `ACCRUAL METHOD` | 587     | 11.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | Angel Christian Television Trust Inc | The use of grant funds are monitored through regular contact and meetings with … | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630279349300528_public.xml) |
| 2012 | 990 | x2 | MINNEAPOLIS COLLEGE OF ART & DESIGN | SCHEDULE F, PART I, LINE 2: THE COLLEGE MAINTAINS RECORDS OF FUNDS GRANTED. THE… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |
| 2009 | 990 | x1 | University Corporation san francisco st… | Schedule F, Part I, Line 2: The organization receives reports from grant recipi… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201121369349307082_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_05_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
