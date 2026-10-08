# PF_AX16_EXP_RESP_DATE_REP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX16_EXP_RESP_DATE_REP

Dates of Reports By Grantee?

- Description: Dates of Reports By Grantee?

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

12k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check     | Detail           |
|--------|-----------------|------------------|
| ✓ pass | One date format | 100.0% use other |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/DatesOfReportsByGrantee` | PF | 2009–2012 | 444 | 0.443% | 55.2% |
| x2 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/DatesOfReportsByGranteeTxt` | PF | 2013–2024 | 11,867 | 1.53% | 50.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 18 | 97 | 152 | 177 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 234 | 269 | 324 | 384 | 493 | 661 | 948 | 1.5k | 1.7k | 1.8k | 1.9k | 1.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format       | Filings | Share |
|--------------|---------|-------|
| `99/99/9999` | 3,775   | 40.2% |
| `9/99/9999`  | 1,861   | 19.8% |
| `99/99/99`   | 1,797   | 19.1% |
| `9/99/99`    | 1,031   | 11.0% |
| `9/9/9999`   | 912     | 9.7%  |
| `99/9/9999`  | 23      | 0.2%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | W A OBNOVLENSKI-THOMPSON TUI | 07/10/2025 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523149349102707_public.xml) |
| 2012 | 990PF | x1 | The Louisa Kreisberg Family Foundation | 1/23/12 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321239349100937_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX16_EXP_RESP_DATE_REP, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
