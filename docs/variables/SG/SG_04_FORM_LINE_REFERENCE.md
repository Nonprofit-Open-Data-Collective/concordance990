# SG_04_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_04_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Form; part and line number reference

- Table:

  [`SG-P04-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p04-t99-supplemental-info)
  (many)

- Part: Part IV - Supplemental Information

- Location:

  `SCHED-G-PART-04`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

39k

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
| ⓘ info | No sign of truncation | IRS990ScheduleG/SupplementalInformationDetail/FormAndLineReferenceDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 39,247 | 0.755% | 11.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 2.3k | 2.6k | 2.8k | 2.9k | 3.1k | 3.2k | 3.3k | 3.3k | 3.8k | 4.2k | 4.3k | 3.4k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ |  |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 33,442  | 36             | 100     |
| 990-EZ | 5,805   | 34             | 100     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `SCHEDULE G, PART I, LINE 2B, COLUMN (V)` | 6,055 | 23.7% |
| `Part I, Line 2b - Fundraiser Additional Information` | 5,949 | 23.3% |
| `SCHEDULE G, PAGE 3, PART III, LINE 17B` | 5,290 | 20.7% |
| `Part III, Line 17b - Distributions Required Under State Law` | 1,990 | 7.8% |
| `SCHEDULE G, PART IV` | 1,507 | 5.9% |
| `SCHEDULE G, PAGE 1, PART I, LINE 2B, COLUMN (V)` | 1,126 | 4.4% |
| `Schedule G, Part I, Line 2b, Column (v)` | 902 | 3.5% |
| `SCHEDULE G, PAGE 1, PART I, LINE 2B, COLUMN (III)` | 403 | 1.6% |
| `Part III` | 401 | 1.6% |
| `Schedule G, Part II, Line 1` | 389 | 1.5% |
| `STM01` | 368 | 1.4% |
| `Schedule G, Part III, Line 17b` | 314 | 1.2% |
| `SCHEDULE G, PAGE 3, PART III, LINE 16` | 265 | 1.0% |
| `Part III, line 9` | 179 | 0.7% |
| `Part III, line 16` | 174 | 0.7% |
| `Part IV` | 158 | 0.6% |
| `Schedule G, Part I, Line 1` | 86 | 0.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | MANDATORY FUN OUTDOORS | Part III Line 17B | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630979349300908_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_04_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
