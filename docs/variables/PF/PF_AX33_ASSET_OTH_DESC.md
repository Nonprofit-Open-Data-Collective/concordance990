# PF_AX33_ASSET_OTH_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX33_ASSET_OTH_DESC

Other assets schedule - description

- Description: Other Assets - Description

- Table:

  [`PF-P99-T33-ASSET-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t33-asset-oth)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-33`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

171k

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
| ⓘ info | No sign of truncation | OtherAssetsSchedule/OtherAssetsScheduleGrp/Desc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `OtherAssetsSchedule/OtherAssets/Description` | PF | 2009–2012 | 15,171 | 15.2% | 31.9% |
| x2 | `OtherAssetsSchedule/OtherAssetsScheduleGrp/Desc` | PF | 2013–2024 | 155,346 | 14.1% | 33.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 438 | 3.7k | 5.0k | 6.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 7.0k | 8.0k | 9.2k | 9.8k | 11k | 11k | 13k | 17k | 17k | 18k | 18k | 16k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 19 | 15 | 15 | 15 | 15 | 15 | 16 | 16 | 16 | 15 | 15 | 15 | 15 | 14 | 14 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 170,517 | 23             | 100     |

### Most common values

| Value                           | Filings | Share |
|---------------------------------|---------|-------|
| `ACCRUED INCOME`                | 7,256   | 17.6% |
| `DIVIDENDS RECEIVABLE`          | 5,765   | 14.0% |
| `Rounding`                      | 4,474   | 10.8% |
| `DIVIDEND RECEIVABLE`           | 4,379   | 10.6% |
| `000000000 MISCELLANEOUS ENTRY` | 3,587   | 8.7%  |
| `SECURITY DEPOSIT`              | 3,421   | 8.3%  |
| `OTHER ASSETS`                  | 3,126   | 7.6%  |
| `INTEREST RECEIVABLE`           | 2,892   | 7.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | PLANTING SEEDS GROWING HOPE | OTHER ASSET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531219349100123_public.xml) |
| 2012 | 990PF | x1 | SOL AND ANNA NUSBAUM FOUNDATION | NOTE RECEIVABLE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321199349100467_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX33_ASSET_OTH_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
