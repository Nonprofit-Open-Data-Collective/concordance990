# SG_01_FUNDRAISER_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_01_FUNDRAISER_NAME_ORG_L1

Fundraiser organization name line 1

- Description: Business Name - BusinessNameLine1

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

55k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleG/FundraiserActivityInfoGrp/OrganizationBusinessName/BusinessNameLine1Txt: longest value is exactly 70 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/FundraiserActivityInformation/NameOfOrganization/BusinessNameLine1` | SZ | 2009–2012 | 8,532 | 1.07% | 27.8% |
| x2 | `IRS990ScheduleG/FundraiserActivityInfoGrp/OrganizationBusinessName/BusinessNameLine1` | SZ | 2013–2013 | 3,147 | 1.04% | 26.5% |
| x3 | `IRS990ScheduleG/FundraiserActivityInfoGrp/OrganizationBusinessName/BusinessNameLine1Txt` | SZ | 2014–2024 | 43,649 | 0.804% | 25.6% |
| x4 | `IRS990ScheduleG/Form990ScheduleGPartI/FundraiserActivityInformation/NameOfIndividualOrOrganization/BusinessName/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 866 | 2.1k | 2.7k | 2.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.1k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 3.4k | 3.5k | 3.6k | 3.9k | 3.9k | 3.9k | 3.9k | 4.3k | 4.7k | 5.0k | 3.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 54,163  | 20             | 70      |
| 990-EZ | 1,165   | 19             | 59      |

### Most common values

| Value                                  | Filings | Share |
|----------------------------------------|---------|-------|
| `RUFFALO NOEL LEVITZ`                  | 328     | 11.4% |
| `COMMUNITY COUNSELLING SERVICE CO LLC` | 163     | 5.7%  |
| `RKD GROUP`                            | 162     | 5.6%  |
| `MARTS & LUNDY`                        | 160     | 5.6%  |
| `SD&A TELESERVICES INC`                | 135     | 4.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | RONALD MCDONALD HOUSE CHARITIES OF | TRUESENSE MARKETING | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513169349302561_public.xml) |
| 2013 | 990 | x2 | Plan International USA Inc | Public Outreach Fundraising | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201520439349300207_public.xml) |
| 2012 | 990 | x1 | PHILABUNDANCE | AMERGENT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421829349300402_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_01_FUNDRAISER_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
