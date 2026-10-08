# SA_03_TOT_INCOME_GRO_CY_M4

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_TOT_INCOME_GRO_CY_M4

Gross investment income during the current tax year minus four years

- Description: Current tax year minus four years

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-B-LINE-10A-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

979k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.9x (IRS990ScheduleA/GrossInvestmentIncome509/CurrentTaxYearMinus4Years, 990, TY2010) |
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 12.6x (990EZ: IRS990ScheduleA/GrossInvestmentIncome509/CurrentTaxYearMinus4Years vs IRS990ScheduleA/GrossInvestmentIncome509Grp/CurrentTaxYearMinus4YearsAmt) |
| ⓘ info | Sign convention | 0.4% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GrossInvestmentIncome509/CurrentTaxYearMinus4Years` | SZ | 2009–2012 | 137,427 | 18.3% |  |
| x2 | `IRS990ScheduleA/GrossInvestmentIncome509Grp/CurrentTaxYearMinus4YearsAmt` | SZ | 2013–2024 | 841,714 | 15.2% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/GrossInvestmentIncome/CurrentTaxYearMinus4Years` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9.4k | 34k | 44k | 50k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 55k | 59k | 61k | 62k | 65k | 68k | 69k | 77k | 84k | 86k | 87k | 69k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 18 | 19 | 19 | 19 | 19 | 18 | 18 | 18 | 17 | 17 | 17 | 16 | 16 | 16 | 16 | 16 |
| 990-EZ | 21 | 17 | 17 | 17 | 17 | 16 | 15 | 15 | 14 | 14 | 14 | 14 | 14 | 15 | 15 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 659,807 | 100.0%    | 2.9%   | 0.5%       | 157 | 1,983  | 19,482 | 1,201,200 |
| 990-EZ | 319,333 | 100.0%    | 16.1%  | 0.2%       | 12  | 54     | 374    | 17,062    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | SAINT CLAIR HOUSE INC | 8 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2012 | 990EZ | x1 | QUAD CITY HEAT BASEBALL CLUB | 95 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323469349200217_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_TOT_INCOME_GRO_CY_M4, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
