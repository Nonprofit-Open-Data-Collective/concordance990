# SI_02_GRANT_US_ORG_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_NAME_L2

Grantee name line 2

- Description: Recipient Name Business - BusinessNameLine2

- Table:

  [`SI-P02-T01-GRANTS-US-ORGS-GOVTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#si-p02-t01-grants-us-orgs-govts)
  (many)

- Part: Part II - Grants and Other Assistance to Domestic Organizations
  and Domestic Governments

- Location:

  `SCHED-I-PART-02-LINE-01-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 4

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
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/RecipientNameBusiness/BusinessNameLine2` | SZ | 2009–2012 | 1,668 | 0.342% | 37.6% |
| x2 | `IRS990ScheduleI/RecipientTable/RecipientBusinessName/BusinessNameLine2` | SZ | 2013–2013 | 641 | 0.322% | 35.1% |
| x3 | `IRS990ScheduleI/RecipientTable/RecipientBusinessName/BusinessNameLine2Txt` | SZ | 2014–2024 | 12,117 | 0.437% | 34.2% |
| x4 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/RecipientNameBusiness/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 107 | 408 | 539 | 614 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 641 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 707 | 797 | 901 | 948 | 1.0k | 1.0k | 1.2k | 1.3k | 1.4k | 1.5k | 1.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 14,426  | 18             | 69      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `FOUNDATION` | 495     | 23.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | JCC FUND | AT MOUNT SINAI | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610229349300416_public.xml) |
| 2013 | 990 | x2 | LUDINGTON AREA CATHOLIC EDUCATION | ST SIMON'S CATHOLIC CHURCH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201400209349300600_public.xml) |
| 2012 | 990 | x1 | MCPHERSON COUNTY COMMUNITY FOUNDATI | HUNGARY KIDS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410999349300731_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
