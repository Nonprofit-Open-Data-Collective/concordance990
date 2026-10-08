# SH_06_EXPLANATION_PATIENT_EDU

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_06_EXPLANATION_PATIENT_EDU

Additional explanation for the patient education of eligibility for
assistance

- Description: Patient education reference assistance (see
  SH-FORM-VERSION-2009-PART-06)

- Table:

  [`SH-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-H-PART-06-LINE-03`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

1.4k

filings with a value

2009–2009

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
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVI/PatientEducationAssistance` | SZ | 2009–2009 | 1,374 | 4.12% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,374   | 1039           | 8,014   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `Describe how the organization informs and educates patients and persons who may be billed…` | 44 | 37.3% |
| `Part VI, Line 3: PATIENTS ARE INFORMED OF THEIR ELIGIBILTY FOR ASSISTANCE IN PERSON UPON …` | 12 | 10.2% |
| `THE ORGANIZATION POSTS NOTICES INFORMING THE PUBLIC OF THE FINANCIAL ASSISTANCE PROGRAM. …` | 10 | 8.5% |
| `Part VI, Line 3: The organization is committed to promoting health in the community inclu…` | 9 | 7.6% |
| `The filing organization has printed material available at each point of registration in o…` | 9 | 7.6% |
| `The organization goes to great lengths in order to inform and educate patients/persons wh…` | 8 | 6.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | QUEEN OF THE VALLEY MEDICAL CENTER | THE ORGANIZATION POSTS NOTICES INFORMING THE PUBLIC OF THE FINANCIAL ASSISTANCE… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201101319349303155_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_06_EXPLANATION_PATIENT_EDU, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
