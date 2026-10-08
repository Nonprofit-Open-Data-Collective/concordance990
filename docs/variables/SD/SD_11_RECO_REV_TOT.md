# SD_11_RECO_REV_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_11_RECO_REV_TOT

Total revenue

- Description: Total revenue (Form 990; Part 1; Line 12). Add lines 3
  and 4c

- Table:

  [`SD-P11-T00-RECONCILIATION-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p11-t00-reconciliation-revenue)
  (one)

- Part: Part XI - Reconciliation of Revenue per Audited Financial
  Statements With Revenue per Return

- Location:

  `SCHED-D-PART-11-LINE-05`

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.0x (IRS990ScheduleD/TotalRevenuePerForm990, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/TotalRevenuePerForm990` | SZ | 2009–2012 | 231,627 | 43.5% |  |
| x2 | `IRS990ScheduleD/TotalRevenuePerForm990Amt` | SZ | 2013–2024 | 1,155,413 | 26.3% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartXII/TotalRevenuePerForm990` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 22k | 59k | 73k | 78k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 84k | 89k | 93k | 94k | 100k | 99k | 100k | 106k | 107k | 106k | 105k | 73k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 65 | 48 | 46 | 44 | 42 | 41 | 40 | 39 | 38 | 36 | 35 | 33 | 32 | 30 | 30 | 26 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 1,387,039 | 100.0% | 0.5% | 0.2% | 617,070 | 1,688,138 | 6,014,329 | 187,849,536 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 4707516 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 902653 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_11_RECO_REV_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
