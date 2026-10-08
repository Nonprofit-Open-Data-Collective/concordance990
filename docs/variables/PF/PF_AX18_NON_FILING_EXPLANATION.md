# PF_AX18_NON_FILING_EXPLANATION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX18_NON_FILING_EXPLANATION

ExplanationTxt

- Description: Expln Of Non Filing With AGStmt - ExplanationTxt

- Table:

  [`PF-P99-T00-AUXILLIARY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t00-auxilliary)
  (one)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-18`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

40k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ExplnOfNonFilingWithAGStmt/Statement` | PF | 2009–2012 | 2,137 | 2.23% |  |
| x2 | `ExplnOfNonFilingWithAGStmt/ExplanationTxt` | PF | 2013–2024 | 38,085 | 4.62% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 58 | 501 | 687 | 891 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.0k | 1.3k | 1.4k | 1.6k | 2.0k | 2.5k | 3.2k | 4.5k | 4.8k | 5.0k | 5.4k | 5.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 4 | 4 | 4 | 4 | 4 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 40,222  | 143            | 1,805   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `The Ohio Attorney General requires that charitable organizations operating or organized w…` | 3,192 | 36.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | BIANCHINI FAMILY FOUNDATION | NONE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501069349100600_public.xml) |
| 2012 | 990PF | x1 | BRIDGING NATIONS FOUNDATION | Not Required | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343189349101074_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX18_NON_FILING_EXPLANATION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
