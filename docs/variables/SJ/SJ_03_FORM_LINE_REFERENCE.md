# SJ_03_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SJ_03_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Form; Part and line number reference

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

1 / 1

xpaths observed / mapped

295k

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
| ⓘ info | No sign of truncation | IRS990ScheduleJ/SupplementalInformationDetail/FormAndLineReferenceDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleJ/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 294,745 | 7% | 38.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 19k | 20k | 22k | 23k | 24k | 25k | 26k | 28k | 29k | 30k | 31k | 19k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 294,745 | 25             | 100     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PART I, LINE 3` | 69,656 | 29.0% |
| `PART I, LINE 1A` | 38,404 | 16.0% |
| `PART I, LINE 4B` | 36,931 | 15.4% |
| `PART I, LINE 7` | 32,149 | 13.4% |
| `Part I, Line 3` | 12,257 | 5.1% |
| `PART I, LINE 4A` | 10,754 | 4.5% |
| `Schedule J, Part I, Line 4b Supplemental nonqualified retirement plan` | 10,168 | 4.2% |
| `Schedule J, Part I, Line 3 Arrangement used to establish the top management official's co…` | 7,512 | 3.1% |
| `PART I, LINES 4A-B` | 7,240 | 3.0% |
| `Part I, Line 1a` | 3,890 | 1.6% |
| `PART I, LINE 6` | 3,662 | 1.5% |
| `Part I, Line 4b` | 3,343 | 1.4% |
| `Part I, Line 7` | 2,006 | 0.8% |
| `SCHEDULE J, PART III` | 1,200 | 0.5% |
| `Schedule J, Part I, Line 7 Non-fixed payments` | 856 | 0.4% |
| `Schedule J, Part I, Line 3` | 553 | 0.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | HAWAII PREPARATORY ACADEMY | PART I, LINE 1A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510989349300406_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SJ_03_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
