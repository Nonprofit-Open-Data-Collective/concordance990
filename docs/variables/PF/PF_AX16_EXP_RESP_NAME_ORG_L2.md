# PF_AX16_EXP_RESP_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX16_EXP_RESP_NAME_ORG_L2

Expenditure responsibility grantee - business name line 2

- Description: Business Name - BusinessNameLine2

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

352

filings with a value

2010–2024

tax years observed

0 + 3 reviewed

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
| x1 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/BusinessName/BusinessNameLine2` | PF | 2010–2012 | 6 | 0.00751% | 33.3% |
| x2 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/BusinessName/BusinessNameLine2` | PF | 2013–2013 | 6 | 0.0131% | 33.3% |
| x3 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/BusinessName/BusinessNameLine2Txt` | PF | 2014–2024 | 340 | 0.0383% | 25.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1 | 2 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 11 | 10 | 10 | 14 | 24 | 38 | 47 | 46 | 45 | 51 | 44 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 352     | 22             | 62      |

### Most common values

| Value            | Filings | Share |
|------------------|---------|-------|
| `C/O US BANK NA` | 22      | 15.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | ROBERT D AND MARGARET W QUIN FDN | C/O TRUIST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501089349100705_public.xml) |
| 2013 | 990PF | x2 | CHARLES & FLORENCE PHELPS TRUST 1010132… | C/O US BANK NA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422239349100517_public.xml) |
| 2012 | 990PF | x1 | CHARLES & FLORENCE PHELPS TRUST 1010132… | C/O US BANK NA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321349349100722_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX16_EXP_RESP_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
