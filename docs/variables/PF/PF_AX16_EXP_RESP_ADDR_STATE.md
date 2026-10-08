# PF_AX16_EXP_RESP_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX16_EXP_RESP_ADDR_STATE

Province or state

- Description: Province or state

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

6 / 6

xpaths observed / mapped

14k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 854 distinct values per xpath and year |
| ▲ warn | Codes share one format | 80% have the shape AA                        |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/USAddress/State` | PF | 2009–2012 | 399 | 0.396% | 53.1% |
| x2 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/ForeignAddress/ProvinceOrState` | PF | 2009–2012 | 115 | 0.128% | 60.9% |
| x3 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/State` | PF | 2013–2013 | 213 | 0.464% | 40.4% |
| x4 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/ProvinceOrState` | PF | 2013–2013 | 63 | 0.137% | 55.6% |
| x5 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/StateAbbreviationCd` | PF | 2014–2024 | 10,486 | 1.36% | 43.6% |
| x6 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/ProvinceOrStateNm` | PF | 2014–2024 | 2,448 | 0.299% | 59.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 19 | 87 | 135 | 158 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 5 | 22 | 37 | 51 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 213 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 63 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 243 | 285 | 347 | 416 | 592 | 929 | 1.4k | 1.5k | 1.6k | 1.7k | 1.6k |
| x6 |  |  |  |  |  | 73 | 110 | 113 | 133 | 145 | 196 | 292 | 333 | 353 | 357 | 343 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `NY`  | 2,263   | 19.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | THE JOHN MARTIN FOUNDATION | BEIJING | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521349349105132_public.xml) |
| 2024 | 990PF | x5 | ROBINS KAPLAN FOUNDATION | RI | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202611969349100126_public.xml) |
| 2013 | 990PF | x4 | THE GRIFFIN FOUNDATION INC | LONDON n5 1fh | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412279349100401_public.xml) |
| 2013 | 990PF | x3 | THE RESEARCH COAST PRINCIPIUM FOUNDATIO… | FL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443089349100329_public.xml) |
| 2012 | 990PF | x2 | The David and Lucile Packard Foundation | Mazatln | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |
| 2012 | 990PF | x1 | The Louisa Kreisberg Family Foundation | CO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321239349100937_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX16_EXP_RESP_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
