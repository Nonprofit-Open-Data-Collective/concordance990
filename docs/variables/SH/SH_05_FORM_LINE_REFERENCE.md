# SH_05_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Form; part and line number reference

- Table:

  [`SH-P05-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p05-t99-supplemental-info)
  (many)

- Part: Part V - Facility Information

- Location:

  `SCHED-H-PART-05-SECTION-C`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

26k

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
| ⓘ info | No sign of truncation | IRS990ScheduleH/SupplementalInformationGrp/FormAndLineReferenceDesc: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/SupplementalInformationGrp/FormAndLineReferenceDesc` | SZ | 2013–2024 | 26,472 | 0.349% | 95.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 2.3k | 2.4k | 2.4k | 2.3k | 2.4k | 2.3k | 2.3k | 2.3k | 2.3k | 2.3k | 2.3k | 969 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 26,472  | 42             | 100     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `Schedule H, Part V, Section B, Line 5 Facility , 1` | 2,466 | 14.8% |
| `Schedule H, Part V, Section B, Line 11 Facility , 1` | 2,455 | 14.7% |
| `Schedule H, Part V, Section B, Line 3E` | 1,814 | 10.9% |
| `Schedule H, Part V, Section B, Line 6a Facility , 1` | 1,480 | 8.9% |
| `Schedule H, Part V, Section B, Line 6b Facility , 1` | 1,173 | 7.0% |
| `SCHEDULE H, PART V, SECTION B, LINE 11` | 1,095 | 6.6% |
| `SCHEDULE H, PART V, SECTION B, LINE 5` | 1,078 | 6.5% |
| `PART V, SECTION B` | 647 | 3.9% |
| `FACILITY REPORTING GROUP A CONSISTS OF:` | 565 | 3.4% |
| `Schedule H, Part V, Section B, Line 13 Facility , 1` | 553 | 3.3% |
| `PART V, SECTION B, LINE 16` | 552 | 3.3% |
| `SCHEDULE H, PART V, SECTION B, LINE 7A` | 477 | 2.9% |
| `Schedule H, Part V, Section B, Line 11 Facility , 2` | 363 | 2.2% |
| `Part V, Line 5 - Account Input from Persons Who Represent the Community` | 325 | 1.9% |
| `Part V, Section B, Line 16` | 248 | 1.5% |
| `Schedule H, Part V, Section B, Line 22 Facility , 1` | 222 | 1.3% |
| `SCHEDULE H, PART V, SECTION B, LINE 22D` | 171 | 1.0% |
| `Schedule H, Part V Sec B, Line 3, Community Served by Needs Assessment` | 112 | 0.7% |
| `Part V, Line 3 - Account Input from Person Who Represent the Community` | 100 | 0.6% |
| `Schedule H, Part V, Section B, Line 5 Facility A, 1` | 99 | 0.6% |
| `Schedule H, Part V, Section B, Line 11 Facility A, 1` | 90 | 0.5% |
| `SCHEDULE H, PART V, SECTION B, LINE 10A` | 72 | 0.4% |
| `Schedule H, Part V Sec B, Line 7, Needs not addressed in Needs Assessment` | 69 | 0.4% |
| `Schedule H, Part V Sec B, Line 20d, How amounts charged to FAP-eligible patients were det…` | 68 | 0.4% |
| `SCHEDULE H, PART V, SECTION B, LINE 3` | 62 | 0.4% |
| `Part V, Section B` | 62 | 0.4% |
| `Schedule H, Part V Sec B, Line 4, Other Hospital Facilities included in Needs Assessment` | 57 | 0.3% |
| `Part V, Line 4 - List Other Hospital Facilities that Jointly Conducted Needs Assessment` | 56 | 0.3% |
| `Part V, Line 7 - Explanation of Needs Not Addressed and Reasons Why` | 56 | 0.3% |
| `Schedule H, Part V, Section B, Line 16 Facility , 1` | 51 | 0.3% |
| `Part V, Line 20d - Other Billing Determination of Individuals Without Insurance` | 50 | 0.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | UNION HOSPITAL INC | PART V, SECTION B | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349303730_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
