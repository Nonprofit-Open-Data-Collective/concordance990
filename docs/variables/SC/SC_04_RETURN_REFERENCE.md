# SC_04_RETURN_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_04_RETURN_REFERENCE

Return reference

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

18k

filings with a value

2009–2012

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/Form990ScheduleCPartIV/ReturnReference` | SZ | 2009–2012 | 17,701 | 2.18% | 2.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.1k | 4.4k | 5.2k | 6.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 6 | 3 | 3 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | \<1 | \<1 | \<1 | \<1 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 17,182  | 24             | 74      |
| 990-EZ | 519     | 25             | 68      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PART II-B, LINE 1:` | 3,807 | 25.9% |
| `PART I-A, LINE 1:` | 2,063 | 14.0% |
| `PART II-B, LINE 1I:` | 2,040 | 13.9% |
| `Schedule C, Part II-B, Line 1` | 1,151 | 7.8% |
| `Explanation of Other Lobbying Activities:` | 1,023 | 7.0% |
| `Part II-B, Line 1:` | 783 | 5.3% |
| `Part II-B, Line 1i - Other Activities Description` | 740 | 5.0% |
| `SCHEDULE C, PART I-A, LINE 1` | 674 | 4.6% |
| `SCHEDULE C, PART II-B, LINE 1` | 610 | 4.2% |
| `SCHEDULE C, PART II-B, LINE 1I` | 542 | 3.7% |
| `SCHEDULE C, PART IV` | 474 | 3.2% |
| `Part II-B, Line 1i:` | 332 | 2.3% |
| `Organizations Direct and Indirect Political Campaign Activities:` | 142 | 1.0% |
| `Part I-A, Line 1:` | 133 | 0.9% |
| `Schedule C, Part II-B, Line 1i` | 111 | 0.8% |
| `Lobbying Activities Explanation` | 35 | 0.2% |
| `SCHEDULE C, PART II-B, LINE 1(I)` | 27 | 0.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | MINNEAPOLIS COLLEGE OF ART & DESIGN | PART II-B, LINE 1: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_04_RETURN_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
