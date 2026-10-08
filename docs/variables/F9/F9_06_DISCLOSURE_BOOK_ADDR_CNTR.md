# F9_06_DISCLOSURE_BOOK_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_06_DISCLOSURE_BOOK_ADDR_CNTR

Person possessing the organization's books and records country

- Description: Person who possesses the organization's books and
  records: foreign address, country

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

6 / 7

xpaths observed / mapped

11k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 96 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TheBooksAreInCareOf/AddressForeign/Country` | PC | 2009–2012 | 817 | 0.163% |  |
| x2 | `IRS990EZ/TheBooksAreInCareOf/AddressForeign/Country` | EZ | 2009–2012 | 317 | 0.118% |  |
| x3 | `IRS990/BooksInCareOfDetail/ForeignAddress/Country` | PC | 2013–2013 | 342 | 0.172% |  |
| x4 | `IRS990EZ/BooksInCareOfDetail/ForeignAddress/Country` | EZ | 2013–2013 | 124 | 0.119% |  |
| x5 | `IRS990/BooksInCareOfDetail/ForeignAddress/CountryCd` | PC | 2014–2024 | 7,059 | 0.263% |  |
| x6 | `IRS990EZ/BooksInCareOfDetail/ForeignAddress/CountryCd` | EZ | 2014–2024 | 2,216 | 0.126% |  |
| x7 | `IRS990/Form990PartVI/TheBooksAreInCareOf/AddressForeign/Country` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 55 | 207 | 263 | 292 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 15 | 90 | 101 | 111 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 342 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 124 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 374 | 409 | 455 | 495 | 528 | 589 | 817 | 860 | 887 | 915 | 730 |
| x6 |  |  |  |  |  | 141 | 136 | 161 | 168 | 193 | 199 | 224 | 260 | 266 | 242 | 226 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 2,858   | 37.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x6 | THE SKOPELOS FOUNDATION FOR THE ARTS | GR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349207729_public.xml) |
| 2024 | 990 | x5 | Bishop's College School Foundation | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523189349308497_public.xml) |
| 2013 | 990EZ | x4 | NEW HOPE CHRISTIAN SCHOOL | AM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432879349200923_public.xml) |
| 2013 | 990 | x3 | SULLIVAN COUNTY BOCES | UV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433159349300713_public.xml) |
| 2012 | 990EZ | x2 | USS BREMERTON REUNION ORGANIZATION INC | AM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331629349200118_public.xml) |
| 2012 | 990 | x1 | THE NEAR EASTSOUTH ASIA COUNCIL | GR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410489349300901_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_06_DISCLOSURE_BOOK_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
