# SJ_03_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SJ_03_EXPLANATION_TEXT

Additional explanations

- Description: Form990 Schedule JPart III - Explanation

- Table:

  [`SJ-P03-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sj-p03-t99-supplemental-info)
  (many)

- Part: Part III - Supplemental Information

- Location:

  `SCHED-J-PART-03`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

345k

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
| ⓘ info | No sign of truncation | IRS990ScheduleJ/Form990ScheduleJPartIII/Explanation: longest value is exactly 9000 characters; IRS990ScheduleJ/SupplementalInformationDetail/ExplanationTxt: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleJ/Form990ScheduleJPartIII/Explanation` | SZ | 2009–2012 | 52,718 | 9.63% | 40.5% |
| x2 | `IRS990ScheduleJ/SupplementalInformationDetail/ExplanationTxt` | SZ | 2013–2024 | 292,489 | 6.95% | 38.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.5k | 13k | 16k | 17k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 19k | 20k | 21k | 22k | 24k | 25k | 26k | 28k | 29k | 30k | 31k | 19k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 19 | 11 | 10 | 10 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 345,207 | 483            | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `THE COMPENSATION LISTED ON SCHEDULE J AND ELSEWHERE IN THIS RETURN IS FOR SERVICES PROVID…` | 1,675 | 10.5% |
| `NATIONAL CHURCH RESIDENCES, A RELATED ORGANIZATION, ESTABLISHES THE TOP MANAGEMENT OFFICI…` | 1,407 | 8.8% |
| `DURING THE CURRENT YEAR, NATIONAL CHURCH RESIDENCES, A RELATED ORGANIZATION, MADE CONTRIB…` | 1,233 | 7.7% |
| `Eligible executives participate in a program that provides for supplemental retirement be…` | 1,145 | 7.2% |
| `ELIGIBLE EXECUTIVES PARTICIPATE IN A PROGRAM THAT PROVIDES FOR SUPPLEMENTAL RETIREMENT BE…` | 983 | 6.2% |
| `A RELATED ORGANIZATION OF THE FILING ORGANIZATION, USES ONE OR MORE OF THE FOLLOWING TO E…` | 728 | 4.6% |
| `NATIONAL CHURCH RESIDENCES, A RELATED ORGANIZATION, WAS RELIED UPON TO ESTABLISH THE TOP …` | 663 | 4.2% |
| `ANNUALLY THE EXECUTIVE COMMITTEE WITHIN THE MERCY HOUSING, INC. BOARD OF TRUSTEES WILL RE…` | 601 | 3.8% |
| `THE FOLLOWING INDIVIDUAL(S) RECEIVED SEVERANCE PAYMENTS FROM THE ORGANIZATION OR A RELATE…` | 396 | 2.5% |
| `CERTAIN REPORTABLE INDIVIDUALS ARE COVERED BY AN EXECUTIVE SEVERANCE POLICY THAT PROVIDES…` | 365 | 2.3% |
| `POST-TERMINATION PAYMENTS ARE ADDRESSED IN EXECUTIVE EMPLOYMENT AGREEMENTS FOR CATHOLIC H…` | 362 | 2.3% |
| `A RELATED ORGANIZATION OF THE FILING ORGANIZATION USES ONE OR MORE OF THE FOLLOWING TO ES…` | 342 | 2.1% |
| `MICHELLE NORRIS IS THE SENIOR VICE PRESIDENT CHIEF DEVELOPMENT OFFICER FOR NATIONAL CHURC…` | 323 | 2.0% |
| `Compensation for the top management official was established and paid by Catholic Health …` | 284 | 1.8% |
| `COMPENSATION FOR THE TOP MANAGEMENT OFFICIAL WAS ESTABLISHED AND PAID BY CATHOLIC HEALTH …` | 251 | 1.6% |
| `The following individual(s) received severance payments from the organization or a relate…` | 206 | 1.3% |
| `FOR REPORTABLE INDIVIDUALS EMPLOYED PRIOR TO 2019, POST-TERMINATION PAYMENTS ARE ADDRESSE…` | 205 | 1.3% |
| `NON-FIXED PAYMENTS THE PROVIDENCE EXECUTIVE COMPENSATION COMMITTEE (OF THE BOARD) HAS APP…` | 189 | 1.2% |
| `Post-termination payments are addressed in executive employment agreements for Catholic H…` | 186 | 1.2% |
| `INCLUDED IN THIS AMOUNT IS THE INCREASE IN ACTUARIAL VALUE OF BENEFITS PAYABLE UNDER A DE…` | 178 | 1.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HAWAII PREPARATORY ACADEMY | THE HEAD OF SCHOOL RESIDES ON CAMPUS AS A CONDITION OF EMPLOYMENT. | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510989349300406_public.xml) |
| 2012 | 990 | x1 | JOHNS HOPKINS PHARMAQUIP INC | THE MAKE WHOLE PLAN IS A FROZEN, NON-TAX QUALIFIED DEFINED BENEFIT PLAN. PARTIC… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441299349301834_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SJ_03_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
