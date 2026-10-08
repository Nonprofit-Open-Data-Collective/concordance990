# SR_07_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_07_EXPLANATION_TEXT

Additional explanations

- Description: Form990 Schedule RPart VII - Explanation

- Table:

  [`SR-P07-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p07-t99-supplemental-info)
  (many)

- Part: Part VII - Supplemental Information

- Location:

  `SCHED-R-PART-07`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

63k

filings with a value

2010–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartVII/Explanation: longest value is exactly 9000 characters; IRS990ScheduleR/SupplementalInformationDetail/ExplanationTxt: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartVII/Explanation` | SZ | 2010–2012 | 7,119 | 1.67% | 11.9% |
| x2 | `IRS990ScheduleR/SupplementalInformationDetail/ExplanationTxt` | SZ | 2013–2024 | 55,884 | 1.2% | 14.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.6k | 2.6k | 3.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.5k | 3.9k | 4.2k | 4.5k | 4.7k | 4.9k | 4.9k | 5.4k | 5.4k | 5.5k | 5.5k | 3.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 63,003  | 493            | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `FOR THE PURPOSES OF SCHEDULE R, PART V, THE FOLLOWING APPLIES: RETIREMENT HOUSING FOUNDAT…` | 1,068 | 15.8% |
| `THE RELATIONSHIP WITH PI BETA PHI FRATERNITY HOUSING CORPORATION IS DISCLOSED AT PART II …` | 557 | 8.2% |
| `Part V, Line 2 includes the net current year amount resulting from continuous activity wi…` | 528 | 7.8% |
| `AHEPA AFFORDABLE MANAGEMENT COMPANY, INC IS THE MANAGEMENT COMPANY AND EMPLOYS THE INDIVI…` | 441 | 6.5% |
| `THE FILING ORGANIZATION IS A TAFT-HARTLEY MULTIEMPLOYER TRUST THAT PROVIDES HEALTH AND WE…` | 432 | 6.4% |
| `IOWA HEALTH SYSTEM AND SUBSIDIARIES (D/B/A UNITYPOINT HEALTH) THIS ENTITY IS PART OF IOWA…` | 370 | 5.5% |
| `IOWA HEALTH SYSTEM AND SUBSIDIARIES (D/B/A UNITYPOINT HEALTH) IOWA HEALTH SYSTEM IS AN IO…` | 309 | 4.6% |
| `MERCY HOSPITALS EAST COMMUNITIES MERCY HOSPITALS EAST COMMUNITIES CONSISTS OF MERCY HOSPI…` | 256 | 3.8% |
| `LAWSON ERP SOFTWARE IS THE PRIMARY ACCOUNTING SOFTWARE USED BY MERCY HEALTH SYSTEM, INC. …` | 230 | 3.4% |
| `CONTINUATION OF PRIMARY ACTIVITY: CLEVELAND HEBREW SCHOOLS EDUCATIONAL FOUNDATION: SUPPOR…` | 221 | 3.3% |
| `CONTINUATION OF PRIMARY ACTIVITY: LAURA & ALVIN SIEGAL COLLEGE OF JUDAIC STUDIES EDUCATIO…` | 189 | 2.8% |
| `CONTINUATION OF PRIMARY ACTIVITY: THE HARRY RATNER HUMAN SERVICES FUND: SUPPORT CHARITABL…` | 183 | 2.7% |
| `AHEPA AFFORDABLE MANAGEMENT COMPANY, INC. IS THE MANAGEMENT COMPANY AND EMPLOYS THE INDIV…` | 181 | 2.7% |
| `The relationship with Pi Beta Phi Fraternity Housing Corporation is disclosed at Part II …` | 169 | 2.5% |
| `TRANSACTIONS WITH RELATED ORGANIZATIONS: FOR THE PURPOSES OF SCHEDULE R, PART V, THE FOLL…` | 138 | 2.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | PUGET SOUND BENEFITS TRUST | THE FILING ORGANIZATION IS A TAFT-HARTLEY MULTI-EMPLOYER TRUST THAT PROVIDES HE… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543049349301569_public.xml) |
| 2012 | 990 | x1 | Essentia Health Foundation | Name: The following Essentia Health entities have a doing business as name. Leg… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411199349301066_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_07_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
