# SM_01_CLOTHING_METHOD_REV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_01_CLOTHING_METHOD_REV

Clothing and household goods - method of determining noncash
contribution amounts

- Description: Method of determining revenues

- Table:

  [`SM-P01-T00-NONCASH-CONTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p01-t00-noncash-contributions)
  (one)

- Part: Part I - Types of Property

- Location:

  `SCHED-M-PART-01-LINE-05-COL-D`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

60k

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
| ⓘ info | No sign of truncation | IRS990ScheduleM/ClothingAndHouseholdGoodsGrp/MethodOfDeterminingRevenuesTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/ClothingAndHouseholdGoods/MethodOfDeterminingRevenues` | SZ | 2009–2012 | 9,061 | 1.74% |  |
| x2 | `IRS990ScheduleM/ClothingAndHouseholdGoodsGrp/MethodOfDeterminingRevenuesTxt` | SZ | 2013–2024 | 50,968 | 1.28% |  |
| x3 | `IRS990ScheduleM/Form990ScheduleMPartI/ClothingAndHouseholdGoods/MethodOfDeterminingRevenues` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 976 | 2.2k | 2.8k | 3.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.4k | 3.7k | 3.9k | 4.1k | 4.4k | 4.3k | 4.4k | 4.4k | 4.7k | 5.1k | 5.1k | 3.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 60,029  | 12             | 100     |

### Most common values

| Value                | Filings | Share |
|----------------------|---------|-------|
| `FMV`                | 14,373  | 45.9% |
| `FAIR MARKET VALUE`  | 6,841   | 21.8% |
| `THRIFT SHOP VALUE`  | 1,910   | 6.1%  |
| `COST`               | 1,645   | 5.3%  |
| `THRIFT STORE VALUE` | 1,622   | 5.2%  |
| `RESALE VALUE`       | 1,417   | 4.5%  |
| `SELLING PRICE`      | 898     | 2.9%  |
| `Fair Market Value`  | 825     | 2.6%  |
| `FAIR VALUE`         | 605     | 1.9%  |
| `Market value`       | 340     | 1.1%  |
| `ESTIMATED FMV`      | 256     | 0.8%  |
| `THRIFT VALUE`       | 195     | 0.6%  |
| `MARKET VALUE`       | 164     | 0.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | DRY BONES DENVER | FMV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531299349303223_public.xml) |
| 2012 | 990 | x1 | MARYVILLE ACADEMY | COST / SELLING PRICE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421489349300952_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_01_CLOTHING_METHOD_REV, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
