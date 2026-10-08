# SG_04_RETURN_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_04_RETURN_REFERENCE

Return reference

- Description: Return reference

- Table:

  [`SG-P04-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p04-t99-supplemental-info)
  (many)

- Part: Part IV - Supplemental Information

- Location:

  `SCHED-G-PART-04`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

3.5k

filings with a value

2010–2012

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
| x1 | `IRS990ScheduleG/Form990ScheduleGPartIV/ReturnReference` | SZ | 2010–2012 | 3,502 | 0.511% | 9.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 892 | 1.2k | 1.4k |  |  |  |  |  |  |  |  |  |  |  |  |
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
| 990    | 3,162   | 34             | 74      |
| 990-EZ | 340     | 30             | 58      |

### Most common values

| Value                                         | Filings | Share |
|-----------------------------------------------|---------|-------|
| `SCHEDULE G, PART I, LINE 2B, COLUMN (V)`     | 1,010   | 40.3% |
| `SCHEDULE G PAGE 3 PART III LINE 17B`         | 604     | 24.1% |
| `Schedule G, Part I, Line 2b, Column (v)`     | 210     | 8.4%  |
| `SCHEDULE G PAGE 1 PART I LINE 2B COLUMN V`   | 179     | 7.1%  |
| `SCHEDULE G PAGE 1 PART I LINE 2B COLUMN III` | 121     | 4.8%  |
| `Schedule G, Part II, Line 1`                 | 107     | 4.3%  |
| `SCHEDULE G PAGE 3 PART III LINE 16`          | 85      | 3.4%  |
| `Schedule G, Part I, Line 2b`                 | 76      | 3.0%  |
| `SCHEDULE G, PART I, LINE 2B`                 | 56      | 2.2%  |
| `Schedule G, Part II, Line 9`                 | 37      | 1.5%  |
| `SCHEDULE G, PART III, LINE 16`               | 19      | 0.8%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | THE PAISANO EDUCATIONAL TRUST | SCHEDULE G PAGE 3 PART III LINE 17B | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411289349300216_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_04_RETURN_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
