# F9_00_PRIN_OFF_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_PRIN_OFF_ADDR_STATE

Principal officer state

- Description: Address of Filing Organization (Foreign Province or
  State)

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-F`

- Type: text

- Scope: HD – header (all returns)

- Database: F990

- Forms: PC

6 / 8

xpaths observed / mapped

3.3M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 232 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/AddressPrincipalOfficerUS/State` | PC | 2009–2012 | 404,804 | 53.1% |  |
| x2 | `IRS990/AddressPrincipalOfficerForeign/ProvinceOrState` | PC | 2009–2012 | 331 | 0.0443% |  |
| x3 | `IRS990/USAddress/State` | PC | 2013–2013 | 159,430 | 52.6% |  |
| x4 | `IRS990/ForeignAddress/ProvinceOrState` | PC | 2013–2013 | 145 | 0.0478% |  |
| x5 | `IRS990/USAddress/StateAbbreviationCd` | PC | 2014–2024 | 2,719,798 | 54.9% |  |
| x6 | `IRS990/ForeignAddress/ProvinceOrStateNm` | PC | 2014–2024 | 3,723 | 0.084% |  |
| x7 | `IRS990/Form990PartI/AddressOfPrincipalOfficer/AddressForeign/ProvinceOrState` | PC | not observed | 0 |  |  |
| x8 | `IRS990/Form990PartI/AddressOfPrincipalOfficer/AddressUS/State` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 29k | 101k | 130k | 145k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 24 | 80 | 106 | 121 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 159k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 145 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 174k | 187k | 197k | 212k | 243k | 253k | 285k | 298k | 308k | 312k | 250k |
| x6 |  |  |  |  |  | 157 | 197 | 229 | 330 | 312 | 313 | 455 | 436 | 467 | 444 | 383 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 87 | 82 | 81 | 81 | 80 | 80 | 80 | 81 | 81 | 89 | 89 | 89 | 89 | 88 | 88 | 90 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 322,034 | 19.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | SALTS SAIL AND LIFE TRAINING SOCIETY | BC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541299349303319_public.xml) |
| 2024 | 990 | x5 | CHRISTIAN SHANE FONVILLE YOUTH | TX | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2013 | 990 | x4 | Fundacion Accion Social El Shaddai Inc | PR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402889349301105_public.xml) |
| 2013 | 990 | x3 | NORTH BRUNSWICK BASEBALL ASSOCIATION INC | NJ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402549349300330_public.xml) |
| 2012 | 990 | x2 | THE AMERICAN CHAMBER OF COMMERCE IN CHI… | FOREIGN COUNTRY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313129349301401_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | AZ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_PRIN_OFF_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
