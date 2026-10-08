# SF_05_RETURN_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_05_RETURN_REFERENCE

Return reference

- Description: Return reference

- Table:

  [`SF-P05-T99-EXPLANATION-TEXT`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p05-t99-explanation-text)
  (many)

- Part: Part V - Supplemental Information

- Location:

  `SCHED-F-PART-05`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

4.4k

filings with a value

2009–2012

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 5% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleF/Form990ScheduleFPartV/ReturnReference: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/Form990ScheduleFPartIV/ReturnReference` | SZ | 2009–2009 | 403 | 1.21% | 11.9% |
| x2 | `IRS990ScheduleF/Form990ScheduleFPartV/ReturnReference` | SZ | 2010–2012 | 3,951 | 0.968% | 24.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 403 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 1.1k | 1.2k | 1.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 4,354   | 27             | 75      |

### Most common values

| Value                                | Filings | Share |
|--------------------------------------|---------|-------|
| `Schedule F, Part I, Line 2`         | 729     | 20.7% |
| `SCHEDULE F, PAGE 1, PART I, LINE 3` | 581     | 16.5% |
| `SCHEDULE F, PAGE 1, PART I, LINE 2` | 578     | 16.4% |
| `SCHEDULE F, PAGE 5, PART V`         | 335     | 9.5%  |
| `Schedule F, Part I, Line 3`         | 331     | 9.4%  |
| `SCHEDULE F, PART V`                 | 226     | 6.4%  |
| `SCHEDULE F, PART I, LINE 2`         | 196     | 5.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x2 | AVEDIS FOUNDATION | SCHEDULE F, PAGE 1, PART I, LINE 3 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431339349302063_public.xml) |
| 2009 | 990 | x1 | The Trustees of Princeton University | SCHEDULE F, PART I, QUESTION 2 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201131369349302223_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_05_RETURN_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
