# PF_07_BOOK_IN_CARE_OF_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_07_BOOK_IN_CARE_OF_NAME_L1

Books in care of - business name line 1

- Description: Books In Care Of Business Name - BusinessNameLine1

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

1 / 1

xpaths observed / mapped

45k

filings with a value

2009–2012

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
| x1 | `IRS990PF/StatementsRegardingActivities/BooksInCareOfBusinessName/BusinessNameLine1` | PF | 2009–2012 | 45,268 | 45.6% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 901 | 11k | 15k | 18k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 38 | 42 | 45 | 46 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 45,268  | 16             | 62      |

### Most common values

| Value                    | Filings | Share |
|--------------------------|---------|-------|
| `PNC BANK NA`            | 3,206   | 30.8% |
| `THE FOUNDATION`         | 1,791   | 17.2% |
| `co Foundation Source`   | 1,285   | 12.3% |
| `US BANK NA`             | 974     | 9.3%  |
| `WELLS FARGO BANK NA`    | 692     | 6.6%  |
| `US BANK`                | 600     | 5.8%  |
| `PNC BANK`               | 484     | 4.6%  |
| `Foundation Source`      | 357     | 3.4%  |
| `JPMORGAN CHASE BANK NA` | 294     | 2.8%  |
| `ALLIANCE BANK NA`       | 248     | 2.4%  |
| `TD Bank NA`             | 138     | 1.3%  |
| `NBT BANK NA`            | 116     | 1.1%  |
| `TAXPAYER`               | 109     | 1.0%  |
| `M AND T BANK`           | 83      | 0.8%  |
| `The Foundation`         | 46      | 0.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | ALLIANCE BANK NA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_07_BOOK_IN_CARE_OF_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
