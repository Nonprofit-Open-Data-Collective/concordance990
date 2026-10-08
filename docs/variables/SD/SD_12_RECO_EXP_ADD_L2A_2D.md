# SD_12_RECO_EXP_ADD_L2A_2D

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_12_RECO_EXP_ADD_L2A_2D

Lines 2a through 2d

- Description: Total amounts; add lines 2a through 2d

- Table:

  [`SD-P12-T00-RECONCILIATION-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p12-t00-reconciliation-expenses)
  (one)

- Part: Part XII - Reconciliation of Expenses per Audited Financial
  Statements With Expenses per Return

- Location:

  `SCHED-D-PART-12-LINE-02E`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

969k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 4.6x (IRS990ScheduleD/ExpensesNotReportedAmt, 990, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.9x |
| ⓘ info | Sign convention | 1.7% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/ExpensesNotRptdF990` | SZ | 2009–2012 | 166,187 | 31% |  |
| x2 | `IRS990ScheduleD/ExpensesNotReportedAmt` | SZ | 2013–2024 | 802,995 | 18.3% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartXIII/TotalAmountsLine2aTo2d` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 17k | 42k | 52k | 56k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 59k | 63k | 65k | 66k | 70k | 69k | 69k | 73k | 73k | 73k | 72k | 51k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 51 | 34 | 32 | 31 | 30 | 29 | 28 | 27 | 27 | 26 | 24 | 23 | 22 | 21 | 20 | 18 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99        |
|--------|---------|-----------|--------|------------|-----|--------|--------|------------|
| 990    | 969,182 | 100.0%    | 44.4%  | 1.7%       | 0   | 5,138  | 97,581 | 10,726,710 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | 32435 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 55778824 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_12_RECO_EXP_ADD_L2A_2D, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
