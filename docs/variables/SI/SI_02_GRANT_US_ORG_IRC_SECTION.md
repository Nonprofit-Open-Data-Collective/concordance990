# SI_02_GRANT_US_ORG_IRC_SECTION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_IRC_SECTION

Grantee IRC section

- Description: IRC code section if applicable

- Table:

  [`SI-P02-T01-GRANTS-US-ORGS-GOVTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p02-t01-grants-us-orgs-govts)
  (many)

- Part: Part II - Grants and Other Assistance to Domestic Organizations
  and Domestic Governments

- Location:

  `SCHED-I-PART-02-LINE-01-COL-C`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

388k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 2% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/IRCSection` | SZ | 2009–2012 | 52,865 | 10.3% | 52.2% |
| x2 | `IRS990ScheduleI/RecipientTable/IRCSectionDesc` | SZ | 2013–2024 | 335,602 | 9.45% | 51.9% |
| x3 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/IRCSection` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.6k | 13k | 17k | 18k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 20k | 23k | 24k | 25k | 27k | 28k | 29k | 32k | 32k | 34k | 35k | 26k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 14 | 11 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 9 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 388,467 | 9              | 20      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `501(C)(3)`  | 172,841 | 49.8% |
| `501(c)(3)`  | 52,303  | 15.1% |
| `501C3`      | 43,920  | 12.7% |
| `501(C)3`    | 14,382  | 4.1%  |
| `3`          | 14,113  | 4.1%  |
| `GOV`        | 13,372  | 3.9%  |
| `501c3`      | 11,625  | 3.3%  |
| `501(C)(6)`  | 9,534   | 2.7%  |
| `501(C)(4)`  | 7,426   | 2.1%  |
| `GOVERNMENT` | 4,012   | 1.2%  |
| `N/A`        | 1,181   | 0.3%  |
| `501(c)3`    | 970     | 0.3%  |
| `501`        | 958     | 0.3%  |
| `115`        | 381     | 0.1%  |
| `501(c)(6)`  | 87      | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | 501(C)(3) | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | 501 (C)(3) | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_IRC_SECTION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
