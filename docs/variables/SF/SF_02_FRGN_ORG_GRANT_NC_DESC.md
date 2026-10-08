# SF_02_FRGN_ORG_GRANT_NC_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_02_FRGN_ORG_GRANT_NC_DESC

Description of noncash assistance

- Description: Description of non-cash assistance to the grantee
  organizations outside the US

- Table:

  [`SF-P02-T01-FRGN-ORG-GRANTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p02-t01-frgn-org-grants)
  (many)

- Part: Part II - Grants and Other Assistance to Organizations or
  Entities Outside the United States

- Location:

  `SCHED-F-PART-02-LINE-01-COL-H`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

14k

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
| ⓘ info | No sign of truncation | IRS990ScheduleF/GrantsToOrgOutsideUSGrp/DescriptionOfNonCashAsstTxt: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/GrantsToOrgsOutsideUS/DescriptionOfNonCashAssistance` | SZ | 2009–2012 | 1,886 | 0.367% | 46.6% |
| x2 | `IRS990ScheduleF/GrantsToOrgOutsideUSGrp/DescriptionOfNonCashAsstTxt` | SZ | 2013–2024 | 12,180 | 0.379% | 39.5% |
| x3 | `IRS990ScheduleF/Form990ScheduleFPartII/GrantsToOrgsOutsideUS/DescriptionOfNonCashAssistance` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 145 | 474 | 608 | 659 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 719 | 869 | 912 | 922 | 958 | 965 | 998 | 1.1k | 1.2k | 1.2k | 1.2k | 1.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 14,066  | 16             | 1,000   |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `N/A` | 4,109   | 61.2% |
| `0`   | 737     | 11.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HELP THE HELPLESS | NONE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520779349300402_public.xml) |
| 2012 | 990 | x1 | SAMARITAN'S PURSE | SHOE BOX GIFTS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201442039349300644_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_02_FRGN_ORG_GRANT_NC_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
