# F9_06_DISCLOSURE_BOOK_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_06_DISCLOSURE_BOOK_ADDR_STATE

Person possessing the organization's books and records state

- Description: Person who possesses the organization's books and
  records: foreign address, provice or state

- Table:

  [`F9-P06-T00-GOVERNANCE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p06-t00-governance)
  (one)

- Part: Part VI - Governance, Management, and Disclosure

- Location:

  `F990-PC-PART-06-SECTION-C-LINE-20`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

12 / 14

xpaths observed / mapped

6.0M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 258 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TheBooksAreInCareOf/AddressUS/State` | PC | 2009–2012 | 494,711 | 99.8% |  |
| x2 | `IRS990EZ/TheBooksAreInCareOf/AddressUS/State` | EZ | 2009–2012 | 254,277 | 99.9% |  |
| x3 | `IRS990/TheBooksAreInCareOf/AddressForeign/ProvinceOrState` | PC | 2009–2012 | 358 | 0.0735% |  |
| x4 | `IRS990EZ/TheBooksAreInCareOf/AddressForeign/ProvinceOrState` | EZ | 2009–2012 | 109 | 0.0416% |  |
| x5 | `IRS990/BooksInCareOfDetail/USAddress/State` | PC | 2013–2013 | 198,513 | 99.8% |  |
| x6 | `IRS990EZ/BooksInCareOfDetail/USAddress/State` | EZ | 2013–2013 | 104,251 | 99.9% |  |
| x7 | `IRS990/BooksInCareOfDetail/ForeignAddress/ProvinceOrState` | PC | 2013–2013 | 164 | 0.0825% |  |
| x8 | `IRS990EZ/BooksInCareOfDetail/ForeignAddress/ProvinceOrState` | EZ | 2013–2013 | 54 | 0.0517% |  |
| x9 | `IRS990/BooksInCareOfDetail/USAddress/StateAbbreviationCd` | PC | 2014–2024 | 3,143,699 | 99.7% |  |
| x10 | `IRS990EZ/BooksInCareOfDetail/USAddress/StateAbbreviationCd` | EZ | 2014–2024 | 1,774,710 | 99.9% |  |
| x11 | `IRS990/BooksInCareOfDetail/ForeignAddress/ProvinceOrStateNm` | PC | 2014–2024 | 4,093 | 0.176% |  |
| x12 | `IRS990EZ/BooksInCareOfDetail/ForeignAddress/ProvinceOrStateNm` | EZ | 2014–2024 | 1,426 | 0.0844% |  |
| x13 | `IRS990/Form990PartVI/TheBooksAreInCareOf/AddressForeign/ProvinceOrState` | PC | not observed | 0 |  |  |
| x14 | `IRS990/Form990PartVI/TheBooksAreInCareOf/AddressUS/State` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 123k | 159k | 179k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 15k | 63k | 82k | 94k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 29 | 89 | 108 | 132 |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 | 4 | 30 | 36 | 39 |  |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  | 199k |  |  |  |  |  |  |  |  |  |  |  |
| x6 |  |  |  |  | 104k |  |  |  |  |  |  |  |  |  |  |  |
| x7 |  |  |  |  | 164 |  |  |  |  |  |  |  |  |  |  |  |
| x8 |  |  |  |  | 54 |  |  |  |  |  |  |  |  |  |  |  |
| x9 |  |  |  |  |  | 218k | 233k | 243k | 261k | 271k | 283k | 320k | 336k | 348k | 354k | 277k |
| x10 |  |  |  |  |  | 116k | 125k | 130k | 139k | 149k | 152k | 170k | 202k | 206k | 206k | 179k |
| x11 |  |  |  |  |  | 183 | 195 | 218 | 251 | 273 | 328 | 479 | 518 | 560 | 599 | 489 |
| x12 |  |  |  |  |  | 67 | 70 | 98 | 108 | 124 | 134 | 151 | 183 | 181 | 159 | 151 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 666,133 | 21.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x12 | INTERNATIONAL XENOTRANSPLANTATION ASSOC… | QC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533169349203183_public.xml) |
| 2024 | 990EZ | x10 | SAINT CLAIR HOUSE INC | OH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2024 | 990 | x11 | Under the Same Sun Foundation (USA) | BC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503529349301610_public.xml) |
| 2024 | 990 | x9 | CHRISTIAN SHANE FONVILLE YOUTH | TX | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2013 | 990EZ | x8 | FORMANDO VIDAS INC | DC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402279349202405_public.xml) |
| 2013 | 990EZ | x6 | Awesome Cooper Band Boosters | TX | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423079349200717_public.xml) |
| 2013 | 990 | x7 | Fundacion Accion Social El Shaddai Inc | PR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402889349301105_public.xml) |
| 2013 | 990 | x5 | AMERICAN FRIENDS OF OUR ARMED FORCES | IL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422269349304432_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_06_DISCLOSURE_BOOK_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
