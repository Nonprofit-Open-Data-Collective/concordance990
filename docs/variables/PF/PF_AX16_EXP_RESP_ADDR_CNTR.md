# PF_AX16_EXP_RESP_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX16_EXP_RESP_ADDR_CNTR

Country

- Description: Foreign Address - Country

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

4.9k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 200 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/ForeignAddress/Country` | PF | 2009–2012 | 191 | 0.203% | 63.4% |
| x2 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/Country` | PF | 2013–2013 | 100 | 0.218% | 60.0% |
| x3 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/CountryCd` | PF | 2014–2024 | 4,580 | 0.561% | 62.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9 | 41 | 60 | 81 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 100 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 129 | 174 | 182 | 221 | 254 | 346 | 593 | 656 | 684 | 697 | 644 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `UK`  | 1,352   | 21.1% |
| `CA`  | 906     | 14.1% |
| `IN`  | 721     | 11.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | THE NOMMONTU FOUNDATION INC | UK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521349349103912_public.xml) |
| 2013 | 990PF | x2 | THE GRIFFIN FOUNDATION INC | UK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412279349100401_public.xml) |
| 2012 | 990PF | x1 | LAUCKS FOUNDATION CO JACOBSON JARVIS & … | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201330639349100403_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX16_EXP_RESP_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
