# SA_01_PCSTAT_ORG_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_01_PCSTAT_ORG_NAME_L1

Supported organization name line 1

- Description: Name - BusinessNameLine1

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

264k

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
| ⓘ info | No sign of truncation | IRS990ScheduleA/SupportedOrgInformation/Name/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleA/SupportedOrgInformationGrp/SupportedOrganizationName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleA/SupportedOrgInformationGrp/SupportedOrganizationName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/SupportedOrgInformation/Name/BusinessNameLine1` | SZ | 2009–2012 | 41,869 | 5.13% | 16.9% |
| x2 | `IRS990ScheduleA/SupportedOrgInformationGrp/SupportedOrganizationName/BusinessNameLine1` | SZ | 2013–2013 | 15,009 | 4.95% | 16.9% |
| x3 | `IRS990ScheduleA/SupportedOrgInformationGrp/SupportedOrganizationName/BusinessNameLine1Txt` | SZ | 2014–2024 | 206,984 | 3.48% | 16.0% |
| x4 | `IRS990ScheduleA/Form990ScheduleAPartI/SupportedOrgInformation/Name/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.0k | 11k | 13k | 14k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 15k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 16k | 16k | 17k | 18k | 18k | 19k | 21k | 22k | 23k | 23k | 16k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 9 | 7 | 6 | 6 | 6 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 |
| 990-EZ | 7 | 4 | 4 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 203,929 | 28             | 75      |
| 990-EZ | 59,930  | 28             | 75      |

### Most common values

| Value                                       | Filings | Share |
|---------------------------------------------|---------|-------|
| `BRIDGE HOUSING CORPORATION`                | 570     | 11.2% |
| `JEWISH FEDERATION OF METROPOLITAN DETROIT` | 491     | 9.6%  |
| `Jewish Federation of Metropolitan Chicago` | 438     | 8.6%  |
| `JEWISH FEDERATION OF CLEVELAND`            | 334     | 6.6%  |
| `THE COLUMBUS FOUNDATION`                   | 322     | 6.3%  |
| `DUKE UNIVERSITY`                           | 317     | 6.2%  |
| `NORTH SHORE UNIVERSITY HOSPITAL`           | 300     | 5.9%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | KRESS FARM GARDEN PRESERVE | Ozark Regional Land Trust | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349303827_public.xml) |
| 2013 | 990EZ | x2 | ROME FLOYD CANCER INITIATIVE INC | NORTHWEST GEORGIA REGIONAL CANCER COALITION INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421359349200432_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | SAN DIEGO FOUNDATION | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_01_PCSTAT_ORG_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
