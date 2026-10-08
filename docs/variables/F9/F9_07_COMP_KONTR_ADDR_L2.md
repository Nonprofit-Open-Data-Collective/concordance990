# F9_07_COMP_KONTR_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_KONTR_ADDR_L2

Independent contractor street address line 2

- Description: Highest compensated independent contractor (top 5 above
  100K) US address line 2

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

9 / 14

xpaths observed / mapped

15k

filings with a value

2009–2024

tax years observed

1 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ▲ warn | Small code list | up to 1409 distinct values per xpath and year |
| ▲ warn | Codes share one format | 58% have the shape AAAAA 999 |
| ✓ pass | Consistent letter case | 0.1% of values are lower case |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ContractorCompensation/AddressOfContractor/AddressUS/AddressLine2` | PC | 2009–2012 | 1,703 | 0.292% | 32.0% |
| x2 | `IRS990/ContractorCompensation/AddressOfContractor/AddressForeign/AddressLine2` | PC | 2009–2012 | 61 | 0.00779% | 24.6% |
| x3 | `IRS990EZ/CompOfHghstPaidCntrctProfSer/AddressUS/AddressLine2` | EZ | 2009–2012 | 2 | 0.00107% |  |
| x4 | `IRS990/ContractorCompensationGrp/ContractorAddress/USAddress/AddressLine2` | PC | 2013–2013 | 549 | 0.276% | 33.3% |
| x5 | `IRS990/ContractorCompensationGrp/ContractorAddress/ForeignAddress/AddressLine2` | PC | 2013–2013 | 22 | 0.0111% | 27.3% |
| x6 | `IRS990/ContractorCompensationGrp/ContractorAddress/USAddress/AddressLine2Txt` | PC | 2014–2024 | 12,332 | 0.475% | 32.9% |
| x7 | `IRS990/ContractorCompensationGrp/ContractorAddress/ForeignAddress/AddressLine2Txt` | PC | 2014–2024 | 603 | 0.0332% | 34.2% |
| x8 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/ForeignAddress/AddressLine2Txt` | EZ | 2015–2024 | 12 | 0.00224% | 8.3% |
| x9 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/USAddress/AddressLine2Txt` | EZ | 2018–2024 | 56 | 0.00615% | 7.1% |
| x10 | `IRS990/Form990PartVIISectionB/ContractorCompensation/AddressOfContractor/AddressForeign/AddressLine2` | PC | not observed | 0 |  |  |
| x11 | `IRS990/Form990PartVIISectionB/ContractorCompensation/AddressOfContractor/AddressUS/AddressLine2` | PC | not observed | 0 |  |  |
| x12 | `IRS990EZ/CompOfHghstPaidCntrctProfSer/AddressForeign/AddressLine2` | EZ | not observed | 0 |  |  |
| x13 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/ForeignAddress/AddressLine2` | EZ | not observed | 0 |  |  |
| x14 | `IRS990EZ/CompensationOfHghstPdCntrctGrp/USAddress/AddressLine2` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 266 | 437 | 475 | 525 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 15 | 17 | 15 | 14 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 1 |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 549 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  | 22 |  |  |  |  |  |  |  |  |  |  |  |
| x6 |  |  |  |  |  | 720 | 820 | 907 | 949 | 989 | 999 | 1.1k | 1.3k | 1.4k | 1.8k | 1.3k |
| x7 |  |  |  |  |  | 25 | 23 | 35 | 36 | 28 | 38 | 66 | 69 | 92 | 99 | 92 |
| x8 |  |  |  |  |  |  | 1 |  |  | 1 | 1 |  | 2 | 2 | 1 | 4 |
| x9 |  |  |  |  |  |  |  |  |  | 1 | 2 | 4 | 11 | 11 | 16 | 11 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | \<1 |
| 990-EZ | \<1 |  |  | \<1 |  |  | \<1 |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value       | Filings | Share |
|-------------|---------|-------|
| `Suite 200` | 387     | 12.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x8 | THYMUS MEETING ASSOCIATION | 4631 202 Street | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202500479349200120_public.xml) |
| 2024 | 990EZ | x9 | OPERATION SPAY NEUTER INC | Suite 103 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202540639349200604_public.xml) |
| 2024 | 990 | x7 | Alpha International | Tunbridge Wells | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543179349304964_public.xml) |
| 2024 | 990 | x6 | YMCA OF THE FOOTHILLS | 8 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202532059349301333_public.xml) |
| 2013 | 990 | x5 | CALIFORNIA ASSOCIATION FOR RESEARCH IN … | ZAC St Martin | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201542259349302499_public.xml) |
| 2013 | 990 | x4 | GUALALA RIVER WATERSHED INC | 39951 Old Stage Road | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402409349300305_public.xml) |
| 2012 | 990EZ | x3 | COUNTY MEDICAL SERVICES | 1406 Q STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323199349202042_public.xml) |
| 2012 | 990 | x2 | US WHEAT ASSOCIATES INC | 28800 MOHAMMEDIA VILLA 66 LA SIESTA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420569349300412_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_KONTR_ADDR_L2, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
