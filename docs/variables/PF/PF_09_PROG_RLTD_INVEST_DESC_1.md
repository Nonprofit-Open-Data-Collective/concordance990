# PF_09_PROG_RLTD_INVEST_DESC_1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_09_PROG_RLTD_INVEST_DESC_1

Description 1

- Description: Sum Of Program Related Investments - Description 1

- Table:

  [`PF-P09-T00-PROG-RELATED-INVESTMENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p09-t00-prog-related-investments)
  (one)

- Part: Part IX-A - Summary of Direct Charitable Activities; Part IX-B -
  Summary of Program-Related Investments (2023: Part VIII-A, VIII-B)

- Location:

  `F990-PF-PART-09-B-LINE-01-03-COL-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

267k

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
| ⓘ info | No sign of truncation | IRS990PF/SumOfProgramRelatedInvestments/Description1: longest value is exactly 1000 characters; IRS990PF/SumOfProgramRelatedInvstGrp/Description1Txt: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SumOfProgramRelatedInvestments/Description1` | PF | 2009–2012 | 28,873 | 28.4% |  |
| x2 | `IRS990PF/SumOfProgramRelatedInvstGrp/Description1Txt` | PF | 2013–2024 | 237,984 | 20.9% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 743 | 7.0k | 9.8k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 13k | 12k | 14k | 15k | 16k | 18k | 20k | 26k | 27k | 27k | 27k | 24k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 32 | 28 | 28 | 28 | 28 | 23 | 23 | 23 | 23 | 23 | 23 | 23 | 22 | 22 | 22 | 21 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 266,857 | 8              | 1,000   |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `N/A` | 199,049 | 79.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THE FRIEDMAN FAMILY FOUNDATION INC | N/A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521259349101317_public.xml) |
| 2012 | 990PF | x1 | W TOM ZURSCHMIEDE FOUNDATION | N/A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322279349100902_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_09_PROG_RLTD_INVEST_DESC_1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
