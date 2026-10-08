# PF_AX16_EXP_RESP_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX16_EXP_RESP_ADDR_L2

AddressLine2

- Description: Foreign Address - AddressLine2

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

2.0k

filings with a value

2011–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 7% of values are numeric |
| ⓘ info | No sign of truncation | ExpenditureResponsibilityStmt/ExpenditureResponsibility/ForeignAddress/AddressLine2: longest value is exactly 35 characters; ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/AddressLine2: longest value is exactly 35 characters; ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/AddressLine2Txt: longest value is exactly 35 characters; ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/AddressLine2: longest value is exactly 35 characters; ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/AddressLine2Txt: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/ForeignAddress/AddressLine2` | PF | 2011–2012 | 25 | 0.0351% | 72.0% |
| x2 | `ExpenditureResponsibilityStmt/ExpenditureResponsibility/USAddress/AddressLine2` | PF | 2011–2012 | 25 | 0.0301% | 56.0% |
| x3 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/AddressLine2` | PF | 2013–2013 | 22 | 0.0479% | 50.0% |
| x4 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/AddressLine2` | PF | 2013–2013 | 12 | 0.0262% | 66.7% |
| x5 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/ForeignAddress/AddressLine2Txt` | PF | 2014–2024 | 1,334 | 0.187% | 61.3% |
| x6 | `ExpenditureResponsibilityStmt/ExpenditureResponsibilityGrp/USAddress/AddressLine2Txt` | PF | 2014–2024 | 543 | 0.0636% | 55.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  | 11 | 14 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  | 13 | 12 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 22 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 12 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 27 | 41 | 44 | 52 | 70 | 101 | 155 | 196 | 213 | 220 | 215 |
| x6 |  |  |  |  |  | 15 | 21 | 25 | 19 | 24 | 45 | 71 | 75 | 96 | 79 | 73 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 1,961   | 16             | 35      |

### Most common values

| Value    | Filings | Share |
|----------|---------|-------|
| `STREET` | 129     | 16.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x5 | THE SKOLL FOUNDATION | CHUNDRIGAR ROAD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349107604_public.xml) |
| 2024 | 990PF | x6 | MEADOWS ROAD FOUNDATION | 30218 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349102750_public.xml) |
| 2013 | 990PF | x3 | BUTLER CONSERVATION FUND INC | ENTRANCE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403219349102285_public.xml) |
| 2013 | 990PF | x4 | FOUNDERORG INC CO FIDUCIA PARTNERS LLC | 19 ROOM 2073 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443219349102834_public.xml) |
| 2012 | 990PF | x1 | WKKELLOGG FOUNDATION | ESCONDIDO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420309349100152_public.xml) |
| 2012 | 990PF | x2 | The David and Lucile Packard Foundation | 200 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313189349101456_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX16_EXP_RESP_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
