# F9_06_DISCLOSURE_BOOK_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_06_DISCLOSURE_BOOK_NAME_L1

Business possessing the organization's books and records name line 1

- Description: Business who possesses the organization's books and
  records: name, line 1

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

1.9M

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
| ⓘ info | No sign of truncation | IRS990EZ/BooksInCareOfDetail/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters; IRS990/BooksInCareOfDetail/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; IRS990/BooksInCareOfDetail/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TheBooksAreInCareOf/NameBusiness/BusinessNameLine1` | PC | 2009–2012 | 221,295 | 42.9% |  |
| x2 | `IRS990EZ/TheBooksAreInCareOf/NameBusiness/BusinessNameLine1` | EZ | 2009–2012 | 64,515 | 24% |  |
| x3 | `IRS990/BooksInCareOfDetail/BusinessName/BusinessNameLine1` | PC | 2013–2013 | 83,323 | 41.9% |  |
| x4 | `IRS990EZ/BooksInCareOfDetail/BusinessName/BusinessNameLine1` | EZ | 2013–2013 | 24,486 | 23.5% |  |
| x5 | `IRS990/BooksInCareOfDetail/BusinessName/BusinessNameLine1Txt` | PC | 2014–2024 | 1,209,083 | 35.9% |  |
| x6 | `IRS990EZ/BooksInCareOfDetail/BusinessName/BusinessNameLine1Txt` | EZ | 2014–2024 | 341,824 | 16% |  |
| x7 | `IRS990/Form990PartVI/TheBooksAreInCareOf/NameBusiness/BusinessNameLine1` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 17k | 56k | 71k | 77k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 5.1k | 16k | 20k | 23k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 83k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 24k |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 90k | 95k | 97k | 103k | 105k | 109k | 122k | 126k | 131k | 134k | 100k |
| x6 |  |  |  |  |  | 26k | 28k | 28k | 29k | 30k | 31k | 34k | 37k | 35k | 34k | 29k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 52 | 46 | 44 | 43 | 42 | 41 | 40 | 40 | 39 | 39 | 38 | 38 | 37 | 37 | 38 | 36 |
| 990-EZ | 33 | 26 | 25 | 24 | 23 | 23 | 22 | 22 | 21 | 20 | 20 | 20 | 18 | 17 | 17 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 1,513,701 | 17             | 75      |
| 990-EZ | 430,825   | 17             | 75      |

### Most common values

| Value                     | Filings | Share |
|---------------------------|---------|-------|
| `THE ORGANIZATION`        | 184,927 | 74.5% |
| `The Organization`        | 27,956  | 11.3% |
| `ORGANIZATION`            | 8,408   | 3.4%  |
| `TREASURER`               | 5,569   | 2.2%  |
| `THE CORPORATION`         | 3,779   | 1.5%  |
| `MANAGEMENT`              | 2,972   | 1.2%  |
| `CORPORATION`             | 2,819   | 1.1%  |
| `TAXPAYER`                | 2,014   | 0.8%  |
| `EXECUTIVE DIRECTOR`      | 1,849   | 0.7%  |
| `SARA OBRIEN`             | 1,138   | 0.5%  |
| `EASY OFFICE DBA JITASA`  | 1,093   | 0.4%  |
| `Indiana Farm Bureau Inc` | 979     | 0.4%  |
| `THE ASSOCIATION`         | 978     | 0.4%  |
| `JILL KOLB`               | 652     | 0.3%  |
| `JPMORGAN CHASE BANK NA`  | 598     | 0.2%  |
| `TEXAS FARM BUREAU`       | 579     | 0.2%  |
| `MARK R RICKETTS`         | 347     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x6 | KYLE GOLDBERG MEMORIAL FOUNDATION | K GOLDBERG | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511219349201801_public.xml) |
| 2024 | 990 | x5 | YOUNG MEN'S CHRISTIAN ASSOCIATION | DAVID HENDRICKS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2013 | 990EZ | x4 | INSTITUTE OF NATURAL HEALTH SCIENCE | SVOBODA MCDANIEL GROUP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349201917_public.xml) |
| 2013 | 990 | x3 | TEXAS LAW REVIEW ASSOCIATION | JAMES A HEMPHILL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201530159349300438_public.xml) |
| 2012 | 990EZ | x2 | Indiana Farm Bureau Ohio County Farm Bu… | Indiana Farm Bureau Inc | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349202769_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | Scott Finnegan | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_06_DISCLOSURE_BOOK_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
