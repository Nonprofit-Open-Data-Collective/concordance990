# SA_01_PCSTAT_ORG_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_01_PCSTAT_ORG_NAME_L2

Supported organization name line 2

- Description: Name - BusinessNameLine2

- Table:

  [`SA-P01-T01-PUBLIC-CHARITY-STATUS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p01-t01-public-charity-status)
  (many)

- Part: Part I - Reason for Public Charity Status

- Location:

  `SCHED-A-PART-01-LINE-12G-COL-i`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

21k

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
| ⓘ info | No sign of truncation | IRS990ScheduleA/SupportedOrgInformationGrp/SupportedOrganizationName/BusinessNameLine2Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/SupportedOrgInformation/Name/BusinessNameLine2` | SZ | 2009–2012 | 2,015 | 0.275% | 4.9% |
| x2 | `IRS990ScheduleA/SupportedOrgInformationGrp/SupportedOrganizationName/BusinessNameLine2` | SZ | 2013–2013 | 875 | 0.289% | 10.9% |
| x3 | `IRS990ScheduleA/SupportedOrgInformationGrp/SupportedOrganizationName/BusinessNameLine2Txt` | SZ | 2014–2024 | 18,258 | 0.317% | 13.2% |
| x4 | `IRS990ScheduleA/Form990ScheduleAPartI/SupportedOrgInformation/Name/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 139 | 495 | 629 | 752 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 875 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 1.2k | 1.4k | 1.5k | 1.6k | 1.6k | 1.7k | 1.8k | 2.0k | 2.0k | 1.9k | 1.4k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 15,174  | 24             | 55      |
| 990-EZ | 5,974   | 26             | 75      |

### Most common values

| Value                 | Filings | Share |
|-----------------------|---------|-------|
| `- AMERICAN PROVINCE` | 82      | 9.3%  |
| `SE PROVINCE`         | 72      | 8.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | RAY A & KATHRYN A ECKSTEIN | 715 EAST AMELIA STREET CASSVILLE WI 53806 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510489349301051_public.xml) |
| 2013 | 990 | x2 | CARO COMMUNITY HEALTHCARE ALLIANCE | CARO COMMUNITY HOSPITAL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403089349300415_public.xml) |
| 2012 | 990EZ | x1 | LOUIS PIZITZ MIDDLE SCHOOL PTO | PIZITZ MIDDLE SCHOOL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322699349200302_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_01_PCSTAT_ORG_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
