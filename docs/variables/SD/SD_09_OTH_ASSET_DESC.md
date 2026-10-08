# SD_09_OTH_ASSET_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_09_OTH_ASSET_DESC

Other asset description

- Description: Other Assets - Description

- Table:

  [`SD-P09-T01-OTH-ASSETS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p09-t01-oth-assets)
  (many)

- Part: Part IX - Other Assets

- Location:

  `SCHED-D-PART-09-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

556k

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
| ⓘ info | No sign of truncation | IRS990ScheduleD/OtherAssetsOrgGrp/Desc: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/OtherAssets/Description` | SZ | 2009–2012 | 76,468 | 14.4% | 61.2% |
| x2 | `IRS990ScheduleD/OtherAssetsOrgGrp/Desc` | SZ | 2013–2024 | 480,001 | 14.4% | 56.8% |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartIX/OtherAssets/Description` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 7.5k | 19k | 24k | 26k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 28k | 31k | 32k | 33k | 36k | 37k | 38k | 42k | 44k | 59k | 61k | 40k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 23 | 16 | 15 | 14 | 14 | 14 | 14 | 14 | 14 | 13 | 13 | 13 | 13 | 17 | 17 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 556,464 | 22             | 100     |

### Most common values

| Value                      | Filings | Share |
|----------------------------|---------|-------|
| `DEPOSITS`                 | 27,837  | 14.0% |
| `SECURITY DEPOSITS`        | 25,496  | 12.8% |
| `SECURITY DEPOSIT`         | 21,923  | 11.0% |
| `OTHER ASSETS`             | 21,080  | 10.6% |
| `CONSTRUCTION IN PROGRESS` | 20,045  | 10.1% |
| `TENANT SECURITY DEPOSITS` | 18,363  | 9.2%  |
| `DUE FROM AFFILIATES`      | 18,246  | 9.2%  |
| `REPLACEMENT RESERVE`      | 16,625  | 8.4%  |
| `RIGHT OF USE ASSET`       | 8,496   | 4.3%  |
| `OTHER RECEIVABLES`        | 8,338   | 4.2%  |
| `ESCROW DEPOSITS`          | 7,782   | 3.9%  |
| `RIGHT OF USE ASSETS`      | 3,839   | 1.9%  |
| `INTEREST RECEIVABLE`      | 341     | 0.2%  |
| `Deposits`                 | 230     | 0.1%  |
| `Other Assets`             | 138     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | OWL CREEK COUNTRY CLUB | CONSTRUCTION IN PROGRESS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | PREPAID | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_09_OTH_ASSET_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
