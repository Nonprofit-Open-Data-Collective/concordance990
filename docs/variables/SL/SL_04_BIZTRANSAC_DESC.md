# SL_04_BIZTRANSAC_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_04_BIZTRANSAC_DESC

Description of transaction

- Description: Description of transaction

- Table:

  [`SL-P04-T01-BIZ-TRANSAC-INTERESTED-PERS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p04-t01-biz-transac-interested-pers)
  (many)

- Part: Part IV - Business Transactions Involving Interested Persons

- Location:

  `SCHED-L-PART-04-COL-D`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

243k

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
| ⓘ info | No sign of truncation | IRS990ScheduleL/BusTrInvolveInterestedPrsnGrp/TransactionDesc: longest value is exactly 1000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/Form990ScheduleLPartIV/DescriptionOfTransaction` | SZ | 2009–2012 | 45,840 | 5.57% | 39.6% |
| x2 | `IRS990ScheduleL/BusTrInvolveInterestedPrsnGrp/TransactionDesc` | SZ | 2013–2024 | 197,543 | 2.68% | 35.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.7k | 12k | 14k | 15k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 16k | 16k | 17k | 17k | 17k | 17k | 17k | 17k | 17k | 17k | 17k | 12k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 14 | 9 | 9 | 8 | 8 | 7 | 7 | 7 | 7 | 6 | 6 | 5 | 5 | 5 | 5 | 4 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 241,423 | 51             | 1,000   |
| 990-EZ | 1,960   | 24             | 383     |

### Most common values

| Value                    | Filings | Share |
|--------------------------|---------|-------|
| `EMPLOYMENT`             | 5,844   | 19.5% |
| `COMPENSATION`           | 4,898   | 16.4% |
| `RENT`                   | 3,974   | 13.3% |
| `SEE PART V`             | 2,989   | 10.0% |
| `WAGES`                  | 1,995   | 6.7%  |
| `EMPLOYEE`               | 1,949   | 6.5%  |
| `MANAGEMENT FEES`        | 1,942   | 6.5%  |
| `LEGAL SERVICES`         | 1,743   | 5.8%  |
| `Employment`             | 1,478   | 4.9%  |
| `EMPLOYEE COMPENSATION`  | 1,316   | 4.4%  |
| `Compensation`           | 845     | 2.8%  |
| `CONSULTING`             | 410     | 1.4%  |
| `SALARY`                 | 205     | 0.7%  |
| `CONSULTING SERVICES`    | 103     | 0.3%  |
| `MANAGEMENT SERVICES`    | 75      | 0.3%  |
| `INDEPENDENT CONTRACTOR` | 67      | 0.2%  |
| `SEE SCHEDULE O`         | 63      | 0.2%  |
| `See Schedule O`         | 31      | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | EMPLOYMENT AGREEMENT WITH CCF | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | BOARD OF CONTROL FOR SOUTHERN | PART-TIME WAGES | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343179349301309_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_04_BIZTRANSAC_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
