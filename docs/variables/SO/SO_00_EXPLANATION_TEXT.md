# SO_00_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SO_00_EXPLANATION_TEXT

Additional explanations

- Description: General Explanation - Explanation

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

2 / 2

xpaths observed / mapped

5.9M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleO/GeneralExplanation/Explanation: longest value is exactly 9000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleO/GeneralExplanation/Explanation` | SZ | 2009–2012 | 725,672 | 98.4% | 93.7% |
| x2 | `IRS990ScheduleO/SupplementalInformationDetail/ExplanationTxt` | SZ | 2013–2024 | 5,136,448 | 97.3% | 93.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 184k | 239k | 269k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 300k | 331k | 354k | 370k | 395k | 415k | 430k | 482k | 527k | 542k | 548k | 444k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ |  | 97 | 97 | 95 | 97 | 97 | 97 | 96 | 96 | 96 | 96 | 95 | 94 | 94 | 93 | 93 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,845,115 | 206            | 9,004   |
| 990-EZ | 2,016,964 | 83             | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `NO DOCUMENTS AVAILABLE TO THE PUBLIC` | 195,466 | 19.2% |
| `NO REVIEW WAS OR WILL BE CONDUCTED.` | 188,486 | 18.5% |
| `No documents available to the public.` | 174,158 | 17.1% |
| `No review was or will be conducted.` | 130,820 | 12.8% |
| `UPON REQUEST` | 81,283 | 8.0% |
| `THE ORGANIZATION MAKES ITS GOVERNING DOCUMENTS, CONFLICT OF INTEREST POLICY, AND FINANCIA…` | 80,124 | 7.9% |
| `AVAILABLE UPON REQUEST` | 53,863 | 5.3% |
| `THE ORGANIZATION MAKES ITS GOVERNING DOCUMENTS, CONFLICT OF INTEREST POLICY AND FINANCIAL…` | 39,462 | 3.9% |
| `AVAILABLE UPON REQUEST.` | 37,616 | 3.7% |
| `THE PROCESS HAS NOT CHANGED FROM THE PRIOR YEAR.` | 34,988 | 3.4% |
| `UPON REQUEST.` | 2,572 | 0.3% |
| `The organization makes its governing documents, conflict of interest policy, and financia…` | 561 | 0.1% |
| `The organization makes its governing documents, conflict of interest policy and financial…` | 253 | 0.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | SAINT CLAIR HOUSE INC | DESCRIPTION: INVESTMENT INCOME. AMOUNT: 5. | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2012 | 990EZ | x1 | ART FORMS & THEATRE CONCEPTS INC | Description: Production Cost (Excluding \$6500 of Line 12). Amount: 26,988. Desc… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SO_00_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
