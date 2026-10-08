# PF_07_BOOK_LOCATION_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_BOOK_LOCATION_ADDR_ZIP

Postal code

- Description: Location Of Books Foreign Address - Postal code

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
| ✓ pass | Values have the ZIP format | 99.9% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 17 filings use a placeholder such as 000000000 |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksUSAddress/ZIPCode` | PF | 2013–2013 | 45,652 | 99.5% |  |
| x2 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksForeignAddress/PostalCode` | PF | 2013–2013 | 36 | 0.0785% |  |
| x3 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksUSAddress/ZIPCd` | PF | 2014–2024 | 996,913 | 99.2% |  |
| x4 | `IRS990PF/StatementsRegardingActyGrp/LocationOfBooksForeignAddress/ForeignPostalCd` | PF | 2014–2024 | 1,258 | 0.153% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 46k |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 36 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 53k | 58k | 63k | 68k | 75k | 87k | 114k | 119k | 122k | 124k | 114k |
| x4 |  |  |  |  |  | 40 | 43 | 58 | 54 | 64 | 77 | 163 | 190 | 197 | 196 | 176 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  |  |  |  | 99 | 100 | 99 | 100 | 100 | 100 | 100 | 99 | 99 | 99 | 99 | 99 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 873,508 | 83.7% |
| `999999999` | 169,360 | 16.2% |
| `A9A 9A9`   | 263     | 0.0%  |
| `A9A9A9`    | 135     | 0.0%  |
| `AA9 9AA`   | 93      | 0.0%  |
| `AA9A 9AA`  | 54      | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x4 | FIGO CHARITABLE FOUNDATION | SE18ST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543179349101519_public.xml) |
| 2024 | 990PF | x3 | The Brad & Jill Jackson Family Foundati… | 198091377 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502969349100900_public.xml) |
| 2013 | 990PF | x2 | DELTA ENVIRONMENTAL&EDUCATIONAL FND | 11491 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433099349100603_public.xml) |
| 2013 | 990PF | x1 | Tom & Helen Tonkin Foundation | 82602 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433439349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_BOOK_LOCATION_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
