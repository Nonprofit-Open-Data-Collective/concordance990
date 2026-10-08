# F9_07_COMP_KONTR_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_KONTR_NAME_ORG_L2

Independent contractor business name line 2

- Description: Highest compensated independent contractor (top 5 above
  100K) business name line 2

- Table:

  [`F9-P07-T02-CONTRACTORS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p07-t02-contractors)
  (many)

- Part: Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent Contractors

- Location:

  `F990-PC-PART-07-SECTION-B-LINE-01-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

5 / 7

xpaths observed / mapped

2.9k

filings with a value

2009–2024

tax years observed

1 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 310 distinct values per xpath and year |
| ▲ warn | Codes share one format | 22% have the shape AAA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ContractorCompensation/NameOfContractor/NameBusiness/BusinessNameLine2` | PC | 2009–2012 | 488 | 0.0851% | 23.2% |
| x2 | `IRS990EZ/CompOfHghstPaidCntrctProfSer/NameBusiness/BusinessNameLine2` | EZ | 2010–2012 | 5 | 0.00107% |  |
| x3 | `IRS990/ContractorCompensationGrp/ContractorName/BusinessName/BusinessNameLine2` | PC | 2013–2013 | 168 | 0.0845% | 20.8% |
| x4 | `IRS990/ContractorCompensationGrp/ContractorName/BusinessName/BusinessNameLine2Txt` | PC | 2014–2024 | 2,241 | 0.0779% | 23.2% |
| x5 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/BusinessName/BusinessNameLine2Txt` | EZ | 2017–2023 | 8 | 0.000969% |  |
| x6 | `IRS990/Form990PartVIISectionB/ContractorCompensation/NameOfContractor/NameBusiness/BusinessNameLine2` | PC | not observed | 0 |  |  |
| x7 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/BusinessName/BusinessNameLine2` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 63 | 124 | 148 | 153 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 2 | 2 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 168 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  | 162 | 168 | 170 | 187 | 190 | 191 | 216 | 204 | 251 | 286 | 216 |
| x5 |  |  |  |  |  |  |  |  | 1 |  |  | 1 |  | 4 | 2 |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  | \<1 | \<1 | \<1 |  |  |  |  | \<1 |  |  | \<1 |  | \<1 | \<1 |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `INC` | 33      | 9.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x4 | Rise United Network Inc | Connected Strat C4 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349319503_public.xml) |
| 2023 | 990EZ | x5 | WARRIORS FUTBOL CLUB | Red Bull Training Program | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202410989349200901_public.xml) |
| 2013 | 990 | x3 | OMAHA PERFORMING ARTS SOCIETY | Stuart Thompson Productions | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201530849349300753_public.xml) |
| 2012 | 990EZ | x2 | COUNTY MEDICAL SERVICES | FRANKLIN COUNTY MEMORIAL HOSPITAL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323199349202042_public.xml) |
| 2012 | 990 | x1 | OSTEOPATHIC MEDICAL EDUCATION CONSORTIU… | Department of Family Medicine | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400239349300245_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_KONTR_NAME_ORG_L2, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
