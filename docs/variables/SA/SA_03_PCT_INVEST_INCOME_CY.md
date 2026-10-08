# SA_03_PCT_INVEST_INCOME_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_PCT_INVEST_INCOME_CY

Investment income percentage - current year

- Description: Investment income percentage (line 10c column (f) divided
  by line 13 column(f))

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-D-LINE-17`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

2.2M

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 73.3x (IRS990ScheduleA/InvestmentIncomeCYPct, 990, TY2019) |
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 13.3x (990: IRS990ScheduleA/InvestmentIncomePercentage vs IRS990ScheduleA/InvestmentIncomeCYPct) |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleA/InvestmentIncomeCYPct: fraction (0-1); IRS990ScheduleA/InvestmentIncomePercentage: fraction (0-1) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/InvestmentIncomePercentage` | SZ | 2009–2012 | 261,046 | 35.6% |  |
| x2 | `IRS990ScheduleA/InvestmentIncomeCYPct` | SZ | 2013–2024 | 1,909,954 | 37.6% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/InvestmentIncomePercentage` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 15k | 64k | 85k | 97k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 109k | 122k | 132k | 138k | 148k | 157k | 162k | 172k | 193k | 201k | 204k | 172k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 26 | 30 | 31 | 31 | 32 | 32 | 32 | 32 | 32 | 32 | 32 | 30 | 31 | 31 | 31 | 32 |
| 990-EZ | 40 | 42 | 43 | 44 | 44 | 45 | 45 | 45 | 46 | 46 | 46 | 44 | 44 | 45 | 45 | 46 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75  | P99  |
|--------|-----------|-----------|--------|------------|-----|--------|------|------|
| 990    | 1,215,483 | 100.0%    | 52.1%  | 0.0%       | 0   | 0      | 0.01 | 0.27 |
| 990-EZ | 955,503   | 100.0%    | 73.2%  | 0.0%       | 0   | 0      | 0.00 | 0.21 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | THE CREATIVES PROJECT INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2012 | 990EZ | x1 | PTA TEXAS CONGRESS 1446 MCCOY ELEMENTAR… | 0.00000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333189349204213_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_PCT_INVEST_INCOME_CY, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
