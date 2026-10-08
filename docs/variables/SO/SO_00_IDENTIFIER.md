# SO_00_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SO_00_IDENTIFIER

Identifier

- Description: General Explanation - Identifier

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

1 / 2

xpaths observed / mapped

628k

filings with a value

2009–2012

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleO/GeneralExplanation/Identifier: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleO/GeneralExplanation/Identifier` | SZ | 2009–2012 | 627,837 | 78.8% | 84.8% |
| x2 | `IRS990ScheduleO/SupplementalInformationDetail/IdentifierTxt` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 177k | 203k | 215k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 99 | 98 | 81 | 73 |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ |  | 89 | 89 | 90 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 414,378 | 31             | 100     |
| 990-EZ | 213,459 | 26             | 75      |

### Most common values

| Value                                            | Filings | Share |
|--------------------------------------------------|---------|-------|
| `OTHER EXPENSES`                                 | 96,361  | 12.6% |
| `GOVERNING DOCUMENTS DISCLOSURE EXPLANATION`     | 88,458  | 11.6% |
| `ORGANIZATION'S PROCESS USED TO REVIEW FORM 990` | 88,443  | 11.6% |
| `Form 990, Part VI, Line 19`                     | 72,435  | 9.5%  |
| `CHANGES IN NET ASSETS OR FUND BALANCES:`        | 50,119  | 6.6%  |
| `OTHER ASSETS`                                   | 48,369  | 6.3%  |
| `FORM 990, PART VI, SECTION B, LINE 11`          | 46,607  | 6.1%  |
| `Form 990, Part VI, Line 11`                     | 45,418  | 6.0%  |
| `Form 990-EZ, Part I, Line 16.1`                 | 33,261  | 4.4%  |
| `Form 990-EZ, Part I, Line 16.2`                 | 30,492  | 4.0%  |
| `Form 990, Part VI, Line 11b`                    | 27,723  | 3.6%  |
| `O01`                                            | 17,842  | 2.3%  |
| `Form 990, Part VI, Section B, line 11`          | 17,185  | 2.3%  |
| `Form 990, Part VI, Section C, line 19`          | 17,185  | 2.3%  |
| `O02`                                            | 15,365  | 2.0%  |
| `Form 990-EZ, Part I, Line 16.3`                 | 12,805  | 1.7%  |
| `FORM 990, PART VI, SECTION A, LINE 7A`          | 12,636  | 1.7%  |
| `Form 990, Part VI, Section B, line 12c`         | 12,519  | 1.6%  |
| `FORM 990, PART VI, SECTION A, LINE 6`           | 12,273  | 1.6%  |
| `Form 990, Part VI, Section B, line 15`          | 8,759   | 1.1%  |
| `Form 990, Part VI, Section A, line 7a`          | 4,300   | 0.6%  |
| `Form 990, Part VI, Section A, line 6`           | 4,048   | 0.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990EZ | x1 | CONCORD CHRISTIAN ACADEMY GIVING & GOING | GRANTS AND SIMILAR AMOUNTS PAID | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332829349200713_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SO_00_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
