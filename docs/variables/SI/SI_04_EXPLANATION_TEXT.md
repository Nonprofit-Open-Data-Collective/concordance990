# SI_04_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_04_EXPLANATION_TEXT

Additional explanations

- Description: Form990 Schedule IPart IV - Explanation

- Table:

  [`SI-P04-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p04-t99-supplemental-info)
  (many)

- Part: Part IV - Supplemental Information

- Location:

  `SCHED-I-PART-04`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

521k

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
| ⓘ info | No sign of truncation | IRS990ScheduleI/Form990ScheduleIPartIV/Explanation: longest value is exactly 9000 characters; IRS990ScheduleI/SupplementalInformationDetail/ExplanationTxt: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/Form990ScheduleIPartIV/Explanation` | SZ | 2009–2012 | 77,558 | 14.9% | 8.1% |
| x2 | `IRS990ScheduleI/SupplementalInformationDetail/ExplanationTxt` | SZ | 2013–2024 | 443,656 | 11.8% | 6.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 7.4k | 19k | 24k | 27k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 29k | 30k | 32k | 33k | 36k | 36k | 38k | 42k | 43k | 45k | 46k | 33k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 22 | 16 | 15 | 15 | 15 | 14 | 14 | 14 | 14 | 13 | 13 | 13 | 13 | 13 | 13 | 12 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 521,214 | 366            | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `GRANTS ARE MONITORED BY THE ORGANIZATION'S FINANCE PERSONNEL THROUGH THE UTILIZATION OF C…` | 765 | 13.7% |
| `SCHEDULE I, PART I, LINE 2: TRUST ACCOUNTING RECORDS ARE MAINTAINED IN A DEDICATED TRUST …` | 549 | 9.8% |
| `All grants are approved by the members on their stated meeting and documented in the minu…` | 314 | 5.6% |
| `DESCRIPTION OF ORGANIZATION'S PROCEDURES FOR MONITORING THE USE OF GRANTS IN THE APPLICAT…` | 310 | 5.5% |
| `ALL GRANTS, SPONSORSHIPS AND DONATIONS ARE MADE TO NON-PROFIT AND CIVIC ORGANIZATIONS THA…` | 232 | 4.1% |
| `GRANTEE ORGANIZATIONS ARE REQUIRED ON AN ANNUAL BASIS TO SUBMIT COPIES OF THEIR FORM 990,…` | 230 | 4.1% |
| `GRANTS ARE AWARDED BASED ON SPECIFIC CRITERIA AND ARE APPROVED BY THE BOARD COMMITTEE THA…` | 218 | 3.9% |
| `MEETINGS AT LEAST ANNUALLY WITH SUPPORTED ORGANIZATION` | 215 | 3.8% |
| `THE ORGANIZATION ENDEAVORS TO MONITOR ITS GRANTS TO ENSURE THAT SUCH GRANTS ARE USED FOR …` | 198 | 3.5% |
| `THE ORGANIZATION DOES NOT MONITOR THE USE OF FUNDS GRANTED TO ORGANIZATIONS IN THE UNITED…` | 180 | 3.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | CCF CONTRIBUTES FINANCIAL AND IN-KIND SUPPORT TO OTHER TAX EXEMPT ORGANIZATIONS… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | MINNEAPOLIS COLLEGE OF ART & DESIGN | SCHEDULE I, PART I, LINE 2: ALL FEDERAL AID IS AWARDED BASED ON FINANCIAL AID E… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_04_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
