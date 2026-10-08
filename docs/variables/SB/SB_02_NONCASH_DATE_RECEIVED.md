# SB_02_NONCASH_DATE_RECEIVED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_02_NONCASH_DATE_RECEIVED

Date noncash property received

- Description: Date noncash property received

- Table:

  [`SB-P02-T01-NONCASH-PROPERTY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sb-p02-t01-noncash-property)
  (many)

- Part: Part II - Noncash Property

- Location:

  `SCHED-B-PART-01`

- Type: date

- Scope: PZ – 990 and 990-EZ

- Database: F990, F990PF

2 / 2

xpaths observed / mapped

68k

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
| x1 | `IRS990ScheduleB/NoncashProperty/DateReceived` |  | 2009–2012 | 5,479 | 0.751% | 34.0% |
| x2 | `IRS990ScheduleB/NonCashPropertyContributionGrp/ReceivedDt` |  | 2013–2024 | 62,930 | 1.2% | 38.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 102 | 1.3k | 1.7k | 2.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.8k | 3.4k | 3.7k | 4.1k | 4.5k | 4.4k | 5.5k | 6.9k | 7.9k | 6.3k | 6.6k | 6.8k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 4 | 5 | 5 | 6 | 6 | 6 | 6 | 7 | 7 | 6 | 6 | 6 | 7 | 5 | 5 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format       | Filings | Share  |
|--------------|---------|--------|
| `9999-99-99` | 68,409  | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | The Brad & Jill Jackson Family Foundati… | 2024-12-10 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502969349100900_public.xml) |
| 2012 | 990PF | x1 | SOUL PURPOSE MINISTRY INC | 2012-12-31 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311349349100226_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_02_NONCASH_DATE_RECEIVED, report type *date*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
