# SD_12_RECO_EXP_SUBTOT_L1_M_L2E

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_12_RECO_EXP_SUBTOT_L1_M_L2E

Line 1 minus line 2e

- Description: Part XIII line 1 minus Part XIII line 2e

- Table:

  [`SD-P12-T00-RECONCILIATION-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p12-t00-reconciliation-expenses)
  (one)

- Part: Part XII - Reconciliation of Expenses per Audited Financial
  Statements With Expenses per Return

- Location:

  `SCHED-D-PART-12-LINE-03`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.4M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.0x (IRS990ScheduleD/ExpensesSubtotal, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/ExpensesSubtotal` | SZ | 2009–2012 | 231,316 | 43.5% |  |
| x2 | `IRS990ScheduleD/ExpensesSubtotalAmt` | SZ | 2013–2024 | 1,154,486 | 26.3% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartXIII/Line1MinusLine2e` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 22k | 58k | 73k | 78k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 84k | 89k | 93k | 94k | 99k | 99k | 100k | 106k | 107k | 106k | 105k | 73k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 65 | 48 | 46 | 43 | 42 | 41 | 40 | 39 | 38 | 36 | 35 | 33 | 32 | 30 | 30 | 26 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 1,385,801 | 100.0% | 0.8% | 0.1% | 556,053 | 1,495,832 | 5,539,031 | 164,948,656 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | 61348346 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | 595806 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_12_RECO_EXP_SUBTOT_L1_M_L2E, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
