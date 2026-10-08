# PF_AX16_EXP_RESP_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX16_EXP_RESP_ADDR_L1

AddressLine1

- Description: Foreign Address - AddressLine1

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

16k

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
| ⓘ info | No sign of truncation | ExpenditureResponsibilityStmt/ExpenditureResponsibility/ForeignAddress/AddressLine1: longest value is exactly 35 characters; ExpenditureResponsibilityStmt/ExpenditureResponsibility/USAddress/AddressLine1: longest value is exactly 35 characters; ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/AddressLine1: longest value is exactly 35 characters; ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/AddressLine1: longest value is exactly 35 characters; ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/USAddress/AddressLine1` | PF | 2009–2012 | 399 | 0.396% | 53.1% |
| x2 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/ForeignAddress/AddressLine1` | PF | 2009–2012 | 191 | 0.203% | 63.4% |
| x3 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/AddressLine1` | PF | 2013–2013 | 213 | 0.464% | 40.4% |
| x4 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/AddressLine1` | PF | 2013–2013 | 100 | 0.218% | 60.0% |
| x5 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/AddressLine1Txt` | PF | 2014–2024 | 10,486 | 1.36% | 43.6% |
| x6 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/AddressLine1Txt` | PF | 2014–2024 | 4,580 | 0.561% | 62.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 19 | 87 | 135 | 158 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 9 | 41 | 60 | 81 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 213 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 100 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 243 | 285 | 347 | 416 | 592 | 929 | 1.4k | 1.5k | 1.6k | 1.7k | 1.6k |
| x6 |  |  |  |  |  | 129 | 174 | 182 | 221 | 254 | 346 | 593 | 656 | 684 | 697 | 644 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 15,969  | 23             | 37      |

### Most common values

| Value                             | Filings | Share |
|-----------------------------------|---------|-------|
| `150 WEST 30TH STREET SUITE 1401` | 25      | 2.9%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | THE JOHN MARTIN FOUNDATION | NO 8 JINGSHUN DONGJIE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521349349105132_public.xml) |
| 2024 | 990PF | x5 | ROBINS KAPLAN FOUNDATION | 313 IRON HORSE WAY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202611969349100126_public.xml) |
| 2013 | 990PF | x4 | Julian & Jose Maria Echavarria Foundati… | St 6 No 66-26 Hangar 19 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442259349100959_public.xml) |
| 2013 | 990PF | x3 | THE DUFFIELD FAMILY FOUNDATION DBA MADD… | 320 MAPLE AVE WEST 142 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201531359349102648_public.xml) |
| 2012 | 990PF | x2 | LAUCKS FOUNDATION CO JACOBSON JARVIS & … | 102-749 PANDORA AVENUE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201330639349100403_public.xml) |
| 2012 | 990PF | x1 | The Louisa Kreisberg Family Foundation | 2503 Walnut Street No 300 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321239349100937_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX16_EXP_RESP_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
