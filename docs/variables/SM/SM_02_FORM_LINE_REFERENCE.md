# SM_02_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_02_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Return Reference

- Table:

  [`SM-P02-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p02-t99-supplemental-info)
  (many)

- Part: Part II - Supplemental Information

- Location:

  `SCHED-M-PART-02`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

93k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 93,315 | 2.41% | 14.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 5.2k | 6.0k | 6.6k | 6.9k | 7.8k | 7.8k | 8.2k | 8.8k | 9.5k | 9.7k | 10k | 6.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 93,315  | 25             | 99      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PART I, COLUMN (B):` | 37,702 | 46.3% |
| `PART I, LINE 32B:` | 16,043 | 19.7% |
| `Part I, Column (b):` | 6,262 | 7.7% |
| `SCHEDULE M, PAGE 2, PART II` | 5,491 | 6.7% |
| `PART I, LINE 33:` | 3,904 | 4.8% |
| `Schedule M, Part I Explanations of reporting method for number of contributions` | 3,664 | 4.5% |
| `Part I, Line 32b:` | 2,807 | 3.4% |
| `SCHEDULE M, PAGE 1, PART I, LINE 32B` | 2,232 | 2.7% |
| `SCHEDULE M, PART I, COLUMN B` | 989 | 1.2% |
| `Schedule M, Part I, Line 32b` | 785 | 1.0% |
| `SCHEDULE M, PART I, COLUMN (B):` | 602 | 0.7% |
| `Part I, Line 32, Hire and Use of Third Parties` | 483 | 0.6% |
| `Schedule M, Part I, Line 32b Third parties used to solicit, process, or sell noncash cont…` | 275 | 0.3% |
| `Part I, Line 33:` | 139 | 0.2% |
| `Schedule M, Part I, Explanations of reporting method for number of contributions` | 136 | 0.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | PENNSYLVANIA INSTITUTE OF TECHNOLOGY | PART I, COLUMN (B): | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202641119349301809_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_02_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
