# PF_07_BOOK_PERS_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_BOOK_PERS_NAME_L1

BusinessNameLine1

- Description: Persons With Books Name - BusinessNameLine1

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

487k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/StatementsRegardingActyGrp/PersonsWithBooksName/BusinessNameLine1` | PF | 2013–2013 | 21,110 | 46% |  |
| x2 | `IRS990PF/StatementsRegardingActyGrp/PersonsWithBooksName/BusinessNameLine1Txt` | PF | 2014–2024 | 465,474 | 45.2% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  | 21k |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  |  | 25k | 27k | 30k | 32k | 36k | 43k | 54k | 55k | 56k | 56k | 52k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  |  |  |  | 46 | 47 | 46 | 47 | 46 | 48 | 48 | 47 | 46 | 46 | 45 | 45 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 486,584 | 17             | 73      |

### Most common values

| Value                             | Filings | Share |
|-----------------------------------|---------|-------|
| `BANK OF AMERICA NA`              | 25,115  | 18.6% |
| `THE FOUNDATION`                  | 19,907  | 14.8% |
| `PNC BANK NA`                     | 19,084  | 14.2% |
| `WELLS FARGO BANK NA`             | 18,720  | 13.9% |
| `Foundation Source`               | 14,920  | 11.1% |
| `JP MORGAN CHASE BANK NA`         | 7,820   | 5.8%  |
| `BNY MELLON NA`                   | 6,532   | 4.8%  |
| `US TRUST FIDUCIARY TAX SERVICES` | 6,343   | 4.7%  |
| `US BANK NA`                      | 5,568   | 4.1%  |
| `TRUIST BANK`                     | 2,554   | 1.9%  |
| `KEYBANK NA`                      | 1,640   | 1.2%  |
| `BANK OF AMERICA`                 | 1,366   | 1.0%  |
| `HUNTINGTON NATIONAL BANK`        | 1,121   | 0.8%  |
| `NBT BANK NA`                     | 748     | 0.6%  |
| `US BANK`                         | 734     | 0.5%  |
| `co Foundation Source`            | 619     | 0.5%  |
| `FIDUCIARY TAX SERVICES`          | 560     | 0.4%  |
| `The Foundation`                  | 454     | 0.3%  |
| `THE ORGANIZATION`                | 439     | 0.3%  |
| `PNC BANK`                        | 329     | 0.2%  |
| `FOUNDATION SOURCE`               | 140     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | The Brad & Jill Jackson Family Foundati… | Foundation Source | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502969349100900_public.xml) |
| 2013 | 990PF | x1 | SCHWARZMANN FAMILY FOUNDATION | TURNER LEINS & GOLD LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402679349100200_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_BOOK_PERS_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
