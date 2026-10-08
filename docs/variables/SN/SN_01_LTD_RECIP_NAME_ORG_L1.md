# SN_01_LTD_RECIP_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SN_01_LTD_RECIP_NAME_ORG_L1

Recipient organization name line 1

- Description: Name Business - BusinessNameLine1

- Table:

  [`SN-P01-T01-LIQUIDATION-TERMINATION-DISSOLUTION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sn-p01-t01-liquidation-termination-dissolution)
  (many)

- Part: Part I - Liquidation, Termination, or Dissolution

- Location:

  `SCHED-N-PART-01-LINE-01-COL-F`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 5

xpaths observed / mapped

17k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters; IRS990ScheduleN/LiquidationTable/LiquidationDetail/NameBusiness/BusinessNameLine1: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleN/LiquidationTable/LiquidationDetail/NameBusiness/BusinessNameLine1` | SZ | 2009–2012 | 1,897 | 0.259% | 38.5% |
| x2 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/BusinessName/BusinessNameLine1` | SZ | 2013–2013 | 815 | 0.269% | 40.9% |
| x3 | `IRS990ScheduleN/LiquidationOfAssetsTableGrp/LiquidationOfAssetsDetail/BusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 14,318 | 0.376% | 37.5% |
| x4 | `IRS990ScheduleN/Form990ScheduleNPartI/LiquidationTable/NameBusiness/BusinessNameLine1` | SZ | not observed | 0 |  |  |
| x5 | `IRS990ScheduleN/LiquidationTable/NameBusiness/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 86 | 489 | 614 | 708 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 815 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 864 | 951 | 1.1k | 1.1k | 1.1k | 1.2k | 1.5k | 1.5k | 1.6k | 1.6k | 1.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 10,113  | 29             | 75      |
| 990-EZ | 6,917   | 27             | 75      |

### Most common values

| Value                                        | Filings | Share |
|----------------------------------------------|---------|-------|
| `THE NATIONAL ASSOCIATION OF SOCIAL WORKERS` | 46      | 5.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | GALWAY ROVERS FC OF HINGHAM INC | SCITUATE SOCCER CLUB INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531289349202933_public.xml) |
| 2013 | 990 | x2 | WASHINGTON COUNTIES INSURANCE POOL | WASHINGTON COUNTIES INSURANCE FUND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400579349300430_public.xml) |
| 2012 | 990EZ | x1 | BIG BEND BUSINESS LEADERSHIP NETWORK INC | ABLE TRUST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341899349200229_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SN_01_LTD_RECIP_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
