# F9_06_DISCLOSURE_BOOK_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_06_DISCLOSURE_BOOK_NAME_PERS

Person possessing the organization's books and records name

- Description: Person who possesses the organization's books and
  records: name

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

4 / 5

xpaths observed / mapped

4.0M

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
| ⓘ info | No sign of truncation | IRS990EZ/BooksInCareOfDetail/PersonNm: longest value is exactly 35 characters; IRS990EZ/TheBooksAreInCareOf/NamePerson: longest value is exactly 35 characters; IRS990/BooksInCareOfDetail/PersonNm: longest value is exactly 35 characters; IRS990/TheBooksAreInCareOf/NamePerson: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TheBooksAreInCareOf/NamePerson` | PC | 2009–2012 | 274,233 | 57.1% |  |
| x2 | `IRS990EZ/TheBooksAreInCareOf/NamePerson` | EZ | 2009–2012 | 190,079 | 76% |  |
| x3 | `IRS990/BooksInCareOfDetail/PersonNm` | PC | 2013–2024 | 2,057,207 | 64.1% |  |
| x4 | `IRS990EZ/BooksInCareOfDetail/PersonNm` | EZ | 2013–2024 | 1,514,991 | 84% |  |
| x5 | `IRS990/Form990PartVI/TheBooksAreInCareOf/NamePerson` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 16k | 67k | 89k | 103k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 10k | 47k | 62k | 71k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 116k | 129k | 139k | 147k | 159k | 167k | 175k | 199k | 210k | 219k | 221k | 178k |
| x4 |  |  |  |  | 80k | 90k | 97k | 102k | 110k | 119k | 122k | 136k | 166k | 171k | 172k | 150k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 48 | 54 | 56 | 57 | 58 | 59 | 60 | 60 | 61 | 61 | 62 | 62 | 63 | 63 | 62 | 64 |
| 990-EZ | 67 | 74 | 75 | 76 | 77 | 77 | 78 | 78 | 79 | 80 | 80 | 80 | 82 | 83 | 83 | 84 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 2,331,414 | 15             | 35      |
| 990-EZ | 1,705,053 | 14             | 35      |

### Most common values

| Value                       | Filings | Share |
|-----------------------------|---------|-------|
| `THE ORGANIZATION`          | 39,545  | 39.8% |
| `TREASURER`                 | 12,232  | 12.3% |
| `The Organization`          | 11,037  | 11.1% |
| `ORGANIZATION`              | 10,897  | 11.0% |
| `TAXPAYER`                  | 6,174   | 6.2%  |
| `THE CORPORATION`           | 3,444   | 3.5%  |
| `Organization`              | 3,298   | 3.3%  |
| `Treasurer`                 | 3,071   | 3.1%  |
| `MANAGEMENT`                | 2,585   | 2.6%  |
| `CORPORATION`               | 2,574   | 2.6%  |
| `EXECUTIVE DIRECTOR`        | 1,564   | 1.6%  |
| `COUNTY SECRETARY`          | 1,527   | 1.5%  |
| `VOA ATTN ASSET MANAGEMENT` | 417     | 0.4%  |
| `AGRECORDS DEPT OF OFB`     | 327     | 0.3%  |
| `VP OF FINANCE`             | 255     | 0.3%  |
| `JUDITH LEMKE-KLINE`        | 113     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | FOUNDATION FOR HEALTH ENVIRONMENTS RESEA | DAVID YATES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349201597_public.xml) |
| 2024 | 990 | x3 | CHRISTIAN SHANE FONVILLE YOUTH | JENNIFER DAVIS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990EZ | x2 | PLACERVILLE ROTARY CLUB | TERRIE Y PROD'HON CPA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |
| 2012 | 990 | x1 | ROUNDTABLE ON SUSTAINABLE | PETER RYUS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349300428_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_06_DISCLOSURE_BOOK_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
