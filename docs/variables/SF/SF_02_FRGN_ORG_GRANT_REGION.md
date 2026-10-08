# SF_02_FRGN_ORG_GRANT_REGION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SF_02_FRGN_ORG_GRANT_REGION

Region

- Description: Region of the grant to the organization outside the US

- Table:

  [`SF-P02-T01-FRGN-ORG-GRANTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sf-p02-t01-frgn-org-grants)
  (many)

- Part: Part II - Grants and Other Assistance to Organizations or
  Entities Outside the United States

- Location:

  `SCHED-F-PART-02-LINE-01-COL-C`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

86k

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
| ⓘ info | No sign of truncation | IRS990ScheduleF/GrantsToOrgOutsideUSGrp/RegionTxt: longest value is exactly 75 characters; IRS990ScheduleF/GrantsToOrgsOutsideUS/Region: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleF/GrantsToOrgsOutsideUS/Region` | SZ | 2009–2012 | 9,424 | 1.93% | 50.3% |
| x2 | `IRS990ScheduleF/GrantsToOrgOutsideUSGrp/RegionTxt` | SZ | 2013–2024 | 76,235 | 2.64% | 48.1% |
| x3 | `IRS990ScheduleF/Form990ScheduleFPartII/GrantsToOrgsOutsideUS/Region` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 558 | 2.4k | 3.0k | 3.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.9k | 4.5k | 5.0k | 5.2k | 5.7k | 6.0k | 6.4k | 7.4k | 7.8k | 8.4k | 8.6k | 7.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 85,659  | 24             | 75      |

### Most common values

| Value                                    | Filings | Share |
|------------------------------------------|---------|-------|
| `Sub-Saharan Africa`                     | 9,877   | 15.3% |
| `SUB-SAHARAN AFRICA`                     | 8,259   | 12.8% |
| `South Asia`                             | 7,500   | 11.6% |
| `SOUTH ASIA`                             | 6,231   | 9.7%  |
| `NORTH AMERICA`                          | 5,516   | 8.6%  |
| `East Asia and the Pacific`              | 5,118   | 7.9%  |
| `EAST ASIA AND THE PACIFIC`              | 4,874   | 7.6%  |
| `SOUTH AMERICA`                          | 4,255   | 6.6%  |
| `Central America and the Caribbean`      | 3,558   | 5.5%  |
| `North America`                          | 2,330   | 3.6%  |
| `EUROPE (INCLUDING ICELAND & GREENLAND)` | 2,228   | 3.5%  |
| `EUROPE`                                 | 1,789   | 2.8%  |
| `South America`                          | 1,626   | 2.5%  |
| `Middle East and North Africa`           | 1,156   | 1.8%  |
| `Europe/Iceland/Greenland`               | 62      | 0.1%  |
| `East Asia/Pacific`                      | 51      | 0.1%  |
| `Europe`                                 | 47      | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | East Asia and Pacific | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | THE TANZANIA WILDLIFE FUND INC | SUB-SAHARAN AFRICA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342339349300529_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SF_02_FRGN_ORG_GRANT_REGION, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
