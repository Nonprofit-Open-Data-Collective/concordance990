# SL_01_TRANSAC_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_01_TRANSAC_DESC

Description of transaction

- Description: Description of transaction

- Table:

  [`SL-P01-T01-EXCESS-BENEFIT-TRANSAC`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p01-t01-excess-benefit-transac)
  (many)

- Part: Part I - Excess Benefit Transactions

- Location:

  `SCHED-L-PART-01-LINE-01-COL-C`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.6k

filings with a value

2009–2024

tax years observed

1 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/DQPTable/DescriptionOfTransaction` | SZ | 2009–2012 | 593 | 0.0172% | 29.5% |
| x2 | `IRS990ScheduleL/DisqualifiedPersonExBnftTrGrp/TransactionDesc` | SZ | 2013–2024 | 1,040 | 0.0263% | 20.7% |
| x3 | `IRS990ScheduleL/Form990ScheduleLPartI/DQPTable/DescriptionOfTransaction` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 18 | 476 | 52 | 47 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 53 | 61 | 53 | 53 | 74 | 89 | 88 | 94 | 110 | 123 | 122 | 120 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,471   | 82             | 2,428   |
| 990-EZ | 162     | 55             | 699     |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `DIRECTOR` | 60      | 11.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | ANAHUAK YOUTH SPORTS ASSOCIATION | COVID 19 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202540699349301514_public.xml) |
| 2012 | 990 | x1 | LOGAN COMMUNITY RESOURCES INC | SEE PART V | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431259349301818_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_01_TRANSAC_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
