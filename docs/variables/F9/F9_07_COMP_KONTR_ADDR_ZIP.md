# F9_07_COMP_KONTR_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_KONTR_ADDR_ZIP

Independent contractor zip

- Description: Highest compensated independent contractor (top 5 above
  100K) US address zip code

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

499k

filings with a value

2009–2024

tax years observed

0 + 6 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the ZIP format | 99.3% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 45 filings use a placeholder such as 000000000 |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ContractorCompensation/AddressOfContractor/AddressUS/ZIPCode` | PC | 2009–2012 | 77,556 | 13.8% | 65.2% |
| x2 | `IRS990/ContractorCompensation/AddressOfContractor/AddressForeign/PostalCode` | PC | 2009–2012 | 981 | 0.17% | 26.4% |
| x3 | `IRS990EZ/CompOfHghstPaidCntrctProfSer/AddressUS/ZIPCode` | EZ | 2009–2012 | 361 | 0.126% | 14.4% |
| x4 | `IRS990EZ/CompOfHghstPaidCntrctProfSer/AddressForeign/PostalCode` | EZ | 2011–2011 | 2 | 0.00244% |  |
| x5 | `IRS990/ContractorCompensationGrp/ContractorAddress/USAddress/ZIPCode` | PC | 2013–2013 | 26,338 | 13.2% | 62.8% |
| x6 | `IRS990/ContractorCompensationGrp/ContractorAddress/ForeignAddress/PostalCode` | PC | 2013–2013 | 376 | 0.189% | 26.6% |
| x7 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/USAddress/ZIPCode` | EZ | 2013–2013 | 113 | 0.108% | 12.4% |
| x8 | `IRS990/ContractorCompensationGrp/ContractorAddress/USAddress/ZIPCd` | PC | 2014–2024 | 383,412 | 10.6% | 62.9% |
| x9 | `IRS990/ContractorCompensationGrp/ContractorAddress/ForeignAddress/ForeignPostalCd` | PC | 2014–2024 | 7,163 | 0.287% | 32.2% |
| x10 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/USAddress/ZIPCd` | EZ | 2014–2024 | 2,266 | 0.134% | 16.3% |
| x11 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/ForeignAddress/ForeignPostalCd` | EZ | 2015–2024 | 47 | 0.00559% | 8.5% |
| x12 | `IRS990/Form990PartVIISectionB/ContractorCompensation/AddressOfContractor/AddressForeign/PostalCode` | PC | not observed | 0 |  |  |
| x13 | `IRS990/Form990PartVIISectionB/ContractorCompensation/AddressOfContractor/AddressUS/ZIPCode` | PC | not observed | 0 |  |  |
| x14 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/ForeignAddress/PostalCode` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.4k | 20k | 23k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 125 | 266 | 284 | 306 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 55 | 84 | 104 | 118 |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  | 2 |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  | 26k |  |  |  |  |  |  |  |  |  |  |  |
| x6 |  |  |  |  | 376 |  |  |  |  |  |  |  |  |  |  |  |
| x7 |  |  |  |  | 113 |  |  |  |  |  |  |  |  |  |  |  |
| x8 |  |  |  |  |  | 28k | 30k | 31k | 34k | 34k | 35k | 37k | 39k | 42k | 43k | 29k |
| x9 |  |  |  |  |  | 396 | 400 | 490 | 541 | 569 | 634 | 703 | 768 | 885 | 982 | 795 |
| x10 |  |  |  |  |  | 129 | 143 | 166 | 165 | 167 | 197 | 223 | 263 | 293 | 281 | 239 |
| x11 |  |  |  |  |  |  | 2 | 1 | 1 | 5 | 7 | 3 | 5 | 8 | 5 | 10 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 28 | 16 | 15 | 14 | 13 | 13 | 13 | 13 | 13 | 13 | 13 | 12 | 12 | 12 | 12 | 11 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 481,189 | 87.7% |
| `999999999` | 63,420  | 11.6% |
| `A9A 9A9`   | 1,506   | 0.3%  |
| `9999`      | 1,030   | 0.2%  |
| `999999`    | 686     | 0.1%  |
| `AA9 9AA`   | 630     | 0.1%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x11 | SHADE FOR CHILDREN | 53800 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520989349200702_public.xml) |
| 2024 | 990EZ | x10 | BLACK FILMMAKER FOUNDATION INC | 10013 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511609349200126_public.xml) |
| 2024 | 990 | x9 | NETWORK FOR GOOD | 00-105 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513039349301631_public.xml) |
| 2024 | 990 | x8 | YMCA OF THE FOOTHILLS | 90293 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202532059349301333_public.xml) |
| 2013 | 990EZ | x7 | DEER CREEK WATERSHED CONSERVANCY | 96092 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432259349202013_public.xml) |
| 2013 | 990 | x6 | INDEPENDENT DIPLOMAT INC | 1041 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412259349301181_public.xml) |
| 2013 | 990 | x5 | Gateway Community Health Center Inc | 12140 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510359349300216_public.xml) |
| 2012 | 990EZ | x3 | FLORIDA LIFE CARE RESIDENTS ASSOC INC | 32303 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311359349200421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_KONTR_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
