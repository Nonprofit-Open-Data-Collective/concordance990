# PF_AX45_REDUCT_EXPLANATION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX45_REDUCT_EXPLANATION

Explanation

- Description: Reduction Explanation Statement - Explanation

- Table:

  [`PF-P99-T00-AUXILLIARY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t00-auxilliary)
  (one)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-45`

- Type: text (multi-value: repeated values joined in one cell)

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

1.6k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 2% of values are numeric |
| ⓘ info | No sign of truncation | ReductionExplanationStatement/ShortExplanationTxt: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ReductionExplanationStatement/Explanation` | PF | 2009–2012 | 121 | 0.113% | 0.8% |
| x2 | `ReductionExplanationStatement/ShortExplanationTxt` | PF | 2013–2024 | 1,515 | 0.138% | 0.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2 | 33 | 41 | 45 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 50 | 58 | 73 | 75 | 84 | 103 | 124 | 202 | 210 | 190 | 187 | 159 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 1,636   | 240            | 1,000   |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `N/A` | 82      | 22.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | ANDREW D ZACKS FOUNDATION | \|Explanation:, Amount:\|cash value of insurance, 124788\| | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531359349104523_public.xml) |
| 2012 | 990PF | x1 | MILTON AND SALLY AVERY ARTS FOUNDATION | NOT APPLICABLE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322769349100107_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX45_REDUCT_EXPLANATION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
