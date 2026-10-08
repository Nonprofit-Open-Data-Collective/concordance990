# PF_AX07_CASH_DEEMED_EXPLANATION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX07_CASH_DEEMED_EXPLANATION

Explanation

- Description: Cash Deemed Charitable Expln Stmt - Explanation

- Table:

  [`PF-P99-T00-AUXILLIARY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t00-auxilliary)
  (one)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-07`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

8.1k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 3% of values are numeric |
| ⓘ info | No sign of truncation | CashDeemedCharitableExplnStmt/Explanation: longest value is exactly 1000 characters; CashDeemedCharitableExplnStmt/ShortExplanationTxt: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `CashDeemedCharitableExplnStmt/Explanation` | PF | 2009–2012 | 466 | 0.543% |  |
| x2 | `CashDeemedCharitableExplnStmt/ShortExplanationTxt` | PF | 2013–2024 | 7,584 | 0.74% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 12 | 91 | 146 | 217 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 254 | 314 | 365 | 425 | 452 | 517 | 613 | 919 | 980 | 972 | 923 | 850 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 8,050   | 168            | 1,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `IN ACCORDANCE WITH REG. 53.4942(A)-2(C)(3)(IV), THE ABOVE REFERENCED FOUNDATION IS EXCLUD…` | 75 | 17.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THE TUSEN TAKK FOUNDATION INC | THE ORGANIZATION ONLY RECENTLY COMPLETED CONSTRUCTION ON ITS BUILDING. PRIOR TO… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503189349100925_public.xml) |
| 2012 | 990PF | x1 | BAKER FOUNDATION OF BURLESON INC | REASONABLE CASH BALANCE NECESSARY TO COVER CURRENT ADMIN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342669349100009_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX07_CASH_DEEMED_EXPLANATION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
