# SI_02_GRANT_US_ORG_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SI_02_GRANT_US_ORG_NAME_L1

Grantee name line 1

- Description: Recipient Name Business - BusinessNameLine1

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

547k

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
| ⓘ info | No sign of truncation | IRS990ScheduleI/RecipientTable/RecipientBusinessName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleI/RecipientTable/RecipientBusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters; IRS990ScheduleI/RecipientTable/RecipientNameBusiness/BusinessNameLine1: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleI/RecipientTable/RecipientNameBusiness/BusinessNameLine1` | SZ | 2009–2012 | 71,056 | 14.2% | 51.8% |
| x2 | `IRS990ScheduleI/RecipientTable/RecipientBusinessName/BusinessNameLine1` | SZ | 2013–2013 | 28,273 | 14.2% | 50.4% |
| x3 | `IRS990ScheduleI/RecipientTable/RecipientBusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 447,275 | 14.1% | 51.0% |
| x4 | `IRS990ScheduleI/Form990ScheduleIPartII/RecipientTable/RecipientNameBusiness/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.5k | 17k | 23k | 26k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 28k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 31k | 33k | 35k | 38k | 39k | 41k | 44k | 46k | 49k | 50k | 39k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 17 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 15 | 15 | 14 | 14 | 14 | 14 | 14 | 14 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 546,604 | 27             | 75      |

### Most common values

| Value                                  | Filings | Share |
|----------------------------------------|---------|-------|
| `SALVATION ARMY`                       | 5,366   | 16.5% |
| `AMERICAN RED CROSS`                   | 5,140   | 15.8% |
| `AMERICAN HEART ASSOCIATION`           | 3,719   | 11.4% |
| `AMERICAN CANCER SOCIETY`              | 3,530   | 10.8% |
| `THE SALVATION ARMY`                   | 3,407   | 10.5% |
| `DUKE UNIVERSITY`                      | 2,077   | 6.4%  |
| `CATHOLIC CHARITIES`                   | 1,891   | 5.8%  |
| `YALE UNIVERSITY`                      | 1,874   | 5.8%  |
| `JOHNS HOPKINS UNIVERSITY`             | 1,040   | 3.2%  |
| `STANFORD UNIVERSITY`                  | 900     | 2.8%  |
| `UNIVERSITY OF WASHINGTON`             | 852     | 2.6%  |
| `YMCA`                                 | 604     | 1.9%  |
| `American Heart Association`           | 359     | 1.1%  |
| `HABITAT FOR HUMANITY`                 | 330     | 1.0%  |
| `HAWAII COMMUNITY FOUNDATION`          | 183     | 0.6%  |
| `FEEDING AMERICA`                      | 180     | 0.6%  |
| `NORTHWESTERN UNIVERSITY`              | 177     | 0.5%  |
| `EMORY UNIVERSITY`                     | 173     | 0.5%  |
| `American Cancer Society`              | 172     | 0.5%  |
| `SAMARITAN'S PURSE`                    | 144     | 0.4%  |
| `ST JUDE CHILDREN'S RESEARCH HOSPITAL` | 133     | 0.4%  |
| `BOY SCOUTS OF AMERICA`                | 113     | 0.3%  |
| `MARCH OF DIMES`                       | 79      | 0.2%  |
| `American Red Cross`                   | 46      | 0.1%  |
| `Salvation Army`                       | 36      | 0.1%  |
| `Yale University`                      | 32      | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | THE CLEVELAND CLINIC FOUNDATION | 4KIDS OF SOUTH FLORIDA INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2013 | 990 | x2 | NCS Community Development Corp | Marketview Heights Association | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443019349300219_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | Team Expansion | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SI_02_GRANT_US_ORG_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
