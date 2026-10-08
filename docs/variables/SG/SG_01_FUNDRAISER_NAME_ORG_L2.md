# SG_01_FUNDRAISER_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_01_FUNDRAISER_NAME_ORG_L2

Fundraiser organization name line 2

- Description: Business Name - BusinessNameLine2

- Table:

  [`SG-P01-T01-FUNDRAISERS-INFO`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p01-t01-fundraisers-info)
  (many)

- Part: Part I - Fundraising Activities

- Location:

  `SCHED-G-PART-01-LINE-02B-COL-i`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

306

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 2% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/FundraiserActivityInformation/NameOfOrganization/BusinessNameLine2` | SZ | 2009–2012 | 69 | 0.00914% | 4.3% |
| x2 | `IRS990ScheduleG/FundraiserActivityInfoGrp/OrganizationBusinessName/BusinessNameLine2` | SZ | 2013–2013 | 24 | 0.00791% | 4.2% |
| x3 | `IRS990ScheduleG/FundraiserActivityInfoGrp/OrganizationBusinessName/BusinessNameLine2Txt` | SZ | 2014–2024 | 213 | 0.00373% | 6.1% |
| x4 | `IRS990ScheduleG/Form990ScheduleGPartI/FundraiserActivityInformation/NameOfIndividualOrOrganization/BusinessName/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3 | 19 | 22 | 25 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 24 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 20 | 18 | 22 | 17 | 17 | 18 | 20 | 23 | 25 | 16 | 17 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  |  |  |  |  |  |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 297     | 18             | 48      |
| 990-EZ | 9       | 11             | 17      |

### Most common values

| Value                   | Filings | Share |
|-------------------------|---------|-------|
| `RUSS REID COMPANY INC` | 10      | 6.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | HOSPITAL FOR SICK CHILDREN FOUNDATION | A Division of The Interpublic Group of Companies | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640489349302204_public.xml) |
| 2013 | 990 | x2 | RONALD MCDONALD HOUSE OF SOUTHERN | LAUTMAN MASKA NEILL & COMPANY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441359349305199_public.xml) |
| 2012 | 990 | x1 | EDUCATIONAL COMMUNICATIONS | SHARE MEDIA SERVICES INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321339349304267_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_01_FUNDRAISER_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
