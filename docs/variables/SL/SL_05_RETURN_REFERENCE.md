# SL_05_RETURN_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_05_RETURN_REFERENCE

Return reference

- Description: Return reference

- Table:

  [`SL-P05-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p05-t99-supplemental-info)
  (many)

- Part: Part V - Supplemental Information

- Location:

  `SCHED-L-PART-05`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

4.3k

filings with a value

2010–2012

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 5% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/Form990ScheduleLPartV/ReturnReference` | SZ | 2010–2012 | 4,277 | 0.663% | 7.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1.0k | 1.4k | 1.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 1 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ |  | \<1 | \<1 | \<1 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 4,201   | 23             | 76      |
| 990-EZ | 76      | 17             | 66      |

### Most common values

| Value                                                | Filings | Share |
|------------------------------------------------------|---------|-------|
| `SCHEDULE L PART V`                                  | 1,619   | 56.4% |
| `SCHEDULE L, PART IV`                                | 431     | 15.0% |
| `Schedule L, Part IV`                                | 257     | 9.0%  |
| `1`                                                  | 141     | 4.9%  |
| `BUSINESS TRANSACTIONS INVOLVING INTERESTED PERSONS` | 85      | 3.0%  |
| `Schedule L, Part II`                                | 67      | 2.3%  |
| `SCHEDULE L PART II`                                 | 67      | 2.3%  |
| `PART IV`                                            | 58      | 2.0%  |
| `FORM 990, SCHEDULE L, PART IV`                      | 56      | 2.0%  |
| `SCHEDULE L PART IV`                                 | 39      | 1.4%  |
| `SCHEDULE L, PART II`                                | 28      | 1.0%  |
| `990 Schedule L Placeholder 1`                       | 21      | 0.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | BATON ROUGE BASKETBALL & VOLLEYBALL | PURPOSE OF LOAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323199349308082_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_05_RETURN_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
