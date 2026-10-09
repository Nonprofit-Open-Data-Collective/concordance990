# PF_07_BOOK_LOCATION_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_BOOK_LOCATION_ADDR_L2

Location of books - address line 2

- Description: Location Of Books Foreign Address - AddressLine2

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

22k

filings with a value

2013–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 11% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/StatementsRegardingActyGrp/LocationOfBooksUSAddress/AddressLine2Txt: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksUSAddress/AddressLine2` | PF | 2013–2013 | 1,146 | 2.5% |  |
| x2 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksForeignAddress/AddressLine2` | PF | 2013–2013 | 4 | 0.00872% |  |
| x3 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksUSAddress/AddressLine2Txt` | PF | 2014–2024 | 20,833 | 2.18% |  |
| x4 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksForeignAddress/AddressLine2Txt` | PF | 2014–2024 | 158 | 0.0148% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 1.1k |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 1.3k | 1.4k | 1.4k | 1.4k | 1.4k | 1.7k | 2.2k | 2.3k | 2.5k | 2.6k | 2.5k |
| x4 |  |  |  |  |  | 5 | 7 | 7 | 9 | 9 | 12 | 21 | 24 | 29 | 18 | 17 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  |  |  |  | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 22,141  | 11             | 35      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| `FLOOR` | 331     | 16.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x4 | GARCIA FAMILY FOUNDATION (US) | LANE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349100215_public.xml) |
| 2024 | 990PF | x3 | PAUL A SAFFRIN FOUNDATION | STE 100 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523159349102232_public.xml) |
| 2013 | 990PF | x2 | CHAZARA FOUNDATION INC | ROAD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403189349101840_public.xml) |
| 2013 | 990PF | x1 | MARK AND GRETA WALKER FOUNDATION | 12685 HICKORY ROAD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411299349100111_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_BOOK_LOCATION_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
