# PF_AX22_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX22_EXPLANATION_TEXT

Explanation

- Description: General Explanation - Explanation

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

67k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

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
| x1 | `GeneralExplanationAttachment/GeneralExplanation/Explanation` | PF | 2009–2012 | 3,102 | 3% | 12.6% |
| x2 | `GeneralExplanationAttachment/GeneralExplanationGrp/MediumExplanationTxt` | PF | 2013–2024 | 64,215 | 4.97% | 8.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 99 | 759 | 1.0k | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.3k | 3.5k | 3.8k | 4.3k | 4.2k | 6.1k | 8.4k | 7.1k | 7.0k | 6.5k | 6.3k | 5.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 4 | 3 | 3 | 3 | 3 | 7 | 6 | 7 | 6 | 8 | 10 | 6 | 6 | 5 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 67,317  | 663            | 32,701  |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `THE COMPENSATION SHOWN ON THE RETURN THAT IS PAID TO BANK OF AMERICA, N.A. AS CORPORATE T…` | 31,490 | 81.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | HEATHCOTE CHARITABLE TRUST | THE COMPENSATION SHOWN ON THE RETURN THAT IS PAID TO BANK OF AMERICA, N.A. AS C… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202500799349101635_public.xml) |
| 2012 | 990PF | x1 | THE STEWARDSHIP FOUNDATION | YEAR ENDED: DECEMBER 31, 2012 38-3355391 THE STEWARDSHIP FOUNDATION 2540 FLORAL… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321349349101662_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX22_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
