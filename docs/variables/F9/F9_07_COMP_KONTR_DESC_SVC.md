# F9_07_COMP_KONTR_DESC_SVC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_KONTR_DESC_SVC

Independent contractor description of services

- Description: Highest compensated independent contractor (top 5 above
  100K) description of services

- Table:

  [`F9-P07-T02-CONTRACTORS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p07-t02-contractors)
  (many)

- Part: Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent Contractors

- Location:

  `F990-PC-PART-07-SECTION-B-LINE-01-COL-B`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

495k

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
| ⓘ info | No sign of truncation | IRS990EZ/CompOfHghstPaidCntrctProfSer/TypeOfService: longest value is exactly 75 characters; IRS990/ContractorCompensation/DescriptionOfServices: longest value is exactly 100 characters; IRS990/ContractorCompensationGrp/ServicesDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ContractorCompensation/DescriptionOfServices` | PC | 2009–2012 | 78,822 | 14% | 65.5% |
| x2 | `IRS990EZ/CompOfHghstPaidCntrctProfSer/TypeOfService` | EZ | 2009–2012 | 363 | 0.126% | 14.3% |
| x3 | `IRS990/ContractorCompensationGrp/ServicesDesc` | PC | 2013–2024 | 413,329 | 10.7% | 63.1% |
| x4 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/ServiceTypeTxt` | EZ | 2013–2024 | 2,434 | 0.139% | 16.0% |
| x5 | `IRS990/Form990PartVIISectionB/ContractorCompensation/DescriptionOfServices` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.5k | 21k | 24k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 55 | 84 | 106 | 118 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 27k | 29k | 30k | 31k | 34k | 35k | 36k | 37k | 39k | 42k | 44k | 30k |
| x4 |  |  |  |  | 113 | 129 | 145 | 169 | 167 | 173 | 204 | 227 | 270 | 302 | 286 | 249 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 29 | 17 | 15 | 14 | 13 | 13 | 13 | 13 | 13 | 13 | 13 | 12 | 12 | 12 | 12 | 11 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 492,149 | 17             | 100     |
| 990-EZ | 2,797   | 14             | 99      |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `CONSTRUCTION` | 32,434  | 23.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | Salado Historical Society | Construction | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523179349202922_public.xml) |
| 2024 | 990 | x3 | RISEWELL COMMUNITY SERVICES INC FKA | GENERAL CONTRACTOR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990EZ | x2 | The Josh Willingham Foundation | Clerical-office | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331039349200033_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | LESSOR OF MOBILE MRI EQUIPMENT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_KONTR_DESC_SVC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
