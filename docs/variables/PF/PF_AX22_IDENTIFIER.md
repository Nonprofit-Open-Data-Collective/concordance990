# PF_AX22_IDENTIFIER

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX22_IDENTIFIER

Identifier

- Description: General Explanation - Identifier

- Table:

  [`PF-P99-T22-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t22-supplemental-info)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-22`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

51k

filings with a value

2009–2024

tax years observed

1 + 2 reviewed

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
| x1 | `GeneralExplanationAttachment/GeneralExplanation/Identifier` | PF | 2009–2012 | 1,712 | 1.72% | 27.5% |
| x2 | `GeneralExplanationAttachment/GeneralExplanationGrp/IdentifierTxt` | PF | 2013–2024 | 49,354 | 3.99% | 5.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 56 | 416 | 554 | 686 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 429 | 2.5k | 2.7k | 3.1k | 3.0k | 5.0k | 7.1k | 5.4k | 5.3k | 5.2k | 5.0k | 4.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 2 | 2 | 2 | 2 | 1 | 5 | 5 | 5 | 4 | 7 | 8 | 5 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 51,066  | 25             | 96      |

### Most common values

| Value              | Filings | Share |
|--------------------|---------|-------|
| `FEDERAL FOOTNOTE` | 31,496  | 79.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | W A OBNOVLENSKI-THOMPSON TUI | FEDERAL FOOTNOTE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523149349102707_public.xml) |
| 2012 | 990PF | x1 | THE STEWARDSHIP FOUNDATION | GENERAL ELECTIONS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321349349101662_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX22_IDENTIFIER, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
