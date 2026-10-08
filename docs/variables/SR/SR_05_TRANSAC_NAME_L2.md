# SR_05_TRANSAC_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_05_TRANSAC_NAME_L2

Related organization name line 2

- Description: Name Of Other Organization - BusinessNameLine2

- Table:

  [`SR-P05-T01-TRANSACTIONS-RLTD-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p05-t01-transactions-rltd-orgs)
  (many)

- Part: Part V - Transactions With Related Organizations

- Location:

  `SCHED-R-PART-05-LINE-02-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

9.0k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 3% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/TransactionsRelatedOrgsTable/NameOfOtherOrganization/BusinessNameLine2` | SZ | 2009–2012 | 1,194 | 0.243% | 56.6% |
| x2 | `IRS990ScheduleR/TransactionsRelatedOrgGrp/OtherOrganizationName/BusinessNameLine2` | SZ | 2013–2013 | 490 | 0.246% | 56.3% |
| x3 | `IRS990ScheduleR/TransactionsRelatedOrgGrp/OtherOrganizationName/BusinessNameLine2Txt` | SZ | 2014–2024 | 7,274 | 0.175% | 47.3% |
| x4 | `IRS990ScheduleR/Form990ScheduleRPartV/TransactionsRelatedOrgsTable/NameOfOtherOrganization/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 111 | 276 | 370 | 437 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 490 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 496 | 524 | 574 | 681 | 670 | 701 | 780 | 790 | 801 | 771 | 486 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 8,958   | 20             | 67      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `FOUNDATION` | 337     | 23.6% |
| `INC`        | 151     | 10.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | ST PAUL ELDER SERVICES INC | SPONSORED MINISTRIES INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349309200_public.xml) |
| 2013 | 990 | x2 | PORT CO BUSINESS COUNCIL FOUNDATION | PORTAGE COUNTY BUSINESS COUNCIL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402239349301165_public.xml) |
| 2012 | 990 | x1 | PLUMBERS & STEAMFITTERS LOCAL 42 | LOCAL 42 BUILDING CORP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333509349300813_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_05_TRANSAC_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
