# PF_07_BOOK_IN_CARE_OF_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_BOOK_IN_CARE_OF_NAME_PERS

Person Name

- Description: Books In Care Of - Person Name

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

2 / 2

xpaths observed / mapped

613k

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
| ⓘ info | No sign of truncation | IRS990PF/StatementsRegardingActivities/BooksInCareOfPersonName: longest value is exactly 35 characters; IRS990PF/StatementsRegardingActyGrp/IndividualWithBooksNm: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/StatementsRegardingActivities/BooksInCareOfPersonName` | PF | 2009–2012 | 56,115 | 53.8% |  |
| x2 | `IRS990PF/StatementsRegardingActyGrp/IndividualWithBooksNm` | PF | 2013–2024 | 556,506 | 54.1% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 14k | 19k | 21k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 25k | 28k | 31k | 33k | 36k | 39k | 45k | 61k | 63k | 66k | 68k | 62k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 61 | 57 | 54 | 54 | 53 | 53 | 53 | 52 | 53 | 51 | 51 | 53 | 53 | 54 | 54 | 54 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 612,621 | 16             | 35      |

### Most common values

| Value                    | Filings | Share |
|--------------------------|---------|-------|
| `THE FOUNDATION`         | 5,226   | 36.1% |
| `THE ORGANIZATION`       | 1,767   | 12.2% |
| `TAXPAYER`               | 1,570   | 10.9% |
| `JPMORGAN CHASE BANK NA` | 1,258   | 8.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | TRUSS MANUFACTURERES ASSOC OF TEXAS | DANIEL GARCIA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543159349102514_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | CHARLES B CAMPBELL III | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_BOOK_IN_CARE_OF_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
