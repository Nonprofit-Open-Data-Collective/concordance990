# SF_02_FRGN_ORG_GRANT_NC_MOV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_02_FRGN_ORG_GRANT_NC_MOV

Method of valuation

- Description: Way the value of noncash assistance was calculated (ex.
  book, fair-market value, appraisal, other)

- Table:

  [`SF-P02-T01-FRGN-ORG-GRANTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p02-t01-frgn-org-grants)
  (many)

- Part: Part II - Grants and Other Assistance to Organizations or
  Entities Outside the United States

- Location:

  `SCHED-F-PART-02-LINE-01-COL-I`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

25k

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
| ⓘ info | No sign of truncation | IRS990ScheduleF/GrantsToOrgOutsideUSGrp/ValuationMethodUsedDesc: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/GrantsToOrgsOutsideUS/MethodOfValuation` | SZ | 2009–2012 | 2,885 | 0.585% | 44.3% |
| x2 | `IRS990ScheduleF/GrantsToOrgOutsideUSGrp/ValuationMethodUsedDesc` | SZ | 2013–2024 | 21,796 | 0.715% | 41.4% |
| x3 | `IRS990ScheduleF/Form990ScheduleFPartII/GrantsToOrgsOutsideUS/MethodOfValuation` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 189 | 726 | 918 | 1.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.2k | 1.4k | 1.5k | 1.6k | 1.7k | 1.7k | 1.8k | 2.1k | 2.2k | 2.3k | 2.3k | 2.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 24,681  | 6              | 100     |

### Most common values

| Value  | Filings | Share |
|--------|---------|-------|
| `FMV`  | 8,710   | 44.4% |
| `N/A`  | 3,155   | 16.1% |
| `BOOK` | 2,344   | 11.9% |
| `CASH` | 1,410   | 7.2%  |
| `Book` | 1,300   | 6.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | FMV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | THE TANZANIA WILDLIFE FUND INC | FMV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342339349300529_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_02_FRGN_ORG_GRANT_NC_MOV, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
