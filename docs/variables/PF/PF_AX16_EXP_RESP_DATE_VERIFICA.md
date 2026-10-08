# PF_AX16_EXP_RESP_DATE_VERIFICA

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX16_EXP_RESP_DATE_VERIFICA

Date of Verification

- Description: Date of Verification

- Table:

  [`PF-P99-T16-EXP-RESPONSIBILITY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t16-exp-responsibility)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-16`

- Type: date

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

6.0k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check     | Detail                       |
|--------|-----------------|------------------------------|
| ✓ pass | One date format | 100.0% use date (YYYY-MM-DD) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/DateOfVerification` | PF | 2009–2012 | 197 | 0.21% | 45.7% |
| x2 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/VerificationDt` | PF | 2013–2024 | 5,848 | 0.735% | 43.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9 | 43 | 61 | 84 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 125 | 144 | 178 | 205 | 269 | 401 | 514 | 712 | 788 | 827 | 841 | 844 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format       | Filings | Share  |
|--------------|---------|--------|
| `9999-99-99` | 6,045   | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | PAUL M KAUFFMAN | 2025-01-27 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501149349102200_public.xml) |
| 2012 | 990PF | x1 | THE PAT RILEY FAMILY FOUNDATION | 2013-08-12 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312269349100701_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX16_EXP_RESP_DATE_VERIFICA, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
