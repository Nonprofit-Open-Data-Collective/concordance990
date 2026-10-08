# SD_12_RECO_EXP_ADD_L4AB

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_12_RECO_EXP_ADD_L4AB

Investment expenses not included on Form 990 Part 8 line 7b plus other
amounts included on Form 990 Part 9 line 25 but not line 1

- Description: Total amounts; add lines 4a through 4b

- Table:

  [`SD-P12-T00-RECONCILIATION-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p12-t00-reconciliation-expenses)
  (one)

- Part: Part XII - Reconciliation of Expenses per Audited Financial
  Statements With Expenses per Return

- Location:

  `SCHED-D-PART-12-LINE-04C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

864k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 31.7x (IRS990ScheduleD/ExpensesNotRptdOnFinStmt, 990, TY2010) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.1x (990: IRS990ScheduleD/ExpensesNotRptdOnFinStmt vs IRS990ScheduleD/ExpensesNotRptFinclStmtAmt) |
| ⓘ info | Sign convention | 2.5% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/ExpensesNotRptdOnFinStmt` | SZ | 2009–2012 | 146,277 | 27% |  |
| x2 | `IRS990ScheduleD/ExpensesNotRptFinclStmtAmt` | SZ | 2013–2024 | 718,020 | 17% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartXIII/TotalAmountsLine4aTo4b` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 15k | 37k | 45k | 49k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 51k | 54k | 56k | 57k | 61k | 62k | 62k | 66k | 67k | 67k | 67k | 47k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 45 | 30 | 28 | 27 | 26 | 25 | 24 | 24 | 23 | 23 | 22 | 21 | 20 | 19 | 19 | 17 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99        |
|--------|---------|-----------|--------|------------|-----|--------|--------|------------|
| 990    | 864,297 | 100.0%    | 65.5%  | 2.5%       | 0   | 0      | 12,139 | 18,039,566 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_12_RECO_EXP_ADD_L4AB, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
