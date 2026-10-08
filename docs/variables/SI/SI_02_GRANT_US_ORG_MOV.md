# SI_02_GRANT_US_ORG_MOV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_MOV

Method of valuation

- Description: Method of valuation (book. FMV; appraisal; other)

- Table:

  [`SI-P02-T01-GRANTS-US-ORGS-GOVTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p02-t01-grants-us-orgs-govts)
  (many)

- Part: Part II - Grants and Other Assistance to Domestic Organizations
  and Domestic Governments

- Location:

  `SCHED-I-PART-02-LINE-01-COL-F`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

101k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleI/RecipientTable/ValuationMethodUsedDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/MethodOfValuation` | SZ | 2009–2012 | 13,806 | 2.73% | 39.4% |
| x2 | `IRS990ScheduleI/RecipientTable/ValuationMethodUsedDesc` | SZ | 2013–2024 | 87,516 | 2.54% | 39.6% |
| x3 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/MethodOfValuation` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.2k | 3.4k | 4.3k | 4.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.4k | 5.9k | 6.2k | 6.4k | 7.1k | 7.1k | 7.5k | 8.3k | 8.5k | 9.0k | 9.1k | 7.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 101,322 | 5              | 100     |

### Most common values

| Value               | Filings | Share |
|---------------------|---------|-------|
| `FMV`               | 32,789  | 40.8% |
| `N/A`               | 16,807  | 20.9% |
| `CASH`              | 9,338   | 11.6% |
| `BOOK`              | 6,914   | 8.6%  |
| `COST`              | 4,942   | 6.1%  |
| `Cash`              | 2,699   | 3.4%  |
| `Book`              | 2,308   | 2.9%  |
| `FAIR MARKET VALUE` | 2,056   | 2.6%  |
| `BOOK VALUE`        | 902     | 1.1%  |
| `CASH VALUE`        | 790     | 1.0%  |
| `Cost`              | 564     | 0.7%  |
| `n/a`               | 215     | 0.3%  |
| `cash`              | 92      | 0.1%  |
| `fmv`               | 34      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | INTERNATIONAL BROTHERHOOD OF ELECTRICAL | COST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503099349303295_public.xml) |
| 2012 | 990 | x1 | Ved Vignan Mahavidyapeeth | Book | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333229349300203_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_MOV, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
