# F9_07_COMP_KONTR_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_KONTR_ADDR_L1

Independent contractor street address line 1

- Description: Highest compensated independent contractor (top 5 above
  100K) US address line 1

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

504k

filings with a value

2009–2024

tax years observed

0 + 6 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ▲ warn | Small code list | up to 81772 distinct values per xpath and year |
| ▲ warn | Codes share one format | 37% have the shape AA AAA 999999 |
| ✓ pass | Consistent letter case | 0.1% of values are lower case |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ContractorCompensation/AddressOfContractor/AddressUS/AddressLine1` | PC | 2009–2012 | 77,556 | 13.8% | 65.2% |
| x2 | `IRS990/ContractorCompensation/AddressOfContractor/AddressForeign/AddressLine1` | PC | 2009–2012 | 1,598 | 0.288% | 31.6% |
| x3 | `IRS990EZ/CompOfHghstPaidCntrctProfSer/AddressUS/AddressLine1` | EZ | 2009–2012 | 361 | 0.126% | 14.4% |
| x4 | `IRS990EZ/CompOfHghstPaidCntrctProfSer/AddressForeign/AddressLine1` | EZ | 2011–2011 | 2 | 0.00244% |  |
| x5 | `IRS990/ContractorCompensationGrp/ContractorAddress/USAddress/AddressLine1` | PC | 2013–2013 | 26,338 | 13.2% | 62.8% |
| x6 | `IRS990/ContractorCompensationGrp/ContractorAddress/ForeignAddress/AddressLine1` | PC | 2013–2013 | 591 | 0.297% | 33.2% |
| x7 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/USAddress/AddressLine1` | EZ | 2013–2013 | 113 | 0.108% | 12.4% |
| x8 | `IRS990/ContractorCompensationGrp/ContractorAddress/USAddress/AddressLine1Txt` | PC | 2014–2024 | 383,412 | 10.6% | 62.9% |
| x9 | `IRS990/ContractorCompensationGrp/ContractorAddress/ForeignAddress/AddressLine1Txt` | PC | 2014–2024 | 11,313 | 0.424% | 36.0% |
| x10 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/USAddress/AddressLine1Txt` | EZ | 2014–2024 | 2,266 | 0.134% | 16.3% |
| x11 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/ForeignAddress/AddressLine1Txt` | EZ | 2015–2024 | 59 | 0.00615% | 11.9% |
| x12 | `IRS990/Form990PartVIISectionB/ContractorCompensation/AddressOfContractor/AddressForeign/AddressLine1` | PC | not observed | 0 |  |  |
| x13 | `IRS990/Form990PartVIISectionB/ContractorCompensation/AddressOfContractor/AddressUS/AddressLine1` | PC | not observed | 0 |  |  |
| x14 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/ForeignAddress/AddressLine1` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.4k | 20k | 23k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 196 | 421 | 463 | 518 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 55 | 84 | 104 | 118 |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  | 2 |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  | 26k |  |  |  |  |  |  |  |  |  |  |  |
| x6 |  |  |  |  | 591 |  |  |  |  |  |  |  |  |  |  |  |
| x7 |  |  |  |  | 113 |  |  |  |  |  |  |  |  |  |  |  |
| x8 |  |  |  |  |  | 28k | 30k | 31k | 34k | 34k | 35k | 37k | 39k | 42k | 43k | 29k |
| x9 |  |  |  |  |  | 655 | 690 | 800 | 910 | 936 | 978 | 1.1k | 1.2k | 1.4k | 1.5k | 1.2k |
| x10 |  |  |  |  |  | 129 | 143 | 166 | 165 | 167 | 197 | 223 | 263 | 293 | 281 | 239 |
| x11 |  |  |  |  |  |  | 2 | 3 | 2 | 6 | 7 | 4 | 9 | 10 | 5 | 11 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 28 | 16 | 15 | 14 | 13 | 13 | 13 | 13 | 13 | 13 | 13 | 12 | 12 | 12 | 12 | 11 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value           | Filings | Share |
|-----------------|---------|-------|
| `PO BOX 102289` | 2,422   | 18.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x11 | ARAB FORUM FOR THE RIGHTS OF PERSONS | Hay Chmaou Alykot -Imn 24-apt1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511489349200636_public.xml) |
| 2024 | 990EZ | x10 | FRIENDS OF NORD INC | 935 GRAVIER ST STE 800 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501649349200810_public.xml) |
| 2024 | 990 | x9 | Open Path Psychotherapy Collective | Formansgrand 13 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202522049349300527_public.xml) |
| 2024 | 990 | x8 | YMCA OF THE FOOTHILLS | 8025 REDLANDS STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202532059349301333_public.xml) |
| 2013 | 990EZ | x7 | DEER CREEK WATERSHED CONSERVANCY | PO BOX 332 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432259349202013_public.xml) |
| 2013 | 990 | x6 | INDEPENDENT DIPLOMAT INC | BOULEVARD CHARLEMAGE 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412259349301181_public.xml) |
| 2013 | 990 | x5 | Gateway Community Health Center Inc | 231 Maple Avenue PO Box 12140 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510359349300216_public.xml) |
| 2012 | 990EZ | x3 | The Josh Willingham Foundation | 375 Shelia St | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331039349200033_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_KONTR_ADDR_L1, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
