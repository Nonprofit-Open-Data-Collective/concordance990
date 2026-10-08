# SL_05_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_05_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Form; part and line number reference

- Table:

  [`SL-P05-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p05-t99-supplemental-info)
  (many)

- Part: Part V - Supplemental Information

- Location:

  `SCHED-L-PART-05`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

54k

filings with a value

2013–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleL/SupplementalInformationDetail/FormAndLineReferenceDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 54,040 | 0.804% | 7.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 3.8k | 4.0k | 4.2k | 4.4k | 4.6k | 4.7k | 4.6k | 4.9k | 5.0k | 5.0k | 5.0k | 3.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ |  |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 52,453  | 29             | 100     |
| 990-EZ | 1,587   | 29             | 100     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `SCHEDULE L, PART V` | 15,814 | 44.2% |
| `Schedule L, Part V Supplemental Information` | 11,459 | 32.1% |
| `SCHEDULE L, PART IV` | 1,822 | 5.1% |
| `SCH L, PART IV, BUSINESS TRANSACTIONS INVOLVING INTERESTED PERSONS:` | 1,340 | 3.7% |
| `Schedule L, Part IV` | 1,189 | 3.3% |
| `Supplemental Information for Schedule L` | 1,084 | 3.0% |
| `Part IV Line 1` | 905 | 2.5% |
| `SCHEDULE L, PART II` | 793 | 2.2% |
| `PART IV` | 506 | 1.4% |
| `Schedule L, Part II` | 406 | 1.1% |
| `SCHEDULE L, PART IV, BUSINESS TRANSACTIONS INVOLVING INTERESTED PERSONS:` | 232 | 0.6% |
| `Part V` | 114 | 0.3% |
| `FORM 990, SCHEDULE L, PART IV` | 43 | 0.1% |
| `BUSINESS TRANSACTIONS INVOLVING INTERESTED PERSONS` | 42 | 0.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | THE CLEVELAND CLINIC FOUNDATION | SCHEDULE L, PART II LOANS TO AND FROM INTERESTED PERSONS, COLUMN (H) | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_05_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
