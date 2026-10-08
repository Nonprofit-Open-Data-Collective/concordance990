# SF_05_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_05_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Form; part and line number reference

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

1 / 1

xpaths observed / mapped

111k

filings with a value

2013–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleF/SupplementalInformationDetail/FormAndLineReferenceDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 111,383 | 3.1% | 40.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 5.4k | 6.2k | 6.8k | 7.4k | 8.0k | 8.3k | 11k | 12k | 13k | 14k | 11k | 8.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 3 | 3 | 3 | 3 | 3 | 3 | 4 | 4 | 4 | 4 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 111,383 | 28             | 100     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PART I, LINE 2:` | 29,558 | 24.4% |
| `PART III ACCOUNTING METHOD:` | 25,833 | 21.3% |
| `SCHEDULE F, PAGE 1, PART I, LINE 3` | 14,855 | 12.3% |
| `PART I, LINE 3:` | 11,848 | 9.8% |
| `Part I, Line 2 - Grantmakers Explanation For Monitoring Use of Funds Outside US` | 7,395 | 6.1% |
| `SCHEDULE F, PAGE 1, PART I, LINE 2` | 6,083 | 5.0% |
| `Pt I Line 2` | 5,552 | 4.6% |
| `Schedule F, Part I, Line 2` | 5,115 | 4.2% |
| `Part I, Line 2:` | 4,883 | 4.0% |
| `Part III Accounting Method:` | 3,263 | 2.7% |
| `SCHEDULE F, PAGE 5, PART V` | 2,222 | 1.8% |
| `Part I, line 3:` | 2,211 | 1.8% |
| `Schedule F, Part I, Line 3 Method used to account for expenditures on org's financial sta…` | 1,981 | 1.6% |
| `Schedule F, Part I, Line 2 Procedures for monitoring use of grant funds` | 405 | 0.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | THE CLEVELAND CLINIC FOUNDATION | PART I, LINE 2: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_05_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
