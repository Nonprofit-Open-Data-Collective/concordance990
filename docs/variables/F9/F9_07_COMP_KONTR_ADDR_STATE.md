# F9_07_COMP_KONTR_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_KONTR_ADDR_STATE

Independent contractor state

- Description: Highest compensated independent contractor (top 5 above
  100K) US address state

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

11 / 14

xpaths observed / mapped

498k

filings with a value

2009–2024

tax years observed

0 + 6 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 406 distinct values per xpath and year |
| ✓ pass | Codes share one format | 99% have the shape AA                        |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ContractorCompensation/AddressOfContractor/AddressUS/State` | PC | 2009–2012 | 77,556 | 13.8% | 65.2% |
| x2 | `IRS990/ContractorCompensation/AddressOfContractor/AddressForeign/ProvinceOrState` | PC | 2009–2012 | 871 | 0.155% | 27.2% |
| x3 | `IRS990EZ/CompOfHghstPaidCntrctProfSer/AddressUS/State` | EZ | 2009–2012 | 361 | 0.126% | 14.4% |
| x4 | `IRS990EZ/CompOfHghstPaidCntrctProfSer/AddressForeign/ProvinceOrState` | EZ | 2011–2011 | 1 | 0.00122% |  |
| x5 | `IRS990/ContractorCompensationGrp/ContractorAddress/USAddress/State` | PC | 2013–2013 | 26,338 | 13.2% | 62.8% |
| x6 | `IRS990/ContractorCompensationGrp/ContractorAddress/ForeignAddress/ProvinceOrState` | PC | 2013–2013 | 359 | 0.181% | 27.9% |
| x7 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/USAddress/State` | EZ | 2013–2013 | 113 | 0.108% | 12.4% |
| x8 | `IRS990/ContractorCompensationGrp/ContractorAddress/USAddress/StateAbbreviationCd` | PC | 2014–2024 | 383,412 | 10.6% | 62.9% |
| x9 | `IRS990/ContractorCompensationGrp/ContractorAddress/ForeignAddress/ProvinceOrStateNm` | PC | 2014–2024 | 6,367 | 0.233% | 29.3% |
| x10 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/USAddress/StateAbbreviationCd` | EZ | 2014–2024 | 2,266 | 0.134% | 16.3% |
| x11 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/ForeignAddress/ProvinceOrStateNm` | EZ | 2015–2024 | 45 | 0.00503% | 11.1% |
| x12 | `IRS990/Form990PartVIISectionB/ContractorCompensation/AddressOfContractor/AddressForeign/ProvinceOrState` | PC | not observed | 0 |  |  |
| x13 | `IRS990/Form990PartVIISectionB/ContractorCompensation/AddressOfContractor/AddressUS/State` | PC | not observed | 0 |  |  |
| x14 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/ForeignAddress/ProvinceOrState` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.4k | 20k | 23k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 117 | 233 | 242 | 279 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 55 | 84 | 104 | 118 |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  | 26k |  |  |  |  |  |  |  |  |  |  |  |
| x6 |  |  |  |  | 359 |  |  |  |  |  |  |  |  |  |  |  |
| x7 |  |  |  |  | 113 |  |  |  |  |  |  |  |  |  |  |  |
| x8 |  |  |  |  |  | 28k | 30k | 31k | 34k | 34k | 35k | 37k | 39k | 42k | 43k | 29k |
| x9 |  |  |  |  |  | 371 | 393 | 455 | 514 | 547 | 544 | 617 | 658 | 768 | 854 | 646 |
| x10 |  |  |  |  |  | 129 | 143 | 166 | 165 | 167 | 197 | 223 | 263 | 293 | 281 | 239 |
| x11 |  |  |  |  |  |  | 2 | 2 | 1 | 5 | 5 | 4 | 8 | 6 | 3 | 9 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 28 | 16 | 15 | 14 | 13 | 13 | 13 | 13 | 13 | 13 | 13 | 12 | 12 | 12 | 12 | 11 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 79,789  | 15.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x11 | WASH FOR LIFE INC | Malawi | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531619349201048_public.xml) |
| 2024 | 990EZ | x10 | FRIENDS OF NORD INC | LA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501649349200810_public.xml) |
| 2024 | 990 | x9 | SOCIETY OF ACTUARIES | ENGLAND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523049349301452_public.xml) |
| 2024 | 990 | x8 | RISEWELL COMMUNITY SERVICES INC FKA | NY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2013 | 990EZ | x7 | DEER CREEK WATERSHED CONSERVANCY | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432259349202013_public.xml) |
| 2013 | 990 | x6 | INDEPENDENT DIPLOMAT INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412259349301181_public.xml) |
| 2013 | 990 | x5 | ST LOUIS VOLUNTEERS OF AMERICA | IL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413539349301006_public.xml) |
| 2012 | 990EZ | x3 | THE ALLEN LILIA AND ALEXANDER VINE | NY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341639349200104_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_KONTR_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
