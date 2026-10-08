# SR_04_RLTD_ORG_CORP_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_04_RLTD_ORG_CORP_NAME_L1

Related organization name line 1

- Description: Name Of Related Org - BusinessNameLine1

- Table:

  [`SR-P04-T01-ID-RLTD-ORGS-TAXABLE-CORPORATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p04-t01-id-rltd-orgs-taxable-corporation)
  (many)

- Part: Part IV - Identification of Related Organizations Taxable as a
  Corporation or Trust

- Location:

  `SCHED-R-PART-04-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

263k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartIV/NameOfRelatedOrg/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/RelatedOrganizationName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/RelatedOrganizationName/BusinessNameLine1Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIV/NameOfRelatedOrg/BusinessNameLine1` | SZ | 2009–2012 | 43,215 | 8.12% | 53.6% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/RelatedOrganizationName/BusinessNameLine1` | SZ | 2013–2013 | 15,520 | 7.8% | 53.0% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/RelatedOrganizationName/BusinessNameLine1Txt` | SZ | 2014–2024 | 204,137 | 4.73% | 53.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.3k | 11k | 13k | 15k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 16k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 17k | 17k | 18k | 19k | 19k | 19k | 21k | 21k | 21k | 21k | 13k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 13 | 9 | 8 | 8 | 8 | 8 | 7 | 7 | 7 | 7 | 7 | 6 | 6 | 6 | 6 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 262,872 | 26             | 75      |

### Most common values

| Value                                                     | Filings | Share |
|-----------------------------------------------------------|---------|-------|
| `AMITA HEALTH CLINICALLY INTEGRATED NETWORK LLC`          | 1,270   | 3.8%  |
| `PRESENCE SERVICE CORPORATION`                            | 1,238   | 3.7%  |
| `AH INCUBATIONS ACCELERATOR INC`                          | 1,218   | 3.6%  |
| `ADVANTAGE HEALTHCO INC`                                  | 994     | 3.0%  |
| `AFFILIATED MEDICAL SERVICES LABORATORY INC`              | 994     | 3.0%  |
| `ALEXIAN BROTHERS CORPUS CHRISTI HOUSING PROJECT LLC`     | 994     | 3.0%  |
| `ASCENSION CAPITAL UK LIMITED`                            | 983     | 2.9%  |
| `CHANTRY PLACE HOUSING INC`                               | 962     | 2.9%  |
| `HILLTOP II SENIOR HOUSING INC`                           | 962     | 2.9%  |
| `HILLTOP SENIOR HOUSING INC`                              | 962     | 2.9%  |
| `HARVARD SCHOOL INC`                                      | 961     | 2.9%  |
| `AFFILIATED HEALTH SERVICES INC`                          | 959     | 2.9%  |
| `JII VOA MM LLC`                                          | 790     | 2.4%  |
| `JI VOA MM LLC`                                           | 788     | 2.3%  |
| `WAGGONER WOODS INC`                                      | 784     | 2.3%  |
| `NCR OF WARREN SENIOR HOUSING INC`                        | 771     | 2.3%  |
| `ABBEY CHURCH ROAD INC`                                   | 760     | 2.3%  |
| `COUNTRY RIDGE APARTMENTS INC`                            | 760     | 2.3%  |
| `ASCENSION CARE MANAGEMENT HEALTH PARTNERS INC`           | 759     | 2.3%  |
| `TH VOA MM LLC`                                           | 592     | 1.8%  |
| `NCR OF WARREN SENIOR HOUSING II INC`                     | 587     | 1.7%  |
| `ASCENSION HEALTH INSURANCE LIMITED`                      | 483     | 1.4%  |
| `ALEXIAN BROTHERS HEALTH PROVIDERS ASSOCIATION INC`       | 479     | 1.4%  |
| `THELEN CORPORATION`                                      | 461     | 1.4%  |
| `TH II VOA MM LLC`                                        | 402     | 1.2%  |
| `TH III VOA MM LLC`                                       | 396     | 1.2%  |
| `GOTTLIEB MANAGEMENT SERVICES INC`                        | 390     | 1.2%  |
| `HACKLEY HEALTH VENTURES INC`                             | 390     | 1.2%  |
| `HEF INC`                                                 | 390     | 1.2%  |
| `HURON ARBOR CORPORATION`                                 | 390     | 1.2%  |
| `MANSFIELD WOODS INC`                                     | 387     | 1.2%  |
| `SAN ANTONIO SENIOR HOUSING INC`                          | 384     | 1.1%  |
| `WESTERVILLE SENIOR HOUSING INC`                          | 384     | 1.1%  |
| `WHITEHALL SENIOR HOUSING INC`                            | 384     | 1.1%  |
| `DES MOINES MEDICAL CENTER INC`                           | 361     | 1.1%  |
| `PRESENCE PROPERTIES INC`                                 | 270     | 0.8%  |
| `PRESENCE VENTURES INC`                                   | 270     | 0.8%  |
| `OMNI MEDICAL GROUP INC`                                  | 268     | 0.8%  |
| `PHYSICIAN SUPPORT SERVICES INC`                          | 268     | 0.8%  |
| `REGIONAL MEDICAL LABORATORIES INC`                       | 268     | 0.8%  |
| `ST JOHN ANESTHESIA SERVICES INC`                         | 268     | 0.8%  |
| `ST JOHN PHYSICIANS INC`                                  | 268     | 0.8%  |
| `ST JOHN URGENT CARE CLINICS INC`                         | 268     | 0.8%  |
| `ASCENSION CARE MANAGEMENT HOLDINGS LTD AND SUBSIDIARIES` | 259     | 0.8%  |
| `ASCENSION MEDICAL GROUP VIA CHRISTI PA`                  | 259     | 0.8%  |
| `L GILBRAITH INSURANCE SPC LTD`                           | 258     | 0.8%  |
| `CORBETT CORPORATION`                                     | 234     | 0.7%  |
| `ALEXIAN VILLAGE OF ELK GROVE`                            | 224     | 0.7%  |
| `ASCENSION VENTURES CORPORATION`                          | 224     | 0.7%  |
| `ASV ST JOHN'S COUNTY INC`                                | 224     | 0.7%  |
| `HACKLEY HEALTHCARE EQUIPMENT CORP`                       | 203     | 0.6%  |
| `HOLY CROSS PRIVATE HOME SERVICES CORP`                   | 203     | 0.6%  |
| `MARYLAND CARE GROUP INC`                                 | 203     | 0.6%  |
| `MEDNOW INC`                                              | 203     | 0.6%  |
| `MERCY MEDICAL SERVICES`                                  | 203     | 0.6%  |
| `MERCY SERVICES CORPORATION`                              | 203     | 0.6%  |
| `NATIONAL CHURCH RESIDENCES AT SISTER'S COURT LLC`        | 202     | 0.6%  |
| `NATIONAL CHURCH RESIDENCES LANDINGS PORT RICHEY FL LLC`  | 202     | 0.6%  |
| `NATIONAL CHURCH RESIDENCES OF ABBEY CHURCH VILLAGE LLC`  | 202     | 0.6%  |
| `NATIONAL CHURCH RESIDENCES OF ARLINGTON BY THE LAKE LLC` | 202     | 0.6%  |
| `NATIONAL CHURCH RESIDENCES OF AVONDALE WOODS II LLC`     | 202     | 0.6%  |
| `NATIONAL CHURCH RESIDENCES OF BALCONES HAUS LLC`         | 202     | 0.6%  |
| `ROOSEVELT TOWNE HOUSING INC`                             | 200     | 0.6%  |
| `VISION CENTER II INC`                                    | 200     | 0.6%  |
| `AFFILIATED MANAGEMENT SERVICES CORPORATION INC`          | 200     | 0.6%  |
| `CHESTNUT RISK SERVICES LTD`                              | 200     | 0.6%  |
| `DIVERSIFIED COMMUNITY SERVICES INC`                      | 200     | 0.6%  |
| `FHS SERVICES INC`                                        | 200     | 0.6%  |
| `FRANCISCAN ASSOCIATES INC`                               | 200     | 0.6%  |
| `HPC CO-OWNERS ASSOCIATION`                               | 187     | 0.6%  |
| `Caduceus Medical Associates Inc`                         | 100     | 0.3%  |
| `Comcare Services`                                        | 100     | 0.3%  |
| `Des Moines Medical Center Inc`                           | 100     | 0.3%  |
| `Franciscan Services Inc`                                 | 100     | 0.3%  |
| `Healthcare Mgmt Services Org Inc`                        | 100     | 0.3%  |
| `MedQuest`                                                | 100     | 0.3%  |
| `Mercy Health Services Corporation`                       | 100     | 0.3%  |
| `Mercy Park Apartments Ltd`                               | 100     | 0.3%  |
| `Mercy Services Corp`                                     | 100     | 0.3%  |
| `Mountain Management Services Inc`                        | 100     | 0.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | RISEWELL COMMUNITY SERVICES INC FKA | FEDERATION BUILDING 74 GP INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2013 | 990 | x2 | StVincent Anderson Regional Hospital Inc | St Mary's Medical Group Inc | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521409349300637_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | PAVILION HEALTH SERVICES INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_04_RLTD_ORG_CORP_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
