# SA_02_TOT_INCOME_GRO_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_TOT_INCOME_GRO_TOT

Gross investment income during the current tax year and the four years
prior

- Description: Gross Investment Income - Total

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02-SECTION-B-LINE-08-COL-F`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.6M

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 29.6x (IRS990ScheduleA/GrossInvestmentIncome170Grp/TotalAmt, 990EZ, TY2014) |
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 38.9x (990EZ: IRS990ScheduleA/GrossInvestmentIncome170/Total vs IRS990ScheduleA/GrossInvestmentIncome170Grp/TotalAmt) |
| ⓘ info | Sign convention | 0.2% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GrossInvestmentIncome170/Total` | SZ | 2009–2012 | 231,969 | 30.9% |  |
| x2 | `IRS990ScheduleA/GrossInvestmentIncome170Grp/TotalAmt` | SZ | 2013–2024 | 1,361,011 | 23.3% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartII/GrossInvestmentIncome/Total` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 16k | 58k | 74k | 85k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 93k | 102k | 108k | 112k | 118k | 108k | 106k | 117k | 127k | 130k | 134k | 106k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 35 | 33 | 33 | 33 | 33 | 33 | 33 | 33 | 33 | 30 | 29 | 28 | 28 | 28 | 28 | 28 |
| 990-EZ | 26 | 26 | 26 | 26 | 26 | 25 | 24 | 24 | 23 | 19 | 16 | 16 | 16 | 16 | 16 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75     | P99        |
|--------|-----------|-----------|--------|------------|-----|--------|---------|------------|
| 990    | 1,171,564 | 100.0%    | 13.4%  | 0.2%       | 602 | 12,053 | 128,390 | 12,955,806 |
| 990-EZ | 421,413   | 100.0%    | 46.2%  | 0.0%       | 0   | 22     | 1,432   | 90,769     |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | 42389 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x1 | CONCORD CHRISTIAN ACADEMY GIVING & GOING | 249 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332829349200713_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_TOT_INCOME_GRO_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
