# SA_03_TOT_ADD_L10AB_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_TOT_ADD_L10AB_TOT

Gross investment income and unrelated business taxable income during the
current tax year and the four years prior

- Description: Total Of Lines10a And10b - Total

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-B-LINE-10C-COL-F`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.2M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.7x (IRS990ScheduleA/InvestmentIncomeAndUBTI/Total, 990, TY2010) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 6.7x (990EZ: IRS990ScheduleA/InvestmentIncomeAndUBTI/Total vs IRS990ScheduleA/InvestmentIncomeAndUBTIGrp/TotalAmt) |
| ⓘ info | Sign convention | 0.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/InvestmentIncomeAndUBTI/Total` | SZ | 2009–2012 | 167,627 | 22.1% |  |
| x2 | `IRS990ScheduleA/InvestmentIncomeAndUBTIGrp/TotalAmt` | SZ | 2013–2024 | 1,048,894 | 20.2% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/TotalOfLines10aAnd10b/Total` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11k | 43k | 53k | 61k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 66k | 71k | 75k | 76k | 80k | 86k | 86k | 94k | 104k | 108k | 111k | 92k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 21 | 22 | 22 | 22 | 22 | 21 | 21 | 21 | 20 | 21 | 20 | 19 | 19 | 19 | 20 | 20 |
| 990-EZ | 28 | 24 | 23 | 23 | 22 | 21 | 20 | 20 | 19 | 20 | 19 | 19 | 19 | 20 | 20 | 21 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-------|--------|--------|-----------|
| 990    | 783,250 | 100.0%    | 2.8%   | 0.2%       | 737   | 8,290  | 80,641 | 5,549,281 |
| 990-EZ | 433,270 | 100.0%    | 15.1%  | 0.1%       | 34.50 | 226    | 1,527  | 68,249    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | YOUNG MEN'S CHRISTIAN ASSOCIATION | 232932 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2012 | 990EZ | x1 | QUAD CITY HEAT BASEBALL CLUB | 239 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323469349200217_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_TOT_ADD_L10AB_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
