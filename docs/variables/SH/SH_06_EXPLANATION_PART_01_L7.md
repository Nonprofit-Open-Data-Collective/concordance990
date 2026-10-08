# SH_06_EXPLANATION_PART_01_L7

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_06_EXPLANATION_PART_01_L7

Additional explanation for part 1 line 7

- Description: Part I; line 7 (see SH-FORM-VERSION-2009-PART-06)

- Table:

  [`SH-P06-T99-SUPPLEMENTAL-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p06-t99-supplemental-info)
  (many)

- Part: Part VI - Supplemental Information

- Location:

  `SCHED-H-PART-06-LINE-01`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

1.0k

filings with a value

2009–2009

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVI/CostingMethodUsed` | SZ | 2009–2009 | 1,016 | 3.05% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.0k |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 1,016   | 487            | 7,505   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `Part I, Line 7: The cost of providing charity care, means tested government programs, and…` | 38 | 23.5% |
| `Provide an explanation of the costing methodology used to calculate the amounts reported …` | 37 | 22.8% |
| `Part I, Line 7: The best available data was used to calculate the cost amounts reported i…` | 18 | 11.1% |
| `N/A` | 13 | 8.0% |
| `Part I, Line 7: OUR COST ACCOUNTING PROCESS REFLECTS FULLY LOADED COST FOR ALL OF OUR PAT…` | 10 | 6.2% |
| `Part I, Line 7: THE ORGANIZATION USED WORKSHEET 2 OF THE 2009 SCHEDULE H INSTRUCTIONS TO …` | 10 | 6.2% |
| `THE DATA REPORTED IN THIS AREA IS REPORTED AS INSTRUCTED BY CATHOLIC HEALTH ASSOCIATION'S…` | 10 | 6.2% |
| `Part I, Line 7: A ratio of patient care cost to charges, as determined in Worksheet 2, wa…` | 9 | 5.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2009 | 990 | x1 | St Vincent's East | Part I, Line 7: The cost of providing charity care, means tested government pro… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201141339349302759_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_06_EXPLANATION_PART_01_L7, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
