# SD_08_INVEST_PROG_RLTD_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_08_INVEST_PROG_RLTD_DESC

Program related investment description

- Description: Investments Program Related - Description

- Table:

  [`SD-P08-T01-INVESTMENTS-PROG-RLTD`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p08-t01-investments-prog-rltd)
  (many)

- Part: Part VIII - Investments - Program Related

- Location:

  `SCHED-D-PART-08-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

70k

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
| ⓘ info | No sign of truncation | IRS990ScheduleD/InvstProgramRelatedOrgGrp/Desc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/InvestmentsProgramRelated/Description` | SZ | 2009–2012 | 10,442 | 1.99% | 50.8% |
| x2 | `IRS990ScheduleD/InvstProgramRelatedOrgGrp/Desc` | SZ | 2013–2024 | 59,474 | 1.58% | 46.1% |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartVIII/InvestmentsProgramRelated/Description` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 722 | 2.8k | 3.3k | 3.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.9k | 4.1k | 4.3k | 4.5k | 4.8k | 5.0k | 5.1k | 5.7k | 5.9k | 5.9k | 6.0k | 4.4k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 69,916  | 25             | 100     |

### Most common values

| Value                      | Filings | Share |
|----------------------------|---------|-------|
| `RESIDUAL RECEIPTS`        | 1,906   | 13.4% |
| `RESERVE REPLACEMENT FUND` | 1,904   | 13.4% |
| `OTHER INVESTMENTS`        | 1,822   | 12.8% |
| `MUTUAL FUNDS`             | 1,460   | 10.2% |
| `MORTGAGE ESCROW DEPOSITS` | 1,340   | 9.4%  |
| `RESTRICTED CASH`          | 1,338   | 9.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | DRY BONES DENVER | Fidelity Investments | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531299349303223_public.xml) |
| 2012 | 990 | x1 | ROBERT SALIGMAN HOUSE | RESIDUAL RESERVE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421019349300512_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_08_INVEST_PROG_RLTD_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
