# PF_07_BOOK_LOCATION_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_BOOK_LOCATION_ADDR_L1

AddressLine1

- Description: Location Of Books Foreign Address - AddressLine1

- Table:

  [`PF-P07-T00-ACTIVITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p07-t00-activities)
  (one)

- Part: Part VII-A - Statements Regarding Activities; Part VII-B -
  Activities for Which Form 4720 May Be Required (2023: Part VI-A, VI-B)

- Location:

  `F990-PF-PART-07-A-LINE-14`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

4 / 4

xpaths observed / mapped

1.0M

filings with a value

2013–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/StatementsRegardingActyGrp/LocationOfBooksForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990PF/StatementsRegardingActyGrp/LocationOfBooksUSAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/StatementsRegardingActyGrp/LocationOfBooksUSAddress/AddressLine1Txt: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksUSAddress/AddressLine1` | PF | 2013–2013 | 45,652 | 99.5% |  |
| x2 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksForeignAddress/AddressLine1` | PF | 2013–2013 | 44 | 0.0959% |  |
| x3 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksUSAddress/AddressLine1Txt` | PF | 2014–2024 | 996,913 | 99.2% |  |
| x4 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksForeignAddress/AddressLine1Txt` | PF | 2014–2024 | 1,512 | 0.178% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 46k |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 44 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 53k | 58k | 63k | 68k | 75k | 87k | 114k | 119k | 122k | 124k | 114k |
| x4 |  |  |  |  |  | 46 | 56 | 69 | 66 | 79 | 94 | 195 | 228 | 238 | 237 | 204 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  |  |  |  | 99 | 100 | 99 | 100 | 100 | 100 | 100 | 99 | 99 | 99 | 99 | 99 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990-PF | 1,044,121 | 20             | 35      |

### Most common values

| Value                           | Filings | Share |
|---------------------------------|---------|-------|
| `501 Silverside Road Suite 123` | 15,245  | 15.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x4 | FIGO CHARITABLE FOUNDATION | FIGO HOUSE WATERLOO CT 10 THEED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543179349101519_public.xml) |
| 2024 | 990PF | x3 | C A LUCAS TRUST FBO 1ST CONG | 605 N 8TH STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2013 | 990PF | x2 | SLINGSHOT DEVELOPMENT FUND | NANA PO BOX 1086 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401839349100705_public.xml) |
| 2013 | 990PF | x1 | SCHWARZMANN FAMILY FOUNDATION | 108 CENTER STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402679349100200_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_BOOK_LOCATION_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
