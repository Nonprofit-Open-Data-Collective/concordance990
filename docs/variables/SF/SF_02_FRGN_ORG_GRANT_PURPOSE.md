# SF_02_FRGN_ORG_GRANT_PURPOSE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_02_FRGN_ORG_GRANT_PURPOSE

Purpose of grant

- Description: Purpose of the grant to the organization outside the US

- Table:

  [`SF-P02-T01-FRGN-ORG-GRANTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p02-t01-frgn-org-grants)
  (many)

- Part: Part II - Grants and Other Assistance to Organizations or
  Entities Outside the United States

- Location:

  `SCHED-F-PART-02-LINE-01-COL-D`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

94k

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
| ⓘ info | No sign of truncation | IRS990ScheduleF/GrantsToOrgOutsideUSGrp/PurposeOfGrantTxt: longest value is exactly 1000 characters; IRS990ScheduleF/GrantsToOrgsOutsideUS/PurposeOfGrant: longest value is exactly 1000 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/GrantsToOrgsOutsideUS/PurposeOfGrant` | SZ | 2009–2012 | 9,607 | 2.01% | 49.6% |
| x2 | `IRS990ScheduleF/GrantsToOrgOutsideUSGrp/PurposeOfGrantTxt` | SZ | 2013–2024 | 84,027 | 2.95% | 46.7% |
| x3 | `IRS990ScheduleF/Form990ScheduleFPartII/GrantsToOrgsOutsideUS/PurposeOfGrant` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 543 | 2.4k | 3.1k | 3.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.2k | 4.8k | 5.4k | 5.7k | 6.3k | 6.6k | 7.1k | 8.1k | 8.7k | 9.3k | 9.6k | 8.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 93,634  | 32             | 1,000   |

### Most common values

| Value             | Filings | Share |
|-------------------|---------|-------|
| `GENERAL SUPPORT` | 3,320   | 25.9% |
| `EDUCATION`       | 2,307   | 18.0% |
| `RESEARCH`        | 1,445   | 11.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | RESEARCH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | CARITAS WONJU INTERNATIONAL RELIEF | SUPPORT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341559349300734_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_02_FRGN_ORG_GRANT_PURPOSE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
