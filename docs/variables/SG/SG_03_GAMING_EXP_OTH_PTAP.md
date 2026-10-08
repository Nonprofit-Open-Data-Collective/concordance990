# SG_03_GAMING_EXP_OTH_PTAP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GAMING_EXP_OTH_PTAP

Other direct expenses from pull tabs/instant bingo/progressive bingo

- Description: Other direct expenses; pull tabs

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-05-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

57k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.3x (IRS990ScheduleG/GamingInformationGrp/OtherDirectExpensesPullTabsAmt, 990, TY2021) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/GamingInformation/OtherDirectExpensesPullTabs` | SZ | 2009–2012 | 6,203 | 0.894% |  |
| x2 | `IRS990ScheduleG/GamingInformationGrp/OtherDirectExpensesPullTabsAmt` | SZ | 2013–2024 | 50,730 | 1.03% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartIII/GamingInformation/OtherDirectExpensesPullTabs` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 306 | 1.5k | 2.0k | 2.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.8k | 3.1k | 3.3k | 3.5k | 3.7k | 3.9k | 4.1k | 5.0k | 5.4k | 5.6k | 5.6k | 4.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 2 |
| 990-EZ | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75     | P99     |
|--------|---------|-----------|--------|------------|--------|--------|---------|---------|
| 990    | 51,234  | 100.0%    | 2.7%   | 0.0%       | 10,875 | 36,245 | 110,481 | 932,024 |
| 990-EZ | 5,699   | 100.0%    | 14.6%  | 0.0%       | 1,600  | 4,978  | 11,587  | 78,341  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Polish American Citizens Club | 6498 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349326723_public.xml) |
| 2012 | 990 | x1 | THE PAISANO EDUCATIONAL TRUST | 215268 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411289349300216_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GAMING_EXP_OTH_PTAP, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
