# F9_08_REV_OTH_EVNT_DIRECT_EXP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_EVNT_DIRECT_EXP

Direct expenses from fundraising events and gaming activities

- Description: Special events direct expenses
  (F990-PC-PART-08-LINE-08B-09B-COMBINED: F990-EZ-PART-01-LINE-06C)

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-08B-09B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ

2 / 2

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 10.7x (IRS990EZ/SpecialEventsDirectExpensesAmt, 990EZ, TY2021) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.1x (990EZ: IRS990EZ/SpecialEventsDirectExpenses vs IRS990EZ/SpecialEventsDirectExpensesAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/SpecialEventsDirectExpenses` | EZ | 2009–2012 | 146,273 | 58.7% |  |
| x2 | `IRS990EZ/SpecialEventsDirectExpensesAmt` | EZ | 2013–2024 | 1,028,083 | 54.6% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 8.9k | 35k | 47k | 55k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 61k | 67k | 71k | 73k | 78k | 82k | 82k | 85k | 108k | 111k | 113k | 98k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | 58 | 56 | 57 | 59 | 58 | 58 | 57 | 56 | 56 | 55 | 54 | 50 | 53 | 54 | 55 | 55 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75    | P99    |
|--------|-----------|-----------|--------|------------|-----|--------|--------|--------|
| 990-EZ | 1,174,351 | 100.0%    | 54.4%  | 0.0%       | 0   | 611    | 12,872 | 92,094 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | Science & Technology Education Project | 2250 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2012 | 990EZ | x1 | FARMINGVILLE ELEMENTARY SCHOOL PTA | 22242 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343099349200539_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_EVNT_DIRECT_EXP, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
