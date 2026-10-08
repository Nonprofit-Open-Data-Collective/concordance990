# SA_03_TOT_ADD_L10AB_CY_M1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_03_TOT_ADD_L10AB_CY_M1

Gross investment income and unrelated business taxable income during the
current tax year minus one year

- Description: Current tax year minus one year

- Table:

  [`SA-P03-T00-SUPPORT_SCHEDULE_509`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p03-t00-support_schedule_509)
  (one)

- Part: Part III - Support Schedule for Organizations Described in
  Section 509(a)(2)

- Location:

  `SCHED-A-PART-03-SECTION-B-LINE-10C-COL-D`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.1M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.2x (IRS990ScheduleA/InvestmentIncomeAndUBTIGrp/CurrentTaxYearMinus1YearAmt, 990, TY2023) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.1x (990EZ: IRS990ScheduleA/InvestmentIncomeAndUBTI/CurrentTaxYearMinus1Year vs IRS990ScheduleA/InvestmentIncomeAndUBTIGrp/CurrentTaxYearMinus1YearAmt) |
| ⓘ info | Sign convention | 0.5% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/InvestmentIncomeAndUBTI/CurrentTaxYearMinus1Year` | SZ | 2009–2012 | 149,566 | 19.4% |  |
| x2 | `IRS990ScheduleA/InvestmentIncomeAndUBTIGrp/CurrentTaxYearMinus1YearAmt` | SZ | 2013–2024 | 910,889 | 18% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartIII/TotalOfLines10aAnd10b/CurrentTaxYearMinus1Year` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 10k | 38k | 48k | 53k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 57k | 61k | 64k | 65k | 69k | 73k | 74k | 82k | 91k | 95k | 98k | 82k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 20 | 20 | 20 | 20 | 19 | 19 | 19 | 18 | 18 | 18 | 18 | 17 | 17 | 17 | 17 | 18 |
| 990-EZ | 25 | 21 | 19 | 19 | 18 | 17 | 16 | 16 | 15 | 16 | 16 | 16 | 16 | 17 | 18 | 18 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 698,014 | 100.0%    | 3.5%   | 0.6%       | 131 | 1,598  | 18,224 | 1,321,799 |
| 990-EZ | 362,440 | 100.0%    | 19.7%  | 0.2%       | 8   | 43.50  | 303    | 16,851    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | YOUNG MEN'S CHRISTIAN ASSOCIATION | 27661 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2012 | 990EZ | x1 | PINEBROOK OF CHARLESTON INC | 5 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349201580_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_03_TOT_ADD_L10AB_CY_M1, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
