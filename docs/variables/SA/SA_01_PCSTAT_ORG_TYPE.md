# SA_01_PCSTAT_ORG_TYPE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_01_PCSTAT_ORG_TYPE

Supported organization type

- Description: Type of organization

- Table:

  [`SA-P01-T01-PUBLIC-CHARITY-STATUS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p01-t01-public-charity-status)
  (many)

- Part: Part I - Reason for Public Charity Status

- Location:

  `SCHED-A-PART-01-LINE-12G-COL-iii`

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
| ▲ warn | Values are text, not numbers | 94% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/SupportedOrgInformation/TypeOfOrganization` | SZ | 2009–2012 | 41,869 | 5.13% | 16.9% |
| x2 | `IRS990ScheduleA/SupportedOrgInformationGrp/OrganizationTypeDesc` | SZ | 2013–2014 | 24,500 | 2.83% | 16.6% |
| x3 | `IRS990ScheduleA/SupportedOrgInformationGrp/OrganizationTypeCd` | SZ | 2014–2024 | 197,493 | 3.48% | 16.0% |
| x4 | `IRS990ScheduleA/Form990ScheduleAPartI/SupportedOrgInformation/TypeOfOrganization` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.0k | 11k | 13k | 14k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 15k | 9.5k |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 6.0k | 16k | 17k | 18k | 18k | 19k | 21k | 22k | 23k | 23k | 16k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 9 | 7 | 6 | 6 | 6 | 3 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 |
| 990-EZ | 7 | 4 | 4 | 4 | 3 | 2 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 203,929 | 2              | 20      |
| 990-EZ | 59,930  | 2              | 20      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `7`         | 65,639  | 24.4% |
| `2`         | 43,416  | 16.1% |
| `10`        | 40,832  | 15.2% |
| `3`         | 37,311  | 13.9% |
| `6`         | 24,130  | 9.0%  |
| `1`         | 20,522  | 7.6%  |
| `9`         | 18,064  | 6.7%  |
| `8`         | 5,235   | 1.9%  |
| `5`         | 4,159   | 1.5%  |
| `03`        | 3,057   | 1.1%  |
| `501(C)(3)` | 2,877   | 1.1%  |
| `4`         | 1,446   | 0.5%  |
| `501(C)(6)` | 808     | 0.3%  |
| `09`        | 551     | 0.2%  |
| `11A`       | 521     | 0.2%  |
| `0`         | 143     | 0.1%  |
| `02`        | 127     | 0.0%  |
| `501(c)(3)` | 102     | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | KRESS FARM GARDEN PRESERVE | 10 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349303827_public.xml) |
| 2014 | 990 | x2 | HSS Horizons Inc | 03 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201533169349306458_public.xml) |
| 2012 | 990 | x1 | Golden Rule Community Development Corp | Church | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312539349300736_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_01_PCSTAT_ORG_TYPE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
