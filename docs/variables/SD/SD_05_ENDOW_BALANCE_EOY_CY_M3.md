# SD_05_ENDOW_BALANCE_EOY_CY_M3

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_05_ENDOW_BALANCE_EOY_CY_M3

Endowment fund end of year balance - three years back

- Description: End of year balance

- Table:

  [`SD-P05-T00-ENDOWMENT`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p05-t00-endowment)
  (one)

- Part: Part V - Endowment Funds

- Location:

  `SCHED-D-PART-05-LINE-01G-COL-D`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

388k

filings with a value

2011–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.5x (IRS990ScheduleD/CurrentYearMinus3Years/EndOfYearBalance, 990, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/CurrentYearMinus3Years/EndOfYearBalance` | SZ | 2011–2012 | 35,508 | 11.8% |  |
| x2 | `IRS990ScheduleD/CYMinus3YrEndwmtFundGrp/EndYearBalanceAmt` | SZ | 2013–2024 | 352,365 | 8.09% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  | 14k | 21k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 23k | 25k | 27k | 28k | 30k | 30k | 31k | 33k | 34k | 34k | 34k | 22k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  | 9 | 12 | 12 | 12 | 11 | 11 | 12 | 11 | 11 | 10 | 10 | 10 | 10 | 8 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 387,873 | 100.0% | 1.7% | 0.0% | 176,254 | 1,037,257 | 5,061,805 | 292,279,978 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 3445610 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | BACH SOCIETY OF SAINT LOUIS | 176058 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410379349301556_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_05_ENDOW_BALANCE_EOY_CY_M3, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
