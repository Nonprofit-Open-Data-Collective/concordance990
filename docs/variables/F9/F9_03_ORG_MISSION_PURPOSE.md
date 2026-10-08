# F9_03_ORG_MISSION_PURPOSE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_03_ORG_MISSION_PURPOSE

Organization mission

- Description: Organization's Mission/Organization's primary exempt
  purpose

- Table:

  [`F9-P03-T00-MISSION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p03-t00-mission)
  (one)

- Part: Part III - Statement of Program Service Accomplishments

- Location:

  `F990-PC-PART-03-LINE-01`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 8

xpaths observed / mapped

6.0M

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
| ⓘ info | No sign of truncation | IRS990EZ/PrimaryExemptPurpose: longest value is exactly 1000 characters; IRS990EZ/PrimaryExemptPurposeTxt: longest value is exactly 1000 characters; IRS990/MissionDesc: longest value is exactly 1000 characters; IRS990/MissionDescription: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/MissionDescription` | PC | 2009–2012 | 494,531 | 99.9% |  |
| x2 | `IRS990EZ/PrimaryExemptPurpose` | EZ | 2009–2012 | 254,594 | 100% |  |
| x3 | `IRS990/MissionDesc` | PC | 2013–2024 | 3,342,665 | 99.7% |  |
| x4 | `IRS990EZ/PrimaryExemptPurposeTxt` | EZ | 2013–2024 | 1,881,301 | 100% |  |
| x5 | `IRS990/Form990PartIII/MissionDescription` | PC | not observed | 0 |  |  |
| x6 | `IRS990/PrimaryExemptPurpose` | PC | not observed | 0 |  |  |
| x7 | `IRS990EZ/MissionDesc` | EZ | not observed | 0 |  |  |
| x8 | `IRS990EZ/MissionDescription` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 123k | 159k | 180k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 15k | 63k | 82k | 94k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 199k | 218k | 233k | 244k | 261k | 271k | 283k | 319k | 336k | 348k | 354k | 276k |
| x4 |  |  |  |  | 104k | 116k | 125k | 130k | 139k | 149k | 153k | 170k | 203k | 206k | 206k | 179k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 98 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,837,170 | 188            | 1,000   |
| 990-EZ | 2,135,878 | 132            | 1,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `SEE SCHEDULE O` | 48,554 | 35.3% |
| `NONE` | 24,268 | 17.6% |
| `See Schedule O` | 17,857 | 13.0% |
| `EDUCATION` | 8,186 | 6.0% |
| `SEE SCHEDULE O.` | 6,017 | 4.4% |
| `LABOR UNION` | 5,947 | 4.3% |
| `None` | 5,087 | 3.7% |
| `COMMUNITY SERVICE` | 3,067 | 2.2% |
| `Education` | 2,738 | 2.0% |
| `RELIGIOUS` | 1,626 | 1.2% |
| `CHURCH` | 1,496 | 1.1% |
| `ORIGINATING FROM A CHRISTIAN COMMITMENT OF SERVICE, OUR MISSION IS TO PROVIDE HIGH QUALIT…` | 1,422 | 1.0% |
| `Collective Bargaining` | 1,376 | 1.0% |
| `THE MISSION OF NATIONAL CHURCH RESIDENCES IS TO PROVIDE QUALITY HOUSING AND CARE AT AFFOR…` | 1,231 | 0.9% |
| `ROOTED IN THE LOVING MINISTRY OF JESUS AS HEALER, WE COMMIT OURSELVES TO SERVING ALL PERS…` | 1,020 | 0.7% |
| `AGRICULTURE PROMOTION` | 906 | 0.7% |
| `THE ORGANIZATION WAS ESTABLISHED TO FURTHER THE INTERESTS OF ITS MEMBERSHIP BY SEEKING IM…` | 881 | 0.6% |
| `EDUCATIONAL` | 779 | 0.6% |
| `FRATERNAL ORGANIZATION` | 597 | 0.4% |
| `Promote social and economic justice through collective bargaining, meetings, education, c…` | 548 | 0.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | THE CREATIVES PROJECT INC | ARTS ED AND DEVELOPMENT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2024 | 990 | x3 | OWL CREEK COUNTRY CLUB | TO PROVIDE RECREATIONAL SERVICES AND ENTERTAINMENT TO MEMBERS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990EZ | x2 | PLACERVILLE ROTARY CLUB | SERVICE ABOVE SELF | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | CONTINUE THE HEALING MINISTRY OF CHRIST BY PROVIDING ACCESSIBLE, QUALITY HEALTH… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_03_ORG_MISSION_PURPOSE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
