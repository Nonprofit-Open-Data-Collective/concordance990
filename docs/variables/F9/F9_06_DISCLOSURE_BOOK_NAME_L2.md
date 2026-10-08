# F9_06_DISCLOSURE_BOOK_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_06_DISCLOSURE_BOOK_NAME_L2

Business possessing the organization's books and records name line 2

- Description: Business who possesses the organization's books and
  records: name, line 2

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

39k

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
| ⓘ info | No sign of truncation | IRS990EZ/BooksInCareOfDetail/BusinessName/BusinessNameLine2Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TheBooksAreInCareOf/NameBusiness/BusinessNameLine2` | PC | 2009–2012 | 3,868 | 0.857% |  |
| x2 | `IRS990EZ/TheBooksAreInCareOf/NameBusiness/BusinessNameLine2` | EZ | 2009–2012 | 1,884 | 0.826% |  |
| x3 | `IRS990/BooksInCareOfDetail/BusinessName/BusinessNameLine2` | PC | 2013–2013 | 1,669 | 0.839% |  |
| x4 | `IRS990EZ/BooksInCareOfDetail/BusinessName/BusinessNameLine2` | EZ | 2013–2013 | 807 | 0.773% |  |
| x5 | `IRS990/BooksInCareOfDetail/BusinessName/BusinessNameLine2Txt` | PC | 2014–2024 | 21,392 | 0.597% |  |
| x6 | `IRS990EZ/BooksInCareOfDetail/BusinessName/BusinessNameLine2Txt` | EZ | 2014–2024 | 9,244 | 0.415% |  |
| x7 | `IRS990/Form990PartVI/TheBooksAreInCareOf/NameBusiness/BusinessNameLine2` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 141 | 876 | 1.3k | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 56 | 389 | 665 | 774 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.7k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 807 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.8k | 2.0k | 1.9k | 1.8k | 1.8k | 1.9k | 2.1k | 2.1k | 2.1k | 2.2k | 1.7k |
| x6 |  |  |  |  |  | 821 | 878 | 811 | 787 | 806 | 784 | 853 | 925 | 942 | 895 | 742 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 26,929  | 20             | 62      |
| 990-EZ | 11,935  | 19             | 75      |

### Most common values

| Value              | Filings | Share |
|--------------------|---------|-------|
| `THE ORGANIZATION` | 330     | 14.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x6 | CENTRAL MAUI LITTLE LEAGUE | INCORPORATED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610729349200921_public.xml) |
| 2024 | 990 | x5 | SONS OF ITALY IN AMERICA | PRINCE OF PIEDMONT LODGE475 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302669_public.xml) |
| 2013 | 990EZ | x4 | JOINT CHEMICAL GROUP INC | JOANIE DAYE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201511889349200416_public.xml) |
| 2013 | 990 | x3 | BEN WHEELER WATER SUPPLY | CORPORATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401349349302965_public.xml) |
| 2012 | 990EZ | x2 | ADAPTIVE SPORTS PARTNERS | OF THE NORTH COUNTRY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430979349200513_public.xml) |
| 2012 | 990 | x1 | SAGE SCHOOL INC | SAGE SCHOOL INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323049349300962_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_06_DISCLOSURE_BOOK_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
