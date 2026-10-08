# SR_05_TRANSAC_METHOD_DETERMIN

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_05_TRANSAC_METHOD_DETERMIN

Method of determining amount involved

- Description: Method of determining amount involved

- Table:

  [`SR-P05-T01-TRANSACTIONS-RLTD-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p05-t01-transactions-rltd-orgs)
  (many)

- Part: Part V - Transactions With Related Organizations

- Location:

  `SCHED-R-PART-05-LINE-02-COL-D`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

401k

filings with a value

2010–2024

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
| x1 | `IRS990ScheduleR/TransactionsRelatedOrgsTable/MethodOfAmtDetermination` | SZ | 2010–2012 | 52,524 | 11.8% | 62.0% |
| x2 | `IRS990ScheduleR/TransactionsRelatedOrgGrp/MethodOfAmountDeterminationTxt` | SZ | 2013–2024 | 348,548 | 8.15% | 58.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 13k | 19k | 21k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 23k | 25k | 27k | 28k | 30k | 30k | 31k | 33k | 33k | 34k | 33k | 23k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 10 | 12 | 12 | 12 | 12 | 11 | 11 | 11 | 11 | 11 | 10 | 10 | 10 | 9 | 8 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 401,072 | 11             | 998     |

### Most common values

| Value               | Filings | Share |
|---------------------|---------|-------|
| `FMV`               | 71,203  | 32.0% |
| `CASH`              | 54,847  | 24.6% |
| `COST`              | 33,999  | 15.3% |
| `FAIR MARKET VALUE` | 18,027  | 8.1%  |
| `ACTUAL`            | 9,067   | 4.1%  |
| `Cash`              | 8,832   | 4.0%  |
| `CASH VALUE`        | 7,044   | 3.2%  |
| `ACTUAL COST`       | 6,838   | 3.1%  |
| `CASH PAID`         | 5,822   | 2.6%  |
| `BOOK VALUE`        | 3,277   | 1.5%  |
| `Cost`              | 3,206   | 1.4%  |
| `cash`              | 468     | 0.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | Estimate | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | ARAB AMERICAN INSTITUTE FOUNDATION | cost | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312879349300866_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_05_TRANSAC_METHOD_DETERMIN, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
