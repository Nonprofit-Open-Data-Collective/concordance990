# SO_00_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SO_00_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Form; part and line number reference

- Table:

  [`SO-P00-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#so-p00-t99-supplemental-info)
  (many)

- Part: Supplemental Information to Form 990 or 990-EZ

- Location:

  `SCHED-O-PART-00`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

5.1M

filings with a value

2013–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleO/SupplementalInformationDetail/FormAndLineReferenceDesc: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleO/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 5,136,448 | 97.3% | 93.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 300k | 331k | 354k | 370k | 395k | 415k | 430k | 482k | 527k | 542k | 548k | 444k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ |  |  |  |  | 97 | 97 | 97 | 96 | 96 | 96 | 96 | 95 | 94 | 94 | 93 | 93 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,349,587 | 37             | 100     |
| 990-EZ | 1,786,820 | 28             | 100     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `FORM 990, PART VI, SECTION C, LINE 19` | 1,079,250 | 16.9% |
| `FORM 990, PART VI, SECTION B, LINE 11B` | 858,082 | 13.4% |
| `FORM 990, PART VI, SECTION B, LINE 12C` | 730,551 | 11.4% |
| `FORM 990, PAGE 6, PART VI, LINE 19` | 721,921 | 11.3% |
| `FORM 990, PAGE 6, PART VI, LINE 11B` | 712,468 | 11.1% |
| `FORM 990, PART VI, SECTION B, LINE 15` | 383,129 | 6.0% |
| `Form 990, Part VI, Line 11b: Form 990 Review Process` | 333,068 | 5.2% |
| `Form 990, Part VI, Line 19: Other Organization Documents Publicly Available` | 333,068 | 5.2% |
| `FORM 990-EZ, PART I, LINE 16` | 266,446 | 4.2% |
| `FORM 990, PART VI, SECTION B, LINE 11` | 214,498 | 3.4% |
| `Form 990, Part VI, Section C, Line 19` | 184,248 | 2.9% |
| `Form 990, Part VI, Section B, Line 11b` | 177,263 | 2.8% |
| `FORM 990, PART VI, SECTION A, LINE 7A` | 139,972 | 2.2% |
| `Other Expenses.1` | 65,676 | 1.0% |
| `FORM 990, PAGE 6, PART VI, LINE 12C` | 62,272 | 1.0% |
| `Governing documents etc available to public Part VI line 19` | 56,045 | 0.9% |
| `Form 990, Part VI, Section C, line 19` | 28,323 | 0.4% |
| `Form 990, Part VI, Section B, line 11b` | 28,319 | 0.4% |
| `Form 990 governing body review Part VI line 11` | 25,693 | 0.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x1 | SAINT CLAIR HOUSE INC | FORM 990-EZ, PART I, LINE 4 - OTHER INVESTMENT INCOME | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SO_00_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
