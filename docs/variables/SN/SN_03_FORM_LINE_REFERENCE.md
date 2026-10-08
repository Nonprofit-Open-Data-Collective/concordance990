# SN_03_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_03_FORM_LINE_REFERENCE

Form, part, and line number reference

- Description: Return reference

- Table:

  [`SN-P03-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p03-t99-supplemental-info)
  (many)

- Part: Part III - Supplemental Information

- Location:

  `SCHED-N-PART-03`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

15k

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
| x1 | `IRS990ScheduleN/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 15,117 | 0.28% | 35.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 992 | 1.0k | 1.0k | 1.2k | 1.2k | 1.3k | 1.3k | 1.4k | 1.4k | 1.6k | 1.5k | 1.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 10,293  | 23             | 99      |
| 990-EZ | 4,824   | 25             | 99      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PART I, LINE 2E:` | 2,958 | 29.8% |
| `SCHEDULE N` | 1,448 | 14.6% |
| `PART II, LINE 2E:` | 1,060 | 10.7% |
| `SCHEDULE N, PAGE 1, PART I, LINE 2E` | 881 | 8.9% |
| `Sch N, Part III, Additional Information` | 841 | 8.5% |
| `Part I & 2, Line 2e - Name and Explanation for Involvement in Successor` | 575 | 5.8% |
| `PART I, LINE 3:` | 497 | 5.0% |
| `Part I, Line 2e:` | 403 | 4.1% |
| `SCHEDULE N, PART II, PAGE 2, LINE 2E` | 366 | 3.7% |
| `Part I, Line 2e` | 353 | 3.6% |
| `PART I, LINE 6C:` | 262 | 2.6% |
| `Schedule N, Part I, Line 2` | 207 | 2.1% |
| `FORM 990, SCHEDULE N` | 47 | 0.5% |
| `Schedule N, Part II CASH TRANSFER` | 43 | 0.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | ENERGY EFFICIENCY ALLIANCE-NJ | SCHEDULE N, PAGE 1, PART I, LINE 2E | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531679349301098_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_03_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
