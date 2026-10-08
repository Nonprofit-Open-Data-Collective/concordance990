# F9_07_COMP_KONTR_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_KONTR_NAME_PERS

Independent contractor person name

- Description: Highest compensated independent contractor (top 5 above
  100K) person name

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

4 / 5

xpaths observed / mapped

113k

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
| ⓘ info | No sign of truncation | IRS990EZ/CompensationOfHghstPdCntrctGrp/PersonNm: longest value is exactly 35 characters; IRS990EZ/CompOfHghstPaidCntrctProfSer/NamePerson: longest value is exactly 35 characters; IRS990/ContractorCompensation/NameOfContractor/NamePerson: longest value is exactly 35 characters; IRS990/ContractorCompensationGrp/ContractorName/PersonNm: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ContractorCompensation/NameOfContractor/NamePerson` | PC | 2009–2012 | 21,206 | 3.58% | 53.8% |
| x2 | `IRS990EZ/CompOfHghstPaidCntrctProfSer/NamePerson` | EZ | 2009–2012 | 174 | 0.0459% | 16.7% |
| x3 | `IRS990/ContractorCompensationGrp/ContractorName/PersonNm` | PC | 2013–2024 | 90,341 | 1.72% | 48.0% |
| x4 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/PersonNm` | EZ | 2013–2024 | 1,056 | 0.0682% | 17.5% |
| x5 | `IRS990/Form990PartVIISectionB/ContractorCompensation/NameOfContractor/NamePerson` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3.0k | 5.6k | 6.2k | 6.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 17 | 53 | 61 | 43 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 6.9k | 7.3k | 7.4k | 7.5k | 7.9k | 8.1k | 8.0k | 7.9k | 8.3k | 8.4k | 7.9k | 4.8k |
| x4 |  |  |  |  | 51 | 48 | 63 | 67 | 57 | 60 | 83 | 93 | 131 | 144 | 137 | 122 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 9 | 5 | 4 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 111,547 | 20             | 35      |
| 990-EZ | 1,230   | 15             | 35      |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `NONE` | 7,136   | 56.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | FRIENDS OF NORD INC | NEW ORLEANS BALLET ASSOCIATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501649349200810_public.xml) |
| 2024 | 990 | x3 | SOCIAL VENTURE PARTNERS INTERNATIONAL | Aspen Baker | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349308195_public.xml) |
| 2012 | 990EZ | x2 | The Josh Willingham Foundation | Amy Young | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331039349200033_public.xml) |
| 2012 | 990 | x1 | A CHILDS GARDEN INC | NOT APPLICABLE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332189349300528_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_KONTR_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
