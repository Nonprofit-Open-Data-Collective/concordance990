# PF_AX50_TAX_511_EXPLANATION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX50_TAX_511_EXPLANATION

ExplanationTxt

- Description: Tax Under Section511 Statement - ExplanationTxt

- Table:

  [`PF-P99-T00-AUXILLIARY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t00-auxilliary)
  (one)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-50`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

328

filings with a value

2010–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 6% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `TaxUnderSection511Statement/Statement` | PF | 2010–2012 | 21 | 0.00501% |  |
| x2 | `TaxUnderSection511Statement/ExplanationTxt` | PF | 2013–2024 | 307 | 0.0374% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1 | 18 | 2 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3 | 3 | 3 | 2 | 1 | 1 | 11 | 76 | 59 | 53 | 52 | 43 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 328     | 33             | 300     |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `N/A` | 41      | 19.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | LEWIS FAMILY FOUNDATION | None | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513129349100701_public.xml) |
| 2012 | 990PF | x1 | DALE & JOAN COLEMAN CHARITABLE | SECTION 511 TAXES ON UNRELATED BUSINESS INCOME ARE THE TAXES ON THE PROFITS OF … | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331299349101173_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX50_TAX_511_EXPLANATION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
