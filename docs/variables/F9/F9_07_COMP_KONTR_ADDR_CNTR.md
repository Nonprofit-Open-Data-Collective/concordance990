# F9_07_COMP_KONTR_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_KONTR_ADDR_CNTR

Independent contractor country

- Description: Highest compensated independent contractor (top 5 above
  100K) foreign address country

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

14k

filings with a value

2009–2024

tax years observed

1 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 137 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ContractorCompensation/AddressOfContractor/AddressForeign/Country` | PC | 2009–2012 | 1,598 | 0.288% | 31.6% |
| x2 | `IRS990EZ/CompOfHghstPaidCntrctProfSer/AddressForeign/Country` | EZ | 2011–2011 | 2 | 0.00244% |  |
| x3 | `IRS990/ContractorCompensationGrp/ContractorAddress/ForeignAddress/Country` | PC | 2013–2013 | 591 | 0.297% | 33.2% |
| x4 | `IRS990/ContractorCompensationGrp/ContractorAddress/ForeignAddress/CountryCd` | PC | 2014–2024 | 11,313 | 0.424% | 36.0% |
| x5 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/ForeignAddress/CountryCd` | EZ | 2015–2024 | 59 | 0.00615% | 11.9% |
| x6 | `IRS990/Form990PartVIISectionB/ContractorCompensation/AddressOfContractor/AddressForeign/Country` | PC | not observed | 0 |  |  |
| x7 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/ForeignAddress/Country` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 196 | 421 | 463 | 518 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  | 2 |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 591 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  | 655 | 690 | 800 | 910 | 936 | 978 | 1.1k | 1.2k | 1.4k | 1.5k | 1.2k |
| x5 |  |  |  |  |  |  | 2 | 3 | 2 | 6 | 7 | 4 | 9 | 10 | 5 | 11 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  |  | \<1 |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 3,197   | 30.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x5 | WASH FOR LIFE INC | MI | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531619349201048_public.xml) |
| 2024 | 990 | x4 | Open Path Psychotherapy Collective | SW | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202522049349300527_public.xml) |
| 2013 | 990 | x3 | INDEPENDENT DIPLOMAT INC | BE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412259349301181_public.xml) |
| 2012 | 990 | x1 | GEORGIA TECH APPLIED RESEARCH CORPORATI… | UP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343529349300819_public.xml) |
| 2011 | 990EZ | x2 | MASINT ASSOCIATION | AM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201222909349200102_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_KONTR_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
