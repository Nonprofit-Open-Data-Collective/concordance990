# PF_AX09_COMP_EXPLANATION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX09_COMP_EXPLANATION

Explanation

- Description: Compensation - Explanation

- Table:

  [`PF-P99-T09-COMP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t09-comp)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-09`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: EZ

2 / 2

xpaths observed / mapped

45k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | CompensationExplanation/Compensation/Explanation: longest value is exactly 1000 characters; CompensationExplanation/CompensationExplanationGrp/ShortExplanationTxt: longest value is exactly 1000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `CompensationExplanation/Compensation/Explanation` | EZ | 2009–2012 | 3,880 | 0.473% | 42.9% |
| x2 | `CompensationExplanation/CompensationExplanationGrp/ShortExplanationTxt` | EZ | 2013–2024 | 41,405 | 0.642% | 36.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 118 | 1.1k | 1.2k | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.9k | 2.5k | 3.0k | 3.4k | 3.4k | 2.8k | 3.6k | 4.2k | 4.4k | 4.1k | 4.3k | 3.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-PF | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-EZ | 28,233  | 35             | 924     |
| 990-PF | 17,052  | 63             | 1,000   |

### Most common values

| Value                   | Filings | Share |
|-------------------------|---------|-------|
| `SEE ATTACHED FOOTNOTE` | 1,967   | 14.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | FREED SPIRITS ANIMAL RESCUE | NO COMPENSATION TAKEN IN 2019 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202540659349201624_public.xml) |
| 2012 | 990EZ | x1 | Churubusco Chamber of Commerce | stipend | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301339349201530_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX09_COMP_EXPLANATION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
