# SR_05_TRANSAC_AMT_INVOLVED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_05_TRANSAC_AMT_INVOLVED

Amount involved

- Description: Amount involved (\$)

- Table:

  [`SR-P05-T01-TRANSACTIONS-RLTD-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p05-t01-transactions-rltd-orgs)
  (many)

- Part: Part V - Transactions With Related Organizations

- Location:

  `SCHED-R-PART-05-LINE-02-COL-C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

444k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990ScheduleR/TransactionsRelatedOrgsTable/AmountInvolved, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.3% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/TransactionsRelatedOrgsTable/AmountInvolved` | SZ | 2009–2012 | 75,528 | 13.8% | 63.0% |
| x2 | `IRS990ScheduleR/TransactionsRelatedOrgGrp/InvolvedAmt` | SZ | 2013–2024 | 368,555 | 8.4% | 58.6% |
| x3 | `IRS990ScheduleR/Form990ScheduleRPartV/TransactionsRelatedOrgsTable/AmountInvolved` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8.3k | 19k | 23k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 26k | 28k | 29k | 30k | 31k | 31k | 32k | 34k | 34k | 35k | 34k | 23k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 25 | 16 | 14 | 14 | 13 | 13 | 12 | 12 | 12 | 12 | 11 | 11 | 10 | 10 | 10 | 8 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75     | P99        |
|--------|---------|-----------|--------|------------|--------|---------|---------|------------|
| 990    | 444,083 | 100.0%    | 1.2%   | 0.3%       | 55,846 | 191,404 | 807,543 | 70,867,030 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | 100000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | ASSOCIATION OF VA SURGEONS CO SUE LENTZ | 650 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303189349308545_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_05_TRANSAC_AMT_INVOLVED, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
