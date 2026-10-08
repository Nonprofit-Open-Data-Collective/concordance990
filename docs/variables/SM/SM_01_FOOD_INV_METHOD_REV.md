# SM_01_FOOD_INV_METHOD_REV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_01_FOOD_INV_METHOD_REV

Food inventory - method of determining noncash contribution amounts

- Description: Method of determining revenues

- Table:

  [`SM-P01-T00-NONCASH-CONTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p01-t00-noncash-contributions)
  (one)

- Part: Part I - Types of Property

- Location:

  `SCHED-M-PART-01-LINE-19-COL-D`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

56k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleM/FoodInventoryGrp/MethodOfDeterminingRevenuesTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/FoodInventory/MethodOfDeterminingRevenues` | SZ | 2009–2012 | 7,465 | 1.46% |  |
| x2 | `IRS990ScheduleM/FoodInventoryGrp/MethodOfDeterminingRevenuesTxt` | SZ | 2013–2024 | 48,805 | 1.28% |  |
| x3 | `IRS990ScheduleM/Form990ScheduleMPartI/FoodInventory/MethodOfDeterminingRevenues` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 764 | 1.8k | 2.3k | 2.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.0k | 3.3k | 3.5k | 3.7k | 4.1k | 4.2k | 4.3k | 4.4k | 4.6k | 5.0k | 5.1k | 3.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 56,270  | 12             | 100     |

### Most common values

| Value                | Filings | Share |
|----------------------|---------|-------|
| `FMV`                | 13,567  | 48.5% |
| `FAIR MARKET VALUE`  | 6,336   | 22.6% |
| `COST`               | 3,186   | 11.4% |
| `Cost`               | 876     | 3.1%  |
| `FAIR VALUE`         | 833     | 3.0%  |
| `MARKET VALUE`       | 655     | 2.3%  |
| `Fair Market Value`  | 646     | 2.3%  |
| `COMPARABLE SALES`   | 543     | 1.9%  |
| `RETAIL VALUE`       | 485     | 1.7%  |
| `Market value`       | 271     | 1.0%  |
| `SELLING PRICE`      | 184     | 0.7%  |
| `ESTIMATED FMV`      | 142     | 0.5%  |
| `COST/SELLING PRICE` | 109     | 0.4%  |
| `Fair market value`  | 86      | 0.3%  |
| `fmv`                | 46      | 0.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | DRY BONES DENVER | Cost | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531299349303223_public.xml) |
| 2012 | 990 | x1 | The Exploratorium | cost | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441339349305459_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_01_FOOD_INV_METHOD_REV, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
