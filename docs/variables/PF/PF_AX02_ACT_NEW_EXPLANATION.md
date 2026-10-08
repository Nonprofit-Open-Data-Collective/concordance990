# PF_AX02_ACT_NEW_EXPLANATION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX02_ACT_NEW_EXPLANATION

Explanation

- Description: Acty Not Previously Rpt Expln - Explanation

- Table:

  [`PF-P99-T00-AUXILLIARY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t00-auxilliary)
  (one)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-02`

- Type: text (multi-value: repeated values joined in one cell)

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

822

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
| x1 | `ActyNotPreviouslyRptExpln/Explanation` | PF | 2009–2012 | 62 | 0.0501% |  |
| x2 | `ActyNotPreviouslyRptExpln/ExplanationTxt` | PF | 2013–2024 | 760 | 0.0793% | 0.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2 | 18 | 22 | 20 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 30 | 41 | 50 | 39 | 35 | 51 | 48 | 85 | 82 | 87 | 121 | 91 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 822     | 380            | 4,752   |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `N/A` | 26      | 12.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | SELF-SUSTAINED INC | ASSISTANCE TO HOMELESS SHELTERS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202522879349101042_public.xml) |
| 2012 | 990PF | x1 | THE J PAUL GRAYSON FOUNDATION | THE J. PAUL GRAYSON FOUNDATION INITIATED A HORSE RESCUE AND WILDLIFE REFUGE OPE… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302759349100505_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX02_ACT_NEW_EXPLANATION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
