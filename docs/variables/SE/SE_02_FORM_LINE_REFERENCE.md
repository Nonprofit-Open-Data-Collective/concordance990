# SE_02_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SE_02_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Form; part and line number reference

- Table:

  [`SE-P02-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#se-p02-t99-supplemental-info)
  (many)

- Part: Part II - Supplemental Information

- Location:

  `SCHED-E-PART-02`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

163k

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
| ⓘ info | No sign of truncation | IRS990ScheduleE/SupplementalInformationDetail/FormAndLineReferenceDesc: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleE/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 162,566 | 2.04% | 59.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 11k | 12k | 12k | 13k | 14k | 13k | 14k | 15k | 16k | 16k | 16k | 9.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 5 | 5 | 5 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 3 |
| 990-EZ |  |  |  |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 145,841 | 36             | 100     |
| 990-EZ | 16,725  | 47             | 99      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `SCHEDULE E, PART I, LINE 3` | 56,668 | 22.6% |
| `SCHEDULE E, PART I, LINE 6` | 28,573 | 11.4% |
| `SCHEDULE E, LINE 3` | 28,409 | 11.3% |
| `Schedule E, Line 3 - Racially Nondiscriminatory Policy Publicized` | 28,381 | 11.3% |
| `Schedule E, Line 4 - Explanation of Records and Materials Not Maintained` | 28,381 | 11.3% |
| `Schedule E, Line 5 - Explanation of Organization Discrimination by Race` | 28,381 | 11.3% |
| `Schedule E, Part I, Line 3` | 17,498 | 7.0% |
| `Line 3` | 12,322 | 4.9% |
| `SCHEDULE E, LINE 6` | 10,746 | 4.3% |
| `SCHEDULE E, PART I, LINE 4` | 9,899 | 3.9% |
| `Schedule E, Part I, Line 6` | 1,809 | 0.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | COVENANT CHRISTIAN ACADEMY | SCHEDULE E, LINE 3 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503189349311195_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SE_02_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
