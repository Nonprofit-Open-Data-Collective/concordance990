# PF_AX11_DEPREC_DATE_ACQUIRED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX11_DEPREC_DATE_ACQUIRED

Date Acquired

- Description: Depreciation - Date Acquired

- Table:

  [`PF-P99-T11-DEPREC`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t11-deprec)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-11`

- Type: date

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

72k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check     | Detail                       |
|--------|-----------------|------------------------------|
| ✓ pass | One date format | 100.0% use date (YYYY-MM-DD) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `DepreciationSchedule/Depreciation/DateAcquired` | PF | 2009–2012 | 7,536 | 7.57% | 80.2% |
| x2 | `DepreciationSchedule/DepreciationPropertyGrp/AcquiredDt` | PF | 2013–2024 | 64,900 | 5.29% | 78.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 219 | 1.8k | 2.5k | 3.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.5k | 4.0k | 4.4k | 4.6k | 4.9k | 5.0k | 5.5k | 6.6k | 6.8k | 6.8k | 6.7k | 6.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 9 | 7 | 7 | 8 | 8 | 8 | 8 | 7 | 7 | 7 | 6 | 6 | 6 | 6 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format       | Filings | Share  |
|--------------|---------|--------|
| `9999-99-99` | 72,436  | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THE GRIMM FAMILY EDUCATION FOUNDATION | 2022-05-01 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202601059349100815_public.xml) |
| 2012 | 990PF | x1 | ADVANCE ATHLETICS INC | 2012-01-06 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312279349100291_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX11_DEPREC_DATE_ACQUIRED, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
