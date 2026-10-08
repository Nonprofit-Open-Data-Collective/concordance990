# SA_03_TOT_INCOME_GRO_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_TOT_INCOME_GRO_TOT

Gross investment income during the current tax year and the four years
prior

- Description: Gross Investment Income - Total

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-B-LINE-10A-COL-F`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.4M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.9x (IRS990ScheduleA/GrossInvestmentIncome509/Total, 990, TY2010) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 10.0x (990EZ: IRS990ScheduleA/GrossInvestmentIncome509/Total vs IRS990ScheduleA/GrossInvestmentIncome509Grp/TotalAmt) |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GrossInvestmentIncome509/Total` | SZ | 2009–2012 | 184,948 | 24.6% |  |
| x2 | `IRS990ScheduleA/GrossInvestmentIncome509Grp/TotalAmt` | SZ | 2013–2024 | 1,222,114 | 23.7% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/GrossInvestmentIncome/Total` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 12k | 46k | 59k | 67k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 74k | 81k | 86k | 89k | 94k | 101k | 101k | 110k | 121k | 127k | 130k | 108k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 21 | 23 | 23 | 23 | 23 | 23 | 23 | 22 | 22 | 22 | 22 | 21 | 21 | 21 | 22 | 22 |
| 990-EZ | 30 | 28 | 28 | 28 | 27 | 27 | 26 | 26 | 26 | 27 | 26 | 25 | 25 | 25 | 26 | 26 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25  | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|------|--------|--------|-----------|
| 990    | 848,979 | 100.0%    | 10.7%  | 0.2%       | 347  | 5,784  | 66,819 | 5,592,157 |
| 990-EZ | 558,082 | 100.0%    | 34.4%  | 0.0%       | 0.50 | 87.50  | 882    | 59,885    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | YOUNG MEN'S CHRISTIAN ASSOCIATION | 232932 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2012 | 990EZ | x1 | PINEBROOK OF CHARLESTON INC | 53 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349201580_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_TOT_INCOME_GRO_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
