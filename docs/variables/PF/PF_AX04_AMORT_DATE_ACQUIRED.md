# PF_AX04_AMORT_DATE_ACQUIRED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX04_AMORT_DATE_ACQUIRED

Date Acquired; Completed; or Expended

- Description: Date Acquired; Completed; or Expended

- Table:

  [`PF-P99-T04-AMORTIZATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t04-amortization)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-04`

- Type: date

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

6.4k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check     | Detail                       |
|--------|-----------------|------------------------------|
| ✓ pass | One date format | 100.0% use date (YYYY-MM-DD) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `AmortizationSchedule/Amortization/DateAcquiredCompletedExpended` | PF | 2009–2012 | 673 | 0.629% | 21.2% |
| x2 | `AmortizationSchedule/AmortizationScheduleDetail/AcquiredCompletedOrExpendedDt` | PF | 2013–2024 | 5,777 | 0.439% | 27.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 31 | 162 | 229 | 251 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 296 | 371 | 410 | 431 | 458 | 478 | 486 | 576 | 593 | 593 | 581 | 504 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format       | Filings | Share  |
|--------------|---------|--------|
| `9999-99-99` | 6,450   | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Virginia B and David R Jontes Foundation | 2020-01-27 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349108422_public.xml) |
| 2012 | 990PF | x1 | Edward H Lane Foundation | 2012-12-01 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421289349101182_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX04_AMORT_DATE_ACQUIRED, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
