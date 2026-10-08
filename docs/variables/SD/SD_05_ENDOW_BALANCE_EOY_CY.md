# SD_05_ENDOW_BALANCE_EOY_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_05_ENDOW_BALANCE_EOY_CY

Endowment fund end of year balance - current year

- Description: End of year balance

- Table:

  [`SD-P05-T00-ENDOWMENT`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p05-t00-endowment)
  (one)

- Part: Part V - Endowment Funds

- Location:

  `SCHED-D-PART-05-LINE-01G-COL-A`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

438k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.7x (IRS990ScheduleD/CurrentYear/EndOfYearBalance, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/CurrentYear/EndOfYearBalance` | SZ | 2009–2012 | 68,957 | 13.1% |  |
| x2 | `IRS990ScheduleD/CYEndwmtFundGrp/EndYearBalanceAmt` | SZ | 2013–2024 | 368,792 | 8.4% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartV/CurrentYear/EndOfYearBalance` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 7.7k | 17k | 21k | 23k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 25k | 27k | 28k | 29k | 32k | 32k | 32k | 34k | 35k | 35k | 35k | 23k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 23 | 14 | 13 | 13 | 13 | 12 | 12 | 12 | 12 | 12 | 11 | 11 | 10 | 10 | 10 | 8 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 437,749 | 100.0% | 1.4% | 0.1% | 206,749 | 1,147,940 | 5,607,056 | 355,275,598 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | YOUNG MEN'S CHRISTIAN ASSOCIATION | 974605 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2012 | 990 | x1 | CIRCLEVILLE-PICKAWAY COMMUNITY | 17732 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343189349304264_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_05_ENDOW_BALANCE_EOY_CY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
