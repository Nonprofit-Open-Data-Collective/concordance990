# PF_AX16_EXP_RESP_RESULT_VERIFICA

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX16_EXP_RESP_RESULT_VERIFICA

Results of Verification

- Description: Results of Verification

- Table:

  [`PF-P99-T16-EXP-RESPONSIBILITY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t16-exp-responsibility)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-16`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

9.4k

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
| ⓘ info | No sign of truncation | ExpenditureResponsibilityStmt/ExpenditureResponsibility/ResultsOfVerification: longest value is exactly 1000 characters; ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ResultsOfVerificationTxt: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/ResultsOfVerification` | PF | 2009–2012 | 337 | 0.368% | 50.7% |
| x2 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ResultsOfVerificationTxt` | PF | 2013–2024 | 9,048 | 1.11% | 51.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11 | 64 | 115 | 147 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 203 | 239 | 290 | 334 | 435 | 554 | 745 | 1.1k | 1.2k | 1.3k | 1.3k | 1.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 9,385   | 177            | 1,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `THE GRANTOR HAS NO REASON TO DOUBT THE ACCURACY OR RELIABILITY OF THE REPORT FROM THE GRA…` | 519 | 25.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | ROBINS KAPLAN FOUNDATION | NO ISSUES NOTED. | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202611969349100126_public.xml) |
| 2012 | 990PF | x1 | TEW FOUNDATION | In April of 2012, the Bullitt Foundation received a grant from the T.E.W Founda… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333169349101093_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX16_EXP_RESP_RESULT_VERIFICA, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
