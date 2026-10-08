# F9_06_DISCLOSURE_BOOK_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_06_DISCLOSURE_BOOK_ADDR_CITY

Person possessing the organization's books and records city

- Description: Person who possesses the organization's books and
  records: foreign address, city

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

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TheBooksAreInCareOf/AddressUS/City` | PC | 2009–2012 | 494,711 | 99.8% |  |
| x2 | `IRS990EZ/TheBooksAreInCareOf/AddressUS/City` | EZ | 2009–2012 | 254,277 | 99.9% |  |
| x3 | `IRS990/TheBooksAreInCareOf/AddressForeign/City` | PC | 2009–2012 | 778 | 0.154% |  |
| x4 | `IRS990EZ/TheBooksAreInCareOf/AddressForeign/City` | EZ | 2009–2012 | 293 | 0.106% |  |
| x5 | `IRS990/BooksInCareOfDetail/USAddress/City` | PC | 2013–2013 | 198,513 | 99.8% |  |
| x6 | `IRS990EZ/BooksInCareOfDetail/USAddress/City` | EZ | 2013–2013 | 104,251 | 99.9% |  |
| x7 | `IRS990/BooksInCareOfDetail/ForeignAddress/City` | PC | 2013–2013 | 335 | 0.168% |  |
| x8 | `IRS990EZ/BooksInCareOfDetail/ForeignAddress/City` | EZ | 2013–2013 | 120 | 0.115% |  |
| x9 | `IRS990/BooksInCareOfDetail/USAddress/CityNm` | PC | 2014–2024 | 3,143,699 | 99.7% |  |
| x10 | `IRS990EZ/BooksInCareOfDetail/USAddress/CityNm` | EZ | 2014–2024 | 1,774,710 | 99.9% |  |
| x11 | `IRS990/BooksInCareOfDetail/ForeignAddress/CityNm` | PC | 2014–2024 | 6,794 | 0.254% |  |
| x12 | `IRS990EZ/BooksInCareOfDetail/ForeignAddress/CityNm` | EZ | 2014–2024 | 2,129 | 0.122% |  |
| x13 | `IRS990/Form990PartVI/TheBooksAreInCareOf/AddressForeign/City` | PC | not observed | 0 |  |  |
| x14 | `IRS990/Form990PartVI/TheBooksAreInCareOf/AddressUS/City` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 123k | 159k | 179k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 15k | 63k | 82k | 94k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 54 | 197 | 250 | 277 |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 | 15 | 84 | 95 | 99 |  |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  | 199k |  |  |  |  |  |  |  |  |  |  |  |
| x6 |  |  |  |  | 104k |  |  |  |  |  |  |  |  |  |  |  |
| x7 |  |  |  |  | 335 |  |  |  |  |  |  |  |  |  |  |  |
| x8 |  |  |  |  | 120 |  |  |  |  |  |  |  |  |  |  |  |
| x9 |  |  |  |  |  | 218k | 233k | 243k | 261k | 271k | 283k | 320k | 336k | 348k | 354k | 277k |
| x10 |  |  |  |  |  | 116k | 125k | 130k | 139k | 149k | 152k | 170k | 202k | 206k | 206k | 179k |
| x11 |  |  |  |  |  | 364 | 398 | 439 | 480 | 506 | 562 | 785 | 823 | 850 | 883 | 704 |
| x12 |  |  |  |  |  | 135 | 130 | 158 | 164 | 187 | 195 | 217 | 249 | 248 | 228 | 218 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,844,804 | 9              | 29      |
| 990-EZ | 2,135,763 | 9              | 31      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 85,435  | 23.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x12 | THE SKOPELOS FOUNDATION FOR THE ARTS | SKOPELOS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349207729_public.xml) |
| 2024 | 990EZ | x10 | SAINT CLAIR HOUSE INC | CLEVELAND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2024 | 990 | x11 | OFRENDA INC | FILANDIA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503159349306520_public.xml) |
| 2024 | 990 | x9 | IAAI FOUNDATION INC | COLUMBIA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2013 | 990EZ | x8 | FORMANDO VIDAS INC | Bogota | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402279349202405_public.xml) |
| 2013 | 990EZ | x6 | Awesome Cooper Band Boosters | Abilene | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423079349200717_public.xml) |
| 2013 | 990 | x7 | PETROLEUM ADVISORY FORUM | MOSCOW | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201531889349300803_public.xml) |
| 2013 | 990 | x5 | MARTINEZ TEMPLE ASSOCIATION INC | Augusta | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421679349300207_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_06_DISCLOSURE_BOOK_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
