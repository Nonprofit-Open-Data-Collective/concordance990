# SI_02_GRANT_US_ORG_DESC_NONCSH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_DESC_NONCSH

Description of noncash assistance

- Description: Description of non-cash assistance

- Table:

  [`SI-P02-T01-GRANTS-US-ORGS-GOVTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p02-t01-grants-us-orgs-govts)
  (many)

- Part: Part II - Grants and Other Assistance to Domestic Organizations
  and Domestic Governments

- Location:

  `SCHED-I-PART-02-LINE-01-COL-G`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

61k

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
| ⓘ info | No sign of truncation | IRS990ScheduleI/RecipientTable/DescriptionOfNonCashAssistance: longest value is exactly 100 characters; IRS990ScheduleI/RecipientTable/NonCashAssistanceDesc: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/DescriptionOfNonCashAssistance` | SZ | 2009–2012 | 8,968 | 1.72% | 38.0% |
| x2 | `IRS990ScheduleI/RecipientTable/NonCashAssistanceDesc` | SZ | 2013–2024 | 51,753 | 1.45% | 38.8% |
| x3 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/DescriptionOfNonCashGrant` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 857 | 2.2k | 2.8k | 3.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.3k | 3.6k | 3.8k | 3.8k | 4.1k | 4.1k | 4.4k | 4.9k | 5.0k | 5.3k | 5.3k | 4.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 2 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 60,721  | 7              | 100     |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `N/A`       | 21,425  | 71.3% |
| `0`         | 1,411   | 4.7%  |
| `FOOD`      | 1,237   | 4.1%  |
| (blank)     | 1,163   | 3.9%  |
| `NONE`      | 1,151   | 3.8%  |
| `n/a`       | 1,106   | 3.7%  |
| `EQUIPMENT` | 923     | 3.1%  |
| `N A`       | 400     | 1.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | INTERNATIONAL BROTHERHOOD OF ELECTRICAL | N/A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503099349303295_public.xml) |
| 2012 | 990 | x1 | THE CLAYMONT SOCIETY FOR CONTINUOUS | CONVERSATIVE EASEMENT, 264 ACRES LOCATED IN JEFFERSON CO, WV | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341879349300109_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_DESC_NONCSH, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
