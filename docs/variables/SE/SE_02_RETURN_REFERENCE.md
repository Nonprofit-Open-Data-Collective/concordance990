# SE_02_RETURN_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SE_02_RETURN_REFERENCE

Return reference

- Description: Return reference

- Table:

  [`SE-P02-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#se-p02-t99-supplemental-info)
  (many)

- Part: Part II - Supplemental Information

- Location:

  `SCHED-E-PART-02`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

17k

filings with a value

2010–2012

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleE/Form990ScheduleEPartII/ReturnReference` | SZ | 2010–2012 | 16,632 | 2.55% | 50.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 4.3k | 5.4k | 7.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 3 | 3 | 4 |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ |  | \<1 | \<1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 15,594  | 25             | 79      |
| 990-EZ | 1,038   | 26             | 79      |

### Most common values

| Value                                                | Filings | Share |
|------------------------------------------------------|---------|-------|
| `SCHEDULE E, PART I, LINE 3`                         | 9,598   | 39.5% |
| `SCHEDULE E, PART I, LINE 6`                         | 4,936   | 20.3% |
| `Schedule E, Part I, Line 3`                         | 2,774   | 11.4% |
| `SCHEDULE E LINE 3`                                  | 1,721   | 7.1%  |
| `SCHEDULE E, PART I, LINE 4`                         | 1,660   | 6.8%  |
| `SCHEDULE E LINE 6`                                  | 1,437   | 5.9%  |
| `Schedule E, Part I, Line 6`                         | 1,310   | 5.4%  |
| `Schedule E, Part I, Line 4`                         | 311     | 1.3%  |
| `SCHEDULE E LINE 4`                                  | 222     | 0.9%  |
| `Description of nondiscriminatory policy Question 3` | 134     | 0.6%  |
| `6a`                                                 | 57      | 0.2%  |
| `SCHEDULE E, LINE 3`                                 | 56      | 0.2%  |
| `SCHEDULE E, PART I, LINE 7`                         | 55      | 0.2%  |
| `Schedule E, Line 6a`                                | 46      | 0.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990EZ | x1 | NORTH SHERMAN PRE-SCHOOL INC | Governmental Agency Financial Aid Questions 6a and 6b | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323059349200532_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SE_02_RETURN_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
