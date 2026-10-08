# SC_04_FORM_LINE_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_04_FORM_LINE_REFERENCE

Form and line reference

- Description: Return reference

- Table:

  [`SC-P04-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p04-t99-supplemental-info)
  (many)

- Part: Part IV - Supplemental Information

- Location:

  `SCHED-C-PART-04`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

117k

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
| x1 | `IRS990ScheduleC/SupplementalInformationDetail/FormAndLineReferenceDesc` | SZ | 2013–2024 | 117,316 | 1.75% | 6.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 7.5k | 8.5k | 8.9k | 9.2k | 9.7k | 9.9k | 10k | 11k | 11k | 12k | 12k | 8.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |
| 990-EZ |  |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 111,780 | 28             | 98      |
| 990-EZ | 5,536   | 29             | 75      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PART II-B, LINE 1:` | 32,575 | 37.0% |
| `PART I-A, LINE 1:` | 14,388 | 16.4% |
| `Part II-B, Line 1:` | 6,855 | 7.8% |
| `SCHEDULE C, PART I-A, LINE 1` | 6,440 | 7.3% |
| `SCHEDULE C, PART II-B, LINE 1` | 6,221 | 7.1% |
| `Schedule C, Part II-B, Line 1 DETAILED DESCRIPTION OF THE LOBBYING ACTIVITY` | 5,053 | 5.7% |
| `Part I-A, Line 1 - Direct and Indirect Political Campaign Activities` | 4,792 | 5.4% |
| `SCHEDULE C, PART IV` | 4,319 | 4.9% |
| `Part II-B, Line 1i - Other Activities Description` | 3,970 | 4.5% |
| `Part IV - Additional Information` | 1,263 | 1.4% |
| `Schedule C, Part II-B, Line 1` | 752 | 0.9% |
| `Part I-A, Line 1:` | 595 | 0.7% |
| `SCHEDULE C, PART II-A` | 441 | 0.5% |
| `Schedule C, Part II-B, Line 1, Description of the activities reported on Lines 1a through…` | 213 | 0.2% |
| `Pt II-B Line 1` | 123 | 0.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x1 | INTERNATIONAL BROTHERHOOD OF ELECTRICAL | PART I-A, LINE 1: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503099349303295_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_04_FORM_LINE_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
