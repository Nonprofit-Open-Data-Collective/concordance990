# SD_04_ESCROW_BALANCE_BEG

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_04_ESCROW_BALANCE_BEG

Escrow or custodial arrangement beginning balance

- Description: Beginning balance

- Table:

  [`SD-P04-T00-ESCROW-CUSTODIAL-ARRANGEMENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p04-t00-escrow-custodial-arrangements)
  (one)

- Part: Part IV - Escrow and Custodial Arrangements

- Location:

  `SCHED-D-PART-04-LINE-01C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

18k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.6x (IRS990ScheduleD/BeginningBalanceAmt, 990, TY2023) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.6% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/BeginningBalance` | SZ | 2009–2012 | 3,118 | 0.57% |  |
| x2 | `IRS990ScheduleD/BeginningBalanceAmt` | SZ | 2013–2024 | 14,451 | 0.295% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartIV/BeginningBalance` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 314 | 746 | 1.0k | 1.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.1k | 1.2k | 1.1k | 1.1k | 1.1k | 1.2k | 1.2k | 1.6k | 1.5k | 1.5k | 1.2k | 817 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99        |
|--------|---------|-----------|--------|------------|-------|--------|---------|------------|
| 990    | 17,569  | 100.0%    | 9.9%   | 0.6%       | 7,948 | 37,420 | 225,812 | 78,839,942 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Society of Biblical Literature | -544 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630269349300308_public.xml) |
| 2012 | 990 | x1 | MARYVILLE ACADEMY | 4623537 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421489349300952_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_04_ESCROW_BALANCE_BEG, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
