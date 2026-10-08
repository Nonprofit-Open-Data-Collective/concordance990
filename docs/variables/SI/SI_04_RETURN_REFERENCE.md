# SI_04_RETURN_REFERENCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_04_RETURN_REFERENCE

Return reference

- Description: Return reference

- Table:

  [`SI-P04-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p04-t99-supplemental-info)
  (many)

- Part: Part IV - Supplemental Information

- Location:

  `SCHED-I-PART-04`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

61k

filings with a value

2009–2012

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 2% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleI/Form990ScheduleIPartIV/ReturnReference: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/Form990ScheduleIPartIV/ReturnReference` | SZ | 2009–2012 | 60,861 | 11.6% | 3.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.2k | 16k | 18k | 21k |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 19 | 13 | 11 | 12 |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 60,861  | 19             | 75      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `PART I, LINE 2:` | 31,791 | 56.1% |
| `Part I, Line 2:` | 8,495 | 15.0% |
| `SCHEDULE I, PAGE 1, PART I, LINE 2` | 5,328 | 9.4% |
| `Schedule I, Part I, Line 2` | 4,349 | 7.7% |
| `SCHEDULE I, PART I, LINE 2` | 1,317 | 2.3% |
| `PART IV:` | 1,140 | 2.0% |
| `SCHEDULE I, PAGE 4, PART IV` | 938 | 1.7% |
| `2` | 831 | 1.5% |
| `Monitoring procedures Part I line 2` | 722 | 1.3% |
| `Part IV:` | 655 | 1.2% |
| `PART I, LINE 2` | 571 | 1.0% |
| `EXPLANATION FOR FORM 990, SCHEDULE I, PART 1, LINE 2` | 266 | 0.5% |
| `Description of Organization's Procedures for Monitoring the Use of Grants` | 196 | 0.3% |
| `Procedures for monitoring the use of grants` | 46 | 0.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2012 | 990 | x1 | MINNEAPOLIS COLLEGE OF ART & DESIGN | PART I, LINE 2: | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_04_RETURN_REFERENCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
