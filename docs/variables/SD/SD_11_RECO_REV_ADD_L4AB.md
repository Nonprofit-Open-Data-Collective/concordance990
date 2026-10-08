# SD_11_RECO_REV_ADD_L4AB

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_11_RECO_REV_ADD_L4AB

Investment expenses not included on Form 990 Part 8 line 7b plus other
amounts included on Form 990 Part 8 line 12 but not line 1

- Description: Total amounts; add lines 4a through 4b

- Table:

  [`SD-P11-T00-RECONCILIATION-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p11-t00-reconciliation-revenue)
  (one)

- Part: Part XI - Reconciliation of Revenue per Audited Financial
  Statements With Revenue per Return

- Location:

  `SCHED-D-PART-11-LINE-04C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

868k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 25.4x (IRS990ScheduleD/RevenueNotRptdOnFinStmt, 990, TY2010) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 5.3x (990: IRS990ScheduleD/RevenueNotRptdOnFinStmt vs IRS990ScheduleD/RevenueNotReportedFinclStmtAmt) |
| ⓘ info | Sign convention | 9.6% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/RevenueNotRptdOnFinStmt` | SZ | 2009–2012 | 146,897 | 27.1% |  |
| x2 | `IRS990ScheduleD/RevenueNotReportedFinclStmtAmt` | SZ | 2013–2024 | 721,310 | 17% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartXII/TotalAmountsLine4aTo4b` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 15k | 37k | 46k | 49k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 52k | 55k | 57k | 58k | 61k | 62k | 62k | 67k | 67k | 67k | 67k | 47k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 46 | 30 | 29 | 27 | 26 | 25 | 24 | 24 | 23 | 23 | 22 | 21 | 20 | 19 | 19 | 17 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99        |
|--------|---------|-----------|--------|------------|-----|--------|-------|------------|
| 990    | 868,207 | 100.0%    | 61.5%  | 9.6%       | 0   | 0      | 7,154 | 12,642,870 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 37977 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_11_RECO_REV_ADD_L4AB, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
