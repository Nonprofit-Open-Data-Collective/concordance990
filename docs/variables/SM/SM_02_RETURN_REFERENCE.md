# SM_02_RETURN_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_02_RETURN_REFERENCE

Return reference

- Description: Return Reference

- Table:

  [`SM-P02-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p02-t99-supplemental-info)
  (many)

- Part: Part II - Supplemental Information

- Location:

  `SCHED-M-PART-02`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

12k

filings with a value

2009–2012

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/Form990ScheduleMPartII/ReturnReference` | SZ | 2009–2012 | 12,369 | 2.34% | 18.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k | 2.9k | 3.7k | 4.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 2 | 2 | 2 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 12,369  | 21             | 99      |

### Most common values

| Value                                  | Filings | Share |
|----------------------------------------|---------|-------|
| `PART I, COLUMN (B):`                  | 2,988   | 26.5% |
| `PART I, LINE 32B:`                    | 2,855   | 25.4% |
| `Part I, Column (b):`                  | 1,136   | 10.1% |
| `Part I, Line 32b:`                    | 1,009   | 9.0%  |
| `PART I, LINE 33:`                     | 954     | 8.5%  |
| `SCHEDULE M, PAGE 2, PART II`          | 528     | 4.7%  |
| `Schedule M, Part I, Line 32b`         | 486     | 4.3%  |
| `SCHEDULE M, PAGE 1, PART I, LINE 32B` | 397     | 3.5%  |
| `Form 990`                             | 343     | 3.0%  |
| `Schedule M, Part I`                   | 263     | 2.3%  |
| `Part I, Line 33:`                     | 158     | 1.4%  |
| `Schedule M, Part I, Line 33`          | 99      | 0.9%  |
| `SCHEDULE M, PART I, LINE 32B`         | 20      | 0.2%  |
| `Schedule M, Part I, Line 32a`         | 20      | 0.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | Saint Francis Community Services Group … | Part I, Line 32b: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349302832_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_02_RETURN_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
