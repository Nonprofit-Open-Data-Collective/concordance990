# SG_03_GAMING_EXP_CASH_BINGO

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GAMING_EXP_CASH_BINGO

Cash prizes from bingo

- Description: Cash prizes; bingo

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-02-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

40k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.7x (IRS990ScheduleG/GamingInformationGrp/CashPrizesBingoAmt, 990, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/GamingInformation/CashPrizesBingo` | SZ | 2009–2012 | 5,328 | 0.734% |  |
| x2 | `IRS990ScheduleG/GamingInformationGrp/CashPrizesBingoAmt` | SZ | 2013–2024 | 34,423 | 0.653% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartIII/GamingInformation/CashPrizesBingo` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 273 | 1.3k | 1.7k | 2.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.2k | 2.4k | 2.5k | 2.5k | 2.6k | 2.7k | 2.8k | 3.0k | 3.4k | 3.6k | 3.7k | 3.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75     | P99       |
|--------|---------|-----------|--------|------------|--------|---------|---------|-----------|
| 990    | 34,929  | 100.0%    | 5.1%   | 0.0%       | 41,283 | 122,500 | 309,280 | 2,585,246 |
| 990-EZ | 4,822   | 100.0%    | 17.6%  | 0.0%       | 7,342  | 25,550  | 47,847  | 145,282   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | MANDATORY FUN OUTDOORS | 656 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630979349300908_public.xml) |
| 2012 | 990 | x1 | THE PAISANO EDUCATIONAL TRUST | 417834 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411289349300216_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GAMING_EXP_CASH_BINGO, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
