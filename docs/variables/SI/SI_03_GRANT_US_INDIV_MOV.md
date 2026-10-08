# SI_03_GRANT_US_INDIV_MOV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_03_GRANT_US_INDIV_MOV

Method of valuation

- Description: Method of valuation (book; FMV; appraisal; other)

- Table:

  [`SI-P03-T01-GRANTS-US-INDIV`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p03-t01-grants-us-indiv)
  (many)

- Part: Part III - Grants and Other Assistance to Domestic Individuals

- Location:

  `SCHED-I-PART-03-COL-E`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

128k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleI/GrantsOtherAsstToIndivInUSGrp/ValuationMethodUsedDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/Form990ScheduleIPartIII/MethodOfValuation` | SZ | 2009–2012 | 16,851 | 3.3% | 31.0% |
| x2 | `IRS990ScheduleI/GrantsOtherAsstToIndivInUSGrp/ValuationMethodUsedDesc` | SZ | 2013–2024 | 111,619 | 3.12% | 29.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.8k | 4.0k | 5.2k | 5.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.5k | 7.3k | 7.8k | 8.3k | 9.2k | 9.2k | 9.6k | 11k | 11k | 11k | 12k | 8.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 128,470 | 7              | 100     |

### Most common values

| Value               | Filings | Share |
|---------------------|---------|-------|
| `FMV`               | 46,164  | 48.6% |
| `N/A`               | 11,802  | 12.4% |
| `COST`              | 8,368   | 8.8%  |
| `BOOK`              | 7,876   | 8.3%  |
| `CASH`              | 7,110   | 7.5%  |
| `FAIR MARKET VALUE` | 4,474   | 4.7%  |
| `Book`              | 3,161   | 3.3%  |
| `Cost`              | 2,436   | 2.6%  |
| `Cash`              | 1,934   | 2.0%  |
| `CASH VALUE`        | 1,466   | 1.5%  |
| `0`                 | 164     | 0.2%  |
| `fmv`               | 56      | 0.1%  |
| `book`              | 32      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | FMV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | MARYVILLE ACADEMY | FMV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421489349300952_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_03_GRANT_US_INDIV_MOV, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
