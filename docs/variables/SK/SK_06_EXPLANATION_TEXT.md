# SK_06_EXPLANATION_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_06_EXPLANATION_TEXT

Additional explanations

- Description: Form990 Schedule KPart V - Explanation

- Table:

  [`SK-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-K-PART-06`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

38k

filings with a value

2010–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleK/Form990ScheduleKPartV/Explanation: longest value is exactly 9000 characters; IRS990ScheduleK/SupplementalInformationDetail/ExplanationTxt: longest value is exactly 9000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartV/Explanation` | SZ | 2010–2010 | 1,177 | 0.957% | 32.6% |
| x2 | `IRS990ScheduleK/Form990ScheduleKPartVI/Explanation` | SZ | 2011–2012 | 3,872 | 1.38% | 39.0% |
| x3 | `IRS990ScheduleK/SupplementalInformationDetail/ExplanationTxt` | SZ | 2013–2024 | 32,962 | 0.534% | 46.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  | 1.4k | 2.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 2.6k | 2.7k | 2.7k | 2.7k | 2.9k | 2.7k | 3.1k | 3.1k | 3.0k | 3.0k | 2.9k | 1.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 38,011  | 306            | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `THE TOTAL PROCEEDS DO NOT AGREE TO THE ISSUE PRICE IN PART I, COLUMN (E) DUE TO INVESTMEN…` | 269 | 14.4% |
| `AS PROVIDED IN TREASURY REGULATION SECTION 1.141-4(C)(2)(I)(B), THE AMOUNT OF PRIVATE PAY…` | 253 | 13.6% |
| `Issuer name: ILLINOIS FINANCE AUTHORITY The calculation for computing no rebate due was p…` | 61 | 3.3% |
| `Issuer name: Illinois Finance Authority The calculation for computing no rebate due was p…` | 56 | 3.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | LIVE OAK A LEARNING CENTER FOR CHILDREN | BEGINNING OF 2015-16 IT WAS THE ORGANIZATION'S INTERPRETATION AT THE TIME, THAT… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640729349301709_public.xml) |
| 2012 | 990 | x2 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | SCHEDULE K, PART I, LINE A, COLUMN F: DESCRIPTION OF PURPOSE: (1) PAY PORTION O… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |
| 2010 | 990 | x1 | VINCENTIAN COLLABORATIVE SYSTEM | THE PROCEEDS FROM THE SALE OF THE 2008 BONDS, TOGETHER WITH OTHER FUNDS, WILL B… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201201359349302550_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_06_EXPLANATION_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
