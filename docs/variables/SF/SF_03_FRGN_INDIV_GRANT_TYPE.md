# SF_03_FRGN_INDIV_GRANT_TYPE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_03_FRGN_INDIV_GRANT_TYPE

Type of grant or assistance

- Description: Type of grant or assistance to the individuals outside
  the US

- Table:

  [`SF-P03-T01-FRGN-INDIV-GRANTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p03-t01-frgn-indiv-grants)
  (many)

- Part: Part III - Grants and Other Assistance to Individuals Outside
  the United States

- Location:

  `SCHED-F-PART-03-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

33k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleF/ForeignIndividualsGrantsGrp/TypeOfAssistanceTxt: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/GrantsToIndOutsideUS/TypeOfAssistance` | SZ | 2009–2012 | 4,110 | 0.784% | 59.2% |
| x2 | `IRS990ScheduleF/ForeignIndividualsGrantsGrp/TypeOfAssistanceTxt` | SZ | 2013–2024 | 28,581 | 0.903% | 57.4% |
| x3 | `IRS990ScheduleF/Form990ScheduleFPartIII/GrantsToIndOutsideUS/TypeOfAssistance` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 409 | 1.0k | 1.3k | 1.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.6k | 1.8k | 1.9k | 2.1k | 2.3k | 2.3k | 2.4k | 2.5k | 2.8k | 3.1k | 3.2k | 2.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 32,691  | 27             | 1,000   |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `SCHOLARSHIPS` | 1,745   | 32.3% |
| `SCHOLARSHIP`  | 899     | 16.7% |
| `Scholarships` | 685     | 12.7% |
| `Scholarship`  | 358     | 6.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | RESEARCH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | International Sister Cities Association | Scholarships to Swaziland | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431019349300803_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_03_FRGN_INDIV_GRANT_TYPE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
