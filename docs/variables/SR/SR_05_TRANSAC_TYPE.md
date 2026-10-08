# SR_05_TRANSAC_TYPE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_05_TRANSAC_TYPE

Transaction type

- Description: Transaction type; enter up to five characters

- Table:

  [`SR-P05-T01-TRANSACTIONS-RLTD-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p05-t01-transactions-rltd-orgs)
  (many)

- Part: Part V - Transactions With Related Organizations

- Location:

  `SCHED-R-PART-05-LINE-02-COL-B`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

467k

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/TransactionsRelatedOrgsTable/TransactionType` | SZ | 2009–2012 | 78,256 | 14.4% | 63.7% |
| x2 | `IRS990ScheduleR/TransactionsRelatedOrgGrp/TransactionTypeTxt` | SZ | 2013–2024 | 388,279 | 8.89% | 59.4% |
| x3 | `IRS990ScheduleR/Form990ScheduleRPartV/TransactionsRelatedOrgsTable/TransactionType` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8.4k | 20k | 24k | 26k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 27k | 29k | 30k | 31k | 33k | 33k | 34k | 36k | 36k | 37k | 36k | 25k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 25 | 16 | 15 | 14 | 14 | 13 | 13 | 13 | 13 | 12 | 12 | 11 | 11 | 10 | 10 | 9 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 466,535 | 1              | 5       |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `B`   | 87,746  | 13.5% |
| `C`   | 87,174  | 13.5% |
| `O`   | 86,480  | 13.3% |
| `P`   | 79,400  | 12.3% |
| `Q`   | 61,135  | 9.4%  |
| `M`   | 52,233  | 8.1%  |
| `L`   | 47,050  | 7.3%  |
| `K`   | 45,917  | 7.1%  |
| `D`   | 45,176  | 7.0%  |
| `N`   | 33,494  | 5.2%  |
| `R`   | 16,812  | 2.6%  |
| `J`   | 5,452   | 0.8%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | INTERNATIONAL BROTHERHOOD OF ELECTRICAL | R | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503099349303295_public.xml) |
| 2012 | 990 | x1 | ARAB AMERICAN INSTITUTE FOUNDATION | n | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312879349300866_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_05_TRANSAC_TYPE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
