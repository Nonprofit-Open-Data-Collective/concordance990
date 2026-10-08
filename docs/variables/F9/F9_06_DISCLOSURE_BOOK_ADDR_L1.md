# F9_06_DISCLOSURE_BOOK_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_06_DISCLOSURE_BOOK_ADDR_L1

Person possessing the organization's books and records street address
line 1

- Description: Person who possesses the organization's books and
  records: foreign address, address line 1

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
| ⓘ info | No sign of truncation | IRS990EZ/BooksInCareOfDetail/ForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990EZ/BooksInCareOfDetail/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990EZ/BooksInCareOfDetail/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990EZ/TheBooksAreInCareOf/AddressForeign/AddressLine1: longest value is exactly 35 characters; IRS990EZ/TheBooksAreInCareOf/AddressUS/AddressLine1: longest value is exactly 35 characters; IRS990/BooksInCareOfDetail/ForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990/BooksInCareOfDetail/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990/BooksInCareOfDetail/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990/BooksInCareOfDetail/USAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990/TheBooksAreInCareOf/AddressForeign/AddressLine1: longest value is exactly 35 characters; IRS990/TheBooksAreInCareOf/AddressUS/AddressLine1: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TheBooksAreInCareOf/AddressUS/AddressLine1` | PC | 2009–2012 | 494,711 | 99.8% |  |
| x2 | `IRS990EZ/TheBooksAreInCareOf/AddressUS/AddressLine1` | EZ | 2009–2012 | 254,277 | 99.9% |  |
| x3 | `IRS990/TheBooksAreInCareOf/AddressForeign/AddressLine1` | PC | 2009–2012 | 817 | 0.163% |  |
| x4 | `IRS990EZ/TheBooksAreInCareOf/AddressForeign/AddressLine1` | EZ | 2009–2012 | 317 | 0.118% |  |
| x5 | `IRS990/BooksInCareOfDetail/USAddress/AddressLine1` | PC | 2013–2013 | 198,513 | 99.8% |  |
| x6 | `IRS990EZ/BooksInCareOfDetail/USAddress/AddressLine1` | EZ | 2013–2013 | 104,251 | 99.9% |  |
| x7 | `IRS990/BooksInCareOfDetail/ForeignAddress/AddressLine1` | PC | 2013–2013 | 342 | 0.172% |  |
| x8 | `IRS990EZ/BooksInCareOfDetail/ForeignAddress/AddressLine1` | EZ | 2013–2013 | 124 | 0.119% |  |
| x9 | `IRS990/BooksInCareOfDetail/USAddress/AddressLine1Txt` | PC | 2014–2024 | 3,143,699 | 99.7% |  |
| x10 | `IRS990EZ/BooksInCareOfDetail/USAddress/AddressLine1Txt` | EZ | 2014–2024 | 1,774,710 | 99.9% |  |
| x11 | `IRS990/BooksInCareOfDetail/ForeignAddress/AddressLine1Txt` | PC | 2014–2024 | 7,059 | 0.263% |  |
| x12 | `IRS990EZ/BooksInCareOfDetail/ForeignAddress/AddressLine1Txt` | EZ | 2014–2024 | 2,216 | 0.126% |  |
| x13 | `IRS990/Form990PartVI/TheBooksAreInCareOf/AddressForeign/AddressLine1` | PC | not observed | 0 |  |  |
| x14 | `IRS990/Form990PartVI/TheBooksAreInCareOf/AddressUS/AddressLine1` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 123k | 159k | 179k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 15k | 63k | 82k | 94k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 55 | 207 | 263 | 292 |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 | 15 | 90 | 101 | 111 |  |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  | 199k |  |  |  |  |  |  |  |  |  |  |  |
| x6 |  |  |  |  | 104k |  |  |  |  |  |  |  |  |  |  |  |
| x7 |  |  |  |  | 342 |  |  |  |  |  |  |  |  |  |  |  |
| x8 |  |  |  |  | 124 |  |  |  |  |  |  |  |  |  |  |  |
| x9 |  |  |  |  |  | 218k | 233k | 243k | 261k | 271k | 283k | 320k | 336k | 348k | 354k | 277k |
| x10 |  |  |  |  |  | 116k | 125k | 130k | 139k | 149k | 152k | 170k | 202k | 206k | 206k | 179k |
| x11 |  |  |  |  |  | 374 | 409 | 455 | 495 | 528 | 589 | 817 | 860 | 887 | 915 | 730 |
| x12 |  |  |  |  |  | 141 | 136 | 161 | 168 | 193 | 199 | 224 | 260 | 266 | 242 | 226 |
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
| 990    | 3,845,115 | 19             | 35      |
| 990-EZ | 2,135,878 | 17             | 37      |

### Most common values

| Value                   | Filings | Share |
|-------------------------|---------|-------|
| `2335 NORTH BANK DRIVE` | 2,664   | 10.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x12 | THE SKOPELOS FOUNDATION FOR THE ARTS | PO BOX 56 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349207729_public.xml) |
| 2024 | 990EZ | x10 | Science & Technology Education Project | 5809 AUTUMN GATE DR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2024 | 990 | x11 | OFRENDA INC | FINCA LA GRUTA 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503159349306520_public.xml) |
| 2024 | 990 | x9 | OWL CREEK COUNTRY CLUB | 12400 N OSAGE RD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2013 | 990EZ | x8 | FORMANDO VIDAS INC | Av Cll 80 No 28-52 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402279349202405_public.xml) |
| 2013 | 990EZ | x6 | Awesome Cooper Band Boosters | 3639 Sayles | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423079349200717_public.xml) |
| 2013 | 990 | x7 | SULLIVAN COUNTY BOCES | 6 WIERK AVENUE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433159349300713_public.xml) |
| 2013 | 990 | x5 | NORTH BRUNSWICK BASEBALL ASSOCIATION INC | POBOX 7805 NORTH BRUNSWICK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402549349300330_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_06_DISCLOSURE_BOOK_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
