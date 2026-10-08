# SM_01_OTH_METHOD_REV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_01_OTH_METHOD_REV

Other - method of determining noncash contribution amounts

- Description: Method of determining revenues

- Table:

  [`SM-P01-T01-NONCASH-CONTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p01-t01-noncash-contributions)
  (many)

- Part: Part I - Types of Property

- Location:

  `SCHED-M-PART-01-LINE-25-COL-D`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

171k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleM/OtherNonCashContriTableGrp/MethodOfDeterminingRevenuesTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/OtherNonCashContributionsTable/MethodOfDeterminingRevenues` | SZ | 2009–2012 | 26,899 | 5.12% | 51.0% |
| x2 | `IRS990ScheduleM/OtherNonCashContriTableGrp/MethodOfDeterminingRevenuesTxt` | SZ | 2013–2024 | 144,575 | 3.58% | 46.9% |
| x3 | `IRS990ScheduleM/Form990ScheduleMPartI/OtherNonCashContributionsTable/MethodOfDeterminingRevenues` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.9k | 6.6k | 8.2k | 9.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 10.0k | 11k | 12k | 12k | 13k | 13k | 12k | 12k | 13k | 13k | 14k | 9.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 9 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 171,474 | 11             | 100     |

### Most common values

| Value                | Filings | Share |
|----------------------|---------|-------|
| `FMV`                | 55,765  | 50.0% |
| `FAIR MARKET VALUE`  | 26,979  | 24.2% |
| `COST`               | 9,216   | 8.3%  |
| `FAIR VALUE`         | 3,902   | 3.5%  |
| `MARKET VALUE`       | 3,012   | 2.7%  |
| `Fair Market Value`  | 2,929   | 2.6%  |
| `Cost`               | 2,760   | 2.5%  |
| `COMPARABLE SALES`   | 2,226   | 2.0%  |
| `Market value`       | 1,655   | 1.5%  |
| `RETAIL VALUE`       | 1,609   | 1.4%  |
| `SELLING PRICE`      | 718     | 0.6%  |
| `COST/SELLING PRICE` | 330     | 0.3%  |
| `fmv`                | 228     | 0.2%  |
| `fair market value`  | 73      | 0.1%  |
| `Fair market value`  | 42      | 0.0%  |
| `cost`               | 37      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Roebling Main Gate Museum | FMV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543159349301979_public.xml) |
| 2012 | 990 | x1 | Washington Hospital Healthcare Foundati… | FMV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421359349309267_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_01_OTH_METHOD_REV, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
