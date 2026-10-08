# SR_02_RLTD_ORG_PRIMARY_ACT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_PRIMARY_ACT

Primary activity

- Description: Primary activities

- Table:

  [`SR-P02-T01-ID-RLTD-TAX-EXEMPED-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p02-t01-id-rltd-tax-exemped-orgs)
  (many)

- Part: Part II - Identification of Related Tax-Exempt Organizations

- Location:

  `SCHED-R-PART-02-COL-B`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

826k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartII/PrimaryActivities: longest value is exactly 100 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/PrimaryActivitiesTxt: longest value is exactly 100 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/PrimaryActivities` | SZ | 2009–2012 | 131,293 | 24.5% | 51.8% |
| x2 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/PrimaryActivitiesTxt` | SZ | 2013–2024 | 694,732 | 16.2% | 48.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13k | 33k | 41k | 44k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 47k | 51k | 53k | 55k | 59k | 59k | 60k | 65k | 66k | 67k | 67k | 45k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 40 | 27 | 25 | 25 | 24 | 23 | 23 | 23 | 22 | 22 | 21 | 20 | 20 | 19 | 19 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 826,025 | 23             | 100     |

### Most common values

| Value                     | Filings | Share |
|---------------------------|---------|-------|
| `HOSPITAL`                | 32,614  | 14.9% |
| `FUNDRAISING`             | 30,327  | 13.9% |
| `EDUCATION`               | 30,242  | 13.9% |
| `HEALTHCARE`              | 29,973  | 13.7% |
| `HOUSING`                 | 22,869  | 10.5% |
| `SUPPORT`                 | 18,412  | 8.4%  |
| `FOUNDATION`              | 14,278  | 6.5%  |
| `LOW INCOME HOUSING`      | 8,599   | 3.9%  |
| `SUPPORTING ORGANIZATION` | 7,059   | 3.2%  |
| `INACTIVE`                | 5,045   | 2.3%  |
| `REAL ESTATE`             | 4,821   | 2.2%  |
| `Hospital`                | 3,944   | 1.8%  |
| `MANAGEMENT`              | 3,895   | 1.8%  |
| `HEALTH CARE`             | 2,073   | 0.9%  |
| `CHURCH`                  | 1,912   | 0.9%  |
| `Fundraising`             | 1,083   | 0.5%  |
| `LABOR UNION`             | 568     | 0.3%  |
| `Healthcare`              | 340     | 0.2%  |
| `Foundation`              | 268     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | PROF DEV THOSE IN FIELD OF FIRE & ARSON INVESTIGATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | TO SUPPORT SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK ASSOCIATION, INC. | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_PRIMARY_ACT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
