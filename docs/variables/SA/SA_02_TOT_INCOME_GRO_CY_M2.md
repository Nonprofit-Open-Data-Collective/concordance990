# SA_02_TOT_INCOME_GRO_CY_M2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_TOT_INCOME_GRO_CY_M2

Gross investment income during the current tax year minus two years

- Description: Current tax year minus two years

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02-SECTION-B-LINE-08-COL-C`

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.0x (IRS990ScheduleA/GrossInvestmentIncome170/CurrentTaxYearMinus2Years, 990, TY2010) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 4.3x (990EZ: IRS990ScheduleA/GrossInvestmentIncome170/CurrentTaxYearMinus2Years vs IRS990ScheduleA/GrossInvestmentIncome170Grp/CurrentTaxYearMinus2YearsAmt) |
| ⓘ info | Sign convention | 0.6% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/GrossInvestmentIncome170/CurrentTaxYearMinus2Years` | SZ | 2009–2012 | 165,011 | 21.4% |  |
| x2 | `IRS990ScheduleA/GrossInvestmentIncome170Grp/CurrentTaxYearMinus2YearsAmt` | SZ | 2013–2024 | 964,713 | 16.6% |  |
| x3 | `IRS990ScheduleA/Form990ScheduleAPartII/GrossInvestmentIncome/CurrentTaxYearMinus2Years` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13k | 41k | 53k | 59k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 63k | 68k | 71k | 72k | 76k | 77k | 81k | 89k | 96k | 98k | 98k | 76k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 30 | 26 | 26 | 26 | 25 | 25 | 25 | 24 | 24 | 24 | 24 | 23 | 23 | 23 | 23 | 22 |
| 990-EZ | 16 | 14 | 13 | 12 | 12 | 11 | 10 | 10 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 921,301 | 100.0%    | 1.8%   | 0.7%       | 278 | 3,961  | 38,075 | 3,024,198 |
| 990-EZ | 208,420 | 100.0%    | 14.4%  | 0.2%       | 13  | 96     | 756    | 28,209    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 199718 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | 73 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_TOT_INCOME_GRO_CY_M2, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
