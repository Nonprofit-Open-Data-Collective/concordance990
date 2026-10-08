# SD_07_INVEST_SEC_OTH_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_07_INVEST_SEC_OTH_DESC

Other securities - description

- Description: Other - Description

- Table:

  [`SD-P07-T01-INVESTMENTS-OTH-SECURITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p07-t01-investments-oth-securities)
  (many)

- Part: Part VII - Investments - Other Securities

- Location:

  `SCHED-D-PART-07-LINE-03-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

329k

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
| ⓘ info | No sign of truncation | IRS990ScheduleD/OtherSecuritiesGrp/Desc: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/OtherSecurities/Description` | SZ | 2009–2012 | 45,972 | 10.4% | 57.0% |
| x2 | `IRS990ScheduleD/OtherSecuritiesGrp/Desc` | SZ | 2013–2024 | 282,560 | 7.27% | 62.2% |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartVII/Other/Description` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.2k | 11k | 12k | 19k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 19k | 21k | 21k | 22k | 23k | 23k | 24k | 27k | 27k | 28k | 28k | 20k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 13 | 9 | 8 | 10 | 10 | 9 | 9 | 9 | 9 | 8 | 8 | 8 | 8 | 8 | 8 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 328,532 | 28             | 100     |

### Most common values

| Value                                                | Filings | Share |
|------------------------------------------------------|---------|-------|
| `Closely-held equity interests`                      | 96,963  | 39.0% |
| `Financial derivatives and other financial products` | 96,411  | 38.7% |
| `MUTUAL FUNDS`                                       | 15,083  | 6.1%  |
| `INVESTMENTS`                                        | 8,153   | 3.3%  |
| `CERTIFICATES OF DEPOSIT`                            | 7,802   | 3.1%  |
| `ALTERNATIVE INVESTMENTS`                            | 5,985   | 2.4%  |
| `HEDGE FUNDS`                                        | 5,241   | 2.1%  |
| `OTHER INVESTMENTS`                                  | 4,416   | 1.8%  |
| `CORPORATE BONDS`                                    | 3,973   | 1.6%  |
| `MONEY MARKET FUNDS`                                 | 1,538   | 0.6%  |
| `PRIVATE EQUITY`                                     | 1,225   | 0.5%  |
| `OTHER SECURITIES`                                   | 681     | 0.3%  |
| `Financial derivatives`                              | 552     | 0.2%  |
| `EQUITY SECURITIES`                                  | 306     | 0.1%  |
| `EQUITIES`                                           | 278     | 0.1%  |
| `Mutual Funds`                                       | 87      | 0.0%  |
| `LIMITED PARTNERSHIPS`                               | 63      | 0.0%  |
| `REAL ESTATE`                                        | 57      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | MARINE CORPS LEAGUE | CD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521929349300427_public.xml) |
| 2012 | 990 | x1 | Fraternal Order of Eagles 2171 Aerie | Financial derivatives and other financial products | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421059349300437_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_07_INVEST_SEC_OTH_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
