# PF_AX24_INVEST_CORP_STCK_NAME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX24_INVEST_CORP_STCK_NAME

Name of Stock

- Description: Investments Corporate Stock Grp - Name of Stock

- Table:

  [`PF-P99-T24-INVEST-CORP-STOCK`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t24-invest-corp-stock)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-24`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

490k

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
| ⓘ info | No sign of truncation | InvestmentsCorpStockSchedule/InvestmentsCorporateStockGrp/StockNm: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `InvestmentsCorpStockSchedule/InvestmentsCorpStock/NameOfStock` | PF | 2009–2012 | 45,022 | 43.7% | 57.9% |
| x2 | `InvestmentsCorpStockSchedule/InvestmentsCorporateStockGrp/StockNm` | PF | 2013–2024 | 445,183 | 39.9% | 60.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.1k | 11k | 15k | 17k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 20k | 24k | 26k | 28k | 30k | 32k | 37k | 49k | 52k | 52k | 50k | 46k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 48 | 45 | 44 | 44 | 44 | 44 | 44 | 44 | 44 | 42 | 42 | 43 | 44 | 42 | 40 | 40 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 490,205 | 24             | 100     |

### Most common values

| Value                            | Filings | Share |
|----------------------------------|---------|-------|
| `921943858 VANGUARD FTSE DEVELO` | 29,360  | 9.7%  |
| `464287507 ISHARES CORE S&P MID` | 25,700  | 8.5%  |
| `922042858 VANGUARD FTSE EMERGI` | 25,505  | 8.4%  |
| `99Z466197 INTERNATIONAL FOCUSE` | 23,202  | 7.7%  |
| `29099J109 EMERGING MARKETS STO` | 17,434  | 5.8%  |
| `464287655 ISHARES RUSSELL 2000` | 13,404  | 4.4%  |
| `922908363 VANGUARD 500 INDEX F` | 11,673  | 3.9%  |
| `202671913 AGGREGATE BOND COMMO` | 11,359  | 3.8%  |
| `MICROSOFT CORP`                 | 11,358  | 3.8%  |
| `693390841 PIMCO HIGH YIELD FD`  | 10,916  | 3.6%  |
| `207543877 SMALL CAP GROWTH LEA` | 10,855  | 3.6%  |
| `464287226 ISHARES CORE US AGGR` | 10,386  | 3.4%  |
| `922908363 VANGUARD S&P 500 ETF` | 10,308  | 3.4%  |
| `99Z639934 LARGE CAP CORE COMMO` | 8,360   | 2.8%  |
| `73935S105 POWERSHARES DB COMMO` | 8,053   | 2.7%  |
| `922908553 VANGUARD REIT ETF`    | 6,202   | 2.0%  |
| `92203J407 VANGUARD TOTAL INTL`  | 5,973   | 2.0%  |
| `302993993 MID CAP VALUE CTF`    | 5,903   | 2.0%  |
| `202671913 AGGREGATE BOND CTF`   | 4,984   | 1.6%  |
| `APPLE INC`                      | 4,374   | 1.4%  |
| `00203H859 AQR MANAGED FUTURES`  | 4,353   | 1.4%  |
| `94987W737 WELLS FARGO ABSOLUTE` | 4,211   | 1.4%  |
| `466001864 IVY ASSET STRATEGY F` | 3,751   | 1.2%  |
| `46434G103 ISHARES CORE MSCI EM` | 3,160   | 1.0%  |
| `78468R663 SPDR BLOOMBERG BARCL` | 3,074   | 1.0%  |
| `45399C107 DIVIDEND INCOME COMM` | 3,017   | 1.0%  |
| `74256W584 PRINCIPAL MIDCAP FUN` | 2,904   | 1.0%  |
| `99Z639959 SMALL CAP CORE COMMO` | 2,896   | 1.0%  |
| `JOHNSON & JOHNSON`              | 2,855   | 0.9%  |
| `CORPORATE STOCK`                | 2,361   | 0.8%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | CHILMARK FOUNDATION | CORPORATE STOCK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531329349100988_public.xml) |
| 2012 | 990PF | x1 | Hachman Family Foundation | EQUITIES - UBS INVESTMENT ACCOUNT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311289349100546_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX24_INVEST_CORP_STCK_NAME, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
