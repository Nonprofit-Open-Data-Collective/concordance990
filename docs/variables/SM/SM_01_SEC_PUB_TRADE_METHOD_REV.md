# SM_01_SEC_PUB_TRADE_METHOD_REV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_01_SEC_PUB_TRADE_METHOD_REV

Securities - publicly traded - method of determining noncash
contribution amounts

- Description: Method of determining revenues

- Table:

  [`SM-P01-T00-NONCASH-CONTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p01-t00-noncash-contributions)
  (one)

- Part: Part I - Types of Property

- Location:

  `SCHED-M-PART-01-LINE-09-COL-D`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

117k

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
| ⓘ info | No sign of truncation | IRS990ScheduleM/SecuritiesPubliclyTradedGrp/MethodOfDeterminingRevenuesTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/SecuritiesPubliclyTraded/MethodOfDeterminingRevenues` | SZ | 2009–2012 | 16,464 | 3.02% |  |
| x2 | `IRS990ScheduleM/SecuritiesPubliclyTradedGrp/MethodOfDeterminingRevenuesTxt` | SZ | 2013–2024 | 100,349 | 2.53% |  |
| x3 | `IRS990ScheduleM/Form990ScheduleMPartI/SecuritiesPubliclyTraded/MethodOfDeterminingRevenues` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.2k | 4.1k | 4.8k | 5.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.1k | 7.1k | 7.3k | 7.6k | 8.8k | 8.5k | 8.8k | 9.6k | 10k | 9.4k | 9.7k | 7.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 116,813 | 12             | 100     |

### Most common values

| Value                      | Filings | Share |
|----------------------------|---------|-------|
| `FMV`                      | 36,703  | 50.3% |
| `FAIR MARKET VALUE`        | 19,668  | 27.0% |
| `MARKET VALUE`             | 4,417   | 6.1%  |
| `Market value`             | 2,810   | 3.9%  |
| `Fair Market Value`        | 2,116   | 2.9%  |
| `FAIR VALUE`               | 1,611   | 2.2%  |
| `NYSE`                     | 1,555   | 2.1%  |
| `SELLING PRICE`            | 1,549   | 2.1%  |
| `AVG. SELLING PRICE`       | 764     | 1.0%  |
| `Market Value`             | 475     | 0.7%  |
| `Fair market value`        | 467     | 0.6%  |
| `STOCK MARKET QUOTES`      | 180     | 0.2%  |
| `PUBLICLY TRADED EXCHANGE` | 172     | 0.2%  |
| `fmv`                      | 116     | 0.2%  |
| `Selling Price`            | 68      | 0.1%  |
| `fair market value`        | 59      | 0.1%  |
| `Selling cost`             | 58      | 0.1%  |
| `STOCK QUOTE`              | 56      | 0.1%  |
| `FMV ON DATE OF GIFT`      | 35      | 0.0%  |
| `COST/SELLING PRICE`       | 31      | 0.0%  |
| `market value`             | 21      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | PENNSYLVANIA INSTITUTE OF TECHNOLOGY | CLOSING PRICE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202641119349301809_public.xml) |
| 2012 | 990 | x1 | BATON ROUGE BASKETBALL & VOLLEYBALL | FMV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323199349308082_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_01_SEC_PUB_TRADE_METHOD_REV, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
