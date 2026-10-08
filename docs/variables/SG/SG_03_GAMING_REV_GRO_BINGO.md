# SG_03_GAMING_REV_GRO_BINGO

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GAMING_REV_GRO_BINGO

Gross revenue from bingo

- Description: Gross revenue; bingo

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-01-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

54k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.6x (IRS990ScheduleG/GamingInformationGrp/GrossRevenueBingoAmt, 990, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/GamingInformation/GrossRevenueBingo` | SZ | 2009–2012 | 6,974 | 0.956% |  |
| x2 | `IRS990ScheduleG/GamingInformationGrp/GrossRevenueBingoAmt` | SZ | 2013–2024 | 46,677 | 0.929% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartIII/GamingInformation/GrossRevenueBingo` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 385 | 1.7k | 2.3k | 2.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.0k | 3.2k | 3.3k | 3.4k | 3.6k | 3.7k | 3.8k | 3.9k | 4.5k | 4.9k | 5.2k | 4.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75     | P99       |
|--------|---------|-----------|--------|------------|--------|---------|---------|-----------|
| 990    | 46,030  | 100.0%    | 3.8%   | 0.0%       | 42,566 | 123,617 | 324,699 | 3,100,296 |
| 990-EZ | 7,621   | 100.0%    | 10.4%  | 0.0%       | 16,421 | 32,228  | 69,967  | 177,476   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Stonewall Ball Club Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349320048_public.xml) |
| 2012 | 990EZ | x1 | AMERICAN LEGION 633 CHARLES H EYRE | 70564 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432589349200603_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GAMING_REV_GRO_BINGO, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
