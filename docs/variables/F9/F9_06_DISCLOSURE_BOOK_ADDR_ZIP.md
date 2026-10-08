# F9_06_DISCLOSURE_BOOK_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_06_DISCLOSURE_BOOK_ADDR_ZIP

Person possessing the organization's books and records zip

- Description: Person who possesses the organization's books and
  records: foreign address, postal code

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
| ✓ pass | Values have the ZIP format | 99.9% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 52 filings use a placeholder such as 000000000 |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TheBooksAreInCareOf/AddressUS/ZIPCode` | PC | 2009–2012 | 494,711 | 99.8% |  |
| x2 | `IRS990EZ/TheBooksAreInCareOf/AddressUS/ZIPCode` | EZ | 2009–2012 | 254,277 | 99.9% |  |
| x3 | `IRS990/TheBooksAreInCareOf/AddressForeign/PostalCode` | PC | 2009–2012 | 642 | 0.125% |  |
| x4 | `IRS990EZ/TheBooksAreInCareOf/AddressForeign/PostalCode` | EZ | 2009–2012 | 243 | 0.0885% |  |
| x5 | `IRS990/BooksInCareOfDetail/USAddress/ZIPCode` | PC | 2013–2013 | 198,513 | 99.8% |  |
| x6 | `IRS990EZ/BooksInCareOfDetail/USAddress/ZIPCode` | EZ | 2013–2013 | 104,251 | 99.9% |  |
| x7 | `IRS990/BooksInCareOfDetail/ForeignAddress/PostalCode` | PC | 2013–2013 | 271 | 0.136% |  |
| x8 | `IRS990EZ/BooksInCareOfDetail/ForeignAddress/PostalCode` | EZ | 2013–2013 | 92 | 0.0881% |  |
| x9 | `IRS990/BooksInCareOfDetail/USAddress/ZIPCd` | PC | 2014–2024 | 3,143,699 | 99.7% |  |
| x10 | `IRS990EZ/BooksInCareOfDetail/USAddress/ZIPCd` | EZ | 2014–2024 | 1,774,710 | 99.9% |  |
| x11 | `IRS990/BooksInCareOfDetail/ForeignAddress/ForeignPostalCd` | PC | 2014–2024 | 5,815 | 0.226% |  |
| x12 | `IRS990EZ/BooksInCareOfDetail/ForeignAddress/ForeignPostalCd` | EZ | 2014–2024 | 1,723 | 0.101% |  |
| x13 | `IRS990/Form990PartVI/TheBooksAreInCareOf/AddressForeign/PostalCode` | PC | not observed | 0 |  |  |
| x14 | `IRS990/Form990PartVI/TheBooksAreInCareOf/AddressUS/ZIPCode` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 123k | 159k | 179k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 15k | 63k | 82k | 94k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 49 | 163 | 205 | 225 |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 | 14 | 69 | 77 | 83 |  |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  | 199k |  |  |  |  |  |  |  |  |  |  |  |
| x6 |  |  |  |  | 104k |  |  |  |  |  |  |  |  |  |  |  |
| x7 |  |  |  |  | 271 |  |  |  |  |  |  |  |  |  |  |  |
| x8 |  |  |  |  | 92 |  |  |  |  |  |  |  |  |  |  |  |
| x9 |  |  |  |  |  | 218k | 233k | 243k | 261k | 271k | 283k | 320k | 336k | 348k | 354k | 277k |
| x10 |  |  |  |  |  | 116k | 125k | 130k | 139k | 149k | 152k | 170k | 202k | 206k | 206k | 179k |
| x11 |  |  |  |  |  | 294 | 323 | 358 | 400 | 429 | 486 | 679 | 711 | 740 | 768 | 627 |
| x12 |  |  |  |  |  | 104 | 100 | 126 | 132 | 152 | 157 | 175 | 203 | 210 | 184 | 180 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format       | Filings   | Share |
|--------------|-----------|-------|
| `99999`      | 5,492,856 | 91.9% |
| `999999999`  | 480,088   | 8.0%  |
| `A9A 9A9`    | 2,054     | 0.0%  |
| `AA9 9AA`    | 715       | 0.0%  |
| `9999`       | 470       | 0.0%  |
| `99999-9999` | 438       | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x12 | BIBLE BELIEVERS MINISTRIES INC | G6Z 8B2 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202530169349200818_public.xml) |
| 2024 | 990EZ | x10 | THE CREATIVES PROJECT INC | 30310 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2024 | 990 | x11 | THE AMERICAN CHAMBER OF COMMERCE | 100027 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533189349303503_public.xml) |
| 2024 | 990 | x9 | IAAI FOUNDATION INC | 21045 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2013 | 990EZ | x8 | INTERNATIONAL CHAPEL MINISTRIES | 630-0243 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443159349200844_public.xml) |
| 2013 | 990EZ | x6 | MARSHALLTOWN AREA BOARD OF REALTORS | 50158 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430439349200608_public.xml) |
| 2013 | 990 | x7 | SULLIVAN COUNTY BOCES | 12754 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433159349300713_public.xml) |
| 2013 | 990 | x5 | MARTINEZ TEMPLE ASSOCIATION INC | 30909 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421679349300207_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_06_DISCLOSURE_BOOK_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
