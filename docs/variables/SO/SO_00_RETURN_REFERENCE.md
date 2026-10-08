# SO_00_RETURN_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SO_00_RETURN_REFERENCE

Return reference

- Description: Return reference

- Table:

  [`SO-P00-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#so-p00-t99-supplemental-info)
  (many)

- Part: Supplemental Information to Form 990 or 990-EZ

- Location:

  `SCHED-O-PART-00`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

588k

filings with a value

2009–2012

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleO/GeneralExplanation/ReturnReference: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleO/GeneralExplanation/ReturnReference` | SZ | 2009–2012 | 588,272 | 84% | 94.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 18k | 148k | 192k | 230k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 53 | 86 | 85 | 87 |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ |  | 68 | 68 | 77 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 416,387 | 39             | 100     |
| 990-EZ | 171,885 | 23             | 75      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `FORM 990, PART VI, SECTION C, LINE 19` | 172,225 | 17.6% |
| `FORM 990, PART VI, SECTION B, LINE 11` | 123,494 | 12.6% |
| `FORM 990, PART VI, SECTION B, LINE 12C` | 111,127 | 11.4% |
| `FORM 990, PAGE 6, PART VI, LINE 19` | 88,993 | 9.1% |
| `FORM 990-EZ, PART I, LINE 16` | 87,071 | 8.9% |
| `FORM 990, PAGE 6, PART VI, LINE 11B` | 83,651 | 8.6% |
| `Form 990, Part VI, Line 19: Other Organization Documents Publicly Available` | 72,082 | 7.4% |
| `FORM 990, PART VI, SECTION B, LINE 15` | 66,764 | 6.8% |
| `FORM 990, PART XI, LINE 5:` | 50,279 | 5.1% |
| `Form 990, Part VI, Line 11: Form 990 Review Process` | 45,350 | 4.6% |
| `FORM 990-EZ, PART II, LINE 24` | 31,846 | 3.3% |
| `Form 990, Part VI, Line 11b: Form 990 Review Process` | 27,671 | 2.8% |
| `FORM 990, PAGE 6, PART VI, LINE 11` | 4,791 | 0.5% |
| `FORM 990, PAGE 6, PART VI, LINE 15A` | 2,464 | 0.3% |
| `FORM 990, PAGE 6, PART VI, LINE 12C` | 2,311 | 0.2% |
| `Form 990, Part VI, Line 12c: Explanation of Monitoring and Enforcement of Conflicts` | 2,112 | 0.2% |
| `FORM 990, PAGE 6, PART VI, LINE 15B` | 1,759 | 0.2% |
| `Form 990, Part VI, Line 15b: Compensation Review and Approval Process for Officers and Ke…` | 1,568 | 0.2% |
| `FORM 990, PAGE 2, PART III, LINE 4D` | 1,366 | 0.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990EZ | x1 | ART FORMS & THEATRE CONCEPTS INC | Form 990-EZ, Part I, Line 16 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SO_00_RETURN_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
