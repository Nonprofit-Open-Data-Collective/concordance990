# F9_06_DISCLOSURE_BOOK_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_06_DISCLOSURE_BOOK_ADDR_L2

Person possessing the organization's books and records street address
line 2

- Description: Person who possesses the organization's books and
  records: foreign address, address line 2

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

132k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 3% of values are numeric |
| ⓘ info | No sign of truncation | IRS990EZ/BooksInCareOfDetail/USAddress/AddressLine2: longest value is exactly 35 characters; IRS990EZ/BooksInCareOfDetail/USAddress/AddressLine2Txt: longest value is exactly 35 characters; IRS990EZ/TheBooksAreInCareOf/AddressUS/AddressLine2: longest value is exactly 35 characters; IRS990/BooksInCareOfDetail/ForeignAddress/AddressLine2Txt: longest value is exactly 35 characters; IRS990/BooksInCareOfDetail/USAddress/AddressLine2: longest value is exactly 35 characters; IRS990/BooksInCareOfDetail/USAddress/AddressLine2Txt: longest value is exactly 35 characters; IRS990/TheBooksAreInCareOf/AddressUS/AddressLine2: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TheBooksAreInCareOf/AddressUS/AddressLine2` | PC | 2009–2012 | 10,363 | 2.23% |  |
| x2 | `IRS990EZ/TheBooksAreInCareOf/AddressUS/AddressLine2` | EZ | 2009–2012 | 7,489 | 3.02% |  |
| x3 | `IRS990/TheBooksAreInCareOf/AddressForeign/AddressLine2` | PC | 2009–2012 | 76 | 0.0145% |  |
| x4 | `IRS990EZ/TheBooksAreInCareOf/AddressForeign/AddressLine2` | EZ | 2009–2012 | 55 | 0.0203% |  |
| x5 | `IRS990/BooksInCareOfDetail/USAddress/AddressLine2` | PC | 2013–2013 | 4,464 | 2.24% |  |
| x6 | `IRS990EZ/BooksInCareOfDetail/USAddress/AddressLine2` | EZ | 2013–2013 | 3,006 | 2.88% |  |
| x7 | `IRS990/BooksInCareOfDetail/ForeignAddress/AddressLine2` | PC | 2013–2013 | 28 | 0.0141% |  |
| x8 | `IRS990EZ/BooksInCareOfDetail/ForeignAddress/AddressLine2` | EZ | 2013–2013 | 15 | 0.0144% |  |
| x9 | `IRS990/BooksInCareOfDetail/USAddress/AddressLine2Txt` | PC | 2014–2024 | 61,785 | 2.08% |  |
| x10 | `IRS990EZ/BooksInCareOfDetail/USAddress/AddressLine2Txt` | EZ | 2014–2024 | 43,918 | 2.83% |  |
| x11 | `IRS990/BooksInCareOfDetail/ForeignAddress/AddressLine2Txt` | PC | 2014–2024 | 569 | 0.0267% |  |
| x12 | `IRS990EZ/BooksInCareOfDetail/ForeignAddress/AddressLine2Txt` | EZ | 2014–2024 | 253 | 0.0168% |  |
| x13 | `IRS990/Form990PartVI/TheBooksAreInCareOf/AddressForeign/AddressLine2` | PC | not observed | 0 |  |  |
| x14 | `IRS990/Form990PartVI/TheBooksAreInCareOf/AddressUS/AddressLine2` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 459 | 2.4k | 3.5k | 4.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 363 | 1.8k | 2.5k | 2.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 6 | 20 | 24 | 26 |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 | 1 | 17 | 18 | 19 |  |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  | 4.5k |  |  |  |  |  |  |  |  |  |  |  |
| x6 |  |  |  |  | 3.0k |  |  |  |  |  |  |  |  |  |  |  |
| x7 |  |  |  |  | 28 |  |  |  |  |  |  |  |  |  |  |  |
| x8 |  |  |  |  | 15 |  |  |  |  |  |  |  |  |  |  |  |
| x9 |  |  |  |  |  | 4.8k | 5.0k | 5.0k | 5.1k | 5.0k | 5.1k | 6.0k | 6.4k | 6.8k | 6.9k | 5.8k |
| x10 |  |  |  |  |  | 3.1k | 3.1k | 3.1k | 3.0k | 3.1k | 3.3k | 3.8k | 5.2k | 5.5k | 5.7k | 5.1k |
| x11 |  |  |  |  |  | 22 | 22 | 21 | 34 | 31 | 37 | 70 | 84 | 91 | 83 | 74 |
| x12 |  |  |  |  |  | 13 | 15 | 21 | 21 | 21 | 16 | 25 | 25 | 32 | 34 | 30 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ | 2 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 77,285  | 13             | 35      |
| 990-EZ | 54,736  | 12             | 35      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `SUITE 200` | 1,395   | 16.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x12 | ATPI INCORPORATED | Apartment 27 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202500979349200525_public.xml) |
| 2024 | 990EZ | x10 | LASCO INC | 237 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533229349200113_public.xml) |
| 2024 | 990 | x11 | FRIENDS OF THE UNIVERSITY OF WATERLOO F… | Finance | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531339349306418_public.xml) |
| 2024 | 990 | x9 | MT PLEASANT AREA CHAMBER OF | SUITE 180 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349312033_public.xml) |
| 2013 | 990EZ | x8 | ISLAND DOG INCORPORATED | SHIRLEY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401289349201350_public.xml) |
| 2013 | 990EZ | x6 | The Coterie Theater Corporation | 5A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441359349204509_public.xml) |
| 2013 | 990 | x7 | AMERICAN POSTAL WORKERS UNION | 1426 SAN RAFAEL ST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411399349300586_public.xml) |
| 2013 | 990 | x5 | THE BUFFALO FOOD SHELF COUNCIL | 301 12TH AVE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441359349306659_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_06_DISCLOSURE_BOOK_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
