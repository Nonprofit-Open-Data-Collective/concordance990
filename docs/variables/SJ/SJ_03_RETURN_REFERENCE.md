# SJ_03_RETURN_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SJ_03_RETURN_REFERENCE

Return reference

- Description: Return reference

- Table:

  [`SJ-P03-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sj-p03-t99-supplemental-info)
  (many)

- Part: Part III - Supplemental Information

- Location:

  `SCHED-J-PART-03`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

49k

filings with a value

2009–2012

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleJ/Form990ScheduleJPartIII/ReturnReference: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleJ/Form990ScheduleJPartIII/ReturnReference` | SZ | 2009–2012 | 49,256 | 9.07% | 40.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.0k | 12k | 15k | 16k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 18 | 10 | 9 | 9 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 49,256  | 20             | 100     |

### Most common values

| Value                         | Filings | Share |
|-------------------------------|---------|-------|
| `PART III`                    | 8,281   | 18.5% |
| `PART I, LINE 1A`             | 7,562   | 16.9% |
| `PART I, LINE 4B`             | 6,899   | 15.4% |
| `Part III`                    | 3,272   | 7.3%  |
| `PART I, LINE 7`              | 3,115   | 7.0%  |
| `PART I, LINE 3`              | 2,784   | 6.2%  |
| `Schedule J, Part I, Line 1a` | 2,301   | 5.1%  |
| `PART I, LINE 4A`             | 2,128   | 4.8%  |
| `Part I, Line 1a`             | 1,869   | 4.2%  |
| `Part I, Line 4a`             | 1,351   | 3.0%  |
| `Schedule J, Part I, Line 3`  | 1,340   | 3.0%  |
| `PART I, LINE 6`              | 1,131   | 2.5%  |
| `Part I, Line 4b`             | 1,069   | 2.4%  |
| `Part I, Line 7`              | 469     | 1.0%  |
| `Part I, Line 1b`             | 257     | 0.6%  |
| `Part I, Line 4b:`            | 221     | 0.5%  |
| `Part I, Line 6`              | 221     | 0.5%  |
| `Schedule J, Part I, Line 4`  | 214     | 0.5%  |
| `Part I, Line 5`              | 210     | 0.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | Mercy Health System of Southeastern Pen… | Part I, Line 3 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349308784_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SJ_03_RETURN_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
