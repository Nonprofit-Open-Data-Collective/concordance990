# SR_07_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_07_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Form; part and line number reference

- Table:

  [`SR-P07-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p07-t99-supplemental-info)
  (many)

- Part: Part VII - Supplemental Information

- Location:

  `SCHED-R-PART-07`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

56k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/SupplementalInformationDetail/FormAndLineReferenceDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 55,959 | 1.21% | 14.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 3.4k | 3.9k | 4.3k | 4.5k | 4.7k | 4.9k | 4.9k | 5.4k | 5.4k | 5.6k | 5.5k | 3.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 55,959  | 30             | 100     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `SCHEDULE R` | 8,868 | 46.0% |
| `SCHEDULE R, PART V` | 3,059 | 15.9% |
| `SCHEDULE R, PART II` | 1,299 | 6.7% |
| `Schedule R, Part V, Line 2` | 806 | 4.2% |
| `PART II, IDENTIFICATION OF RELATED TAX-EXEMPT ORGANIZATIONS:` | 702 | 3.6% |
| `Schedule R, Part II` | 664 | 3.4% |
| `SCHEDULE R, PARTS I - IV:` | 607 | 3.1% |
| `SCHEDULE R, PART III` | 590 | 3.1% |
| `FORM 990, SCHEDULE R, PART II` | 587 | 3.0% |
| `Explanation of information on Schedule R` | 565 | 2.9% |
| `FORM 990, SCHEDULE R, PART V, LINE 1O:` | 473 | 2.5% |
| `FORM 990, SCHEDULE R, PART V` | 430 | 2.2% |
| `SCHEDULE R, PART II:` | 309 | 1.6% |
| `PART II` | 159 | 0.8% |
| `SCHEDULE R, PART IV` | 80 | 0.4% |
| `Form 990, Schedule R, Part II` | 41 | 0.2% |
| `SCHEDULE R, PART II, COLUMN (B):` | 37 | 0.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | BLUE CROSS AND BLUE SHIELD PLANS | FORM 990, SCHEDULE R, PART V, LINE 2: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202522949349301967_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_07_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
