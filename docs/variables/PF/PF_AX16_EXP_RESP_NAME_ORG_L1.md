# PF_AX16_EXP_RESP_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX16_EXP_RESP_NAME_ORG_L1

Expenditure responsibility grantee - business name line 1

- Description: Business Name - BusinessNameLine1

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

3 / 3

xpaths observed / mapped

14k

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
| ⓘ info | No sign of truncation | ExpenditureResponsibilityStmt/ExpenditureResponsibility/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/BusinessName/BusinessNameLine1` | PF | 2009–2012 | 485 | 0.488% | 52.0% |
| x2 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/BusinessName/BusinessNameLine1` | PF | 2013–2013 | 272 | 0.593% | 44.5% |
| x3 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/BusinessName/BusinessNameLine1Txt` | PF | 2014–2024 | 13,507 | 1.7% | 48.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 19 | 111 | 160 | 195 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 272 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 327 | 403 | 458 | 562 | 764 | 1.2k | 1.8k | 1.9k | 2.0k | 2.1k | 2.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 14,264  | 28             | 75      |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `SEE ATTACHED` | 91      | 13.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | Robert W Woodruff Foundation Inc | Ichauway Inc | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101428_public.xml) |
| 2013 | 990PF | x2 | THE RESEARCH COAST PRINCIPIUM FOUNDATIO… | TRUMOBILITY INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443089349100329_public.xml) |
| 2012 | 990PF | x1 | LAUCKS FOUNDATION CO JACOBSON JARVIS & … | VICTORIA COOL AID SOCIETY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201330639349100403_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX16_EXP_RESP_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
