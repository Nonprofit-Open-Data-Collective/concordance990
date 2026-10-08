# SA_06_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_06_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Form; part and line number reference

- Table:

  [`SA-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-A-PART-06`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

518k

filings with a value

2013–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleA/Form990ScheduleAPartVIGrp/FormAndLineReferenceDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/Form990ScheduleAPartIVGrp/FormAndLineReferenceDesc` | SZ | 2013–2013 | 22,840 | 7.53% | 17.5% |
| x2 | `IRS990ScheduleA/Form990ScheduleAPartVIGrp/FormAndLineReferenceDesc` | SZ | 2014–2024 | 495,595 | 9.43% | 14.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 23k |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  |  | 31k | 34k | 36k | 39k | 40k | 44k | 52k | 59k | 59k | 58k | 43k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 9 | 11 | 12 | 12 | 12 | 12 | 12 | 13 | 13 | 13 | 13 | 12 |
| 990-EZ |  |  |  |  | 5 | 6 | 6 | 6 | 5 | 5 | 6 | 7 | 8 | 7 | 6 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 404,834 | 31             | 100     |
| 990-EZ | 113,600 | 26             | 100     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PART II, LINE 10` | 105,671 | 32.2% |
| `SCHEDULE A, PART II, LINE 10, EXPLANATION OF OTHER INCOME:` | 52,595 | 16.0% |
| `PART III, LINE 12` | 31,124 | 9.5% |
| `SCHEDULE A, PART III, LINE 12, EXPLANATION OF OTHER INCOME:` | 30,974 | 9.4% |
| `Pt II Ln 10` | 24,150 | 7.4% |
| `Schedule A, Part II, Line 10` | 20,902 | 6.4% |
| `Schedule A, Part III, Line 12` | 14,206 | 4.3% |
| `Pt III Ln 12` | 13,009 | 4.0% |
| `Part III - Line 12` | 10,244 | 3.1% |
| `SUPPLEMENTAL INFORMATION` | 6,435 | 2.0% |
| `Part II - Line 10` | 6,366 | 1.9% |
| `Schedule A, Part II, Line 10, Explanation of Other Income:` | 2,313 | 0.7% |
| `Schedule A, Part II, Line 10 Other Income` | 1,886 | 0.6% |
| `Pt II Line 10` | 1,879 | 0.6% |
| `PART II, LINE 12` | 1,874 | 0.6% |
| `PART IV, SECTION E, LINE 2A` | 1,400 | 0.4% |
| `Pt III Line 12` | 1,183 | 0.4% |
| `Schedule A, Part III, Line 12, Explanation of Other Income:` | 1,006 | 0.3% |
| `SCHEDULE A, PART II, LINE 12, EXPLANATION OF OTHER INCOME:` | 705 | 0.2% |
| `SCHEDULE A, PART III, LINE 12:` | 334 | 0.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | SCHEDULE A, PART II, LINE 10, EXPLANATION OF OTHER INCOME: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2013 | 990 | x1 | NEXT DOOR SOLUTIONS TO DOMESTIC VIOLENCE | SCHEDULE A, PART II, LINE 10, EXPLANATION OF OTHER INCOME: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413189349305496_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_06_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
