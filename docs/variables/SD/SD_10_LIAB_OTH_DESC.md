# SD_10_LIAB_OTH_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_10_LIAB_OTH_DESC

Other liability description

- Description: Other Liabilities - Description

- Table:

  [`SD-P10-T01-OTH-LIABILITIES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p10-t01-oth-liabilities)
  (many)

- Part: Part X - Other Liabilities

- Location:

  `SCHED-D-PART-10-LINE-01-COL-A-(02)`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.5M

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleD/OtherLiabilities/Description: longest value is exactly 100 characters; IRS990ScheduleD/OtherLiabilitiesOrgGrp/Desc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/OtherLiabilities/Description` | SZ | 2009–2012 | 213,437 | 42.3% | 47.8% |
| x2 | `IRS990ScheduleD/OtherLiabilitiesOrgGrp/Desc` | SZ | 2013–2024 | 1,321,085 | 37.6% | 44.7% |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartX/OtherLiabilities/Description` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 18k | 53k | 66k | 76k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 81k | 89k | 93k | 96k | 102k | 104k | 114k | 127k | 125k | 141k | 144k | 104k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 55 | 43 | 41 | 42 | 41 | 41 | 40 | 39 | 39 | 38 | 40 | 40 | 37 | 40 | 41 | 38 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 1,534,521 | 21             | 100     |

### Most common values

| Value                         | Filings | Share |
|-------------------------------|---------|-------|
| `Federal income taxes`        | 96,737  | 19.9% |
| `PAYROLL LIABILITIES`         | 67,749  | 13.9% |
| `TENANT SECURITY DEPOSITS`    | 45,298  | 9.3%  |
| `SECURITY DEPOSITS`           | 42,309  | 8.7%  |
| `OTHER LIABILITIES`           | 39,740  | 8.2%  |
| `DUE TO AFFILIATES`           | 33,280  | 6.8%  |
| `Rounding`                    | 33,251  | 6.8%  |
| `SALES TAX PAYABLE`           | 23,739  | 4.9%  |
| `OPERATING LEASE LIABILITY`   | 20,530  | 4.2%  |
| `PAYROLL TAXES PAYABLE`       | 20,385  | 4.2%  |
| `DEFERRED RENT`               | 20,364  | 4.2%  |
| `LEASE LIABILITY`             | 18,104  | 3.7%  |
| `PPP LOAN`                    | 7,913   | 1.6%  |
| `OPERATING LEASE LIABILITIES` | 6,075   | 1.3%  |
| `LINE OF CREDIT`              | 3,867   | 0.8%  |
| `Federal Income Taxes`        | 2,515   | 0.5%  |
| `CREDIT CARD PAYABLE`         | 2,487   | 0.5%  |
| `DEFERRED COMPENSATION`       | 1,068   | 0.2%  |
| `DUE TO AFFILIATE`            | 223     | 0.0%  |
| `DEPOSITS`                    | 218     | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | APPALACHIAN CENTER FOR EXCELLENCE IN | DUE TO HEALTH WAGON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302369_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | Refundable advances | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_10_LIAB_OTH_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
