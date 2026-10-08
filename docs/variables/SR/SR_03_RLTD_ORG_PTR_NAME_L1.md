# SR_03_RLTD_ORG_PTR_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_NAME_L1

Related organization name line 1

- Description: Name Of Related Org - BusinessNameLine1

- Table:

  [`SR-P03-T01-ID-RLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p03-t01-id-rltd-orgs-taxable-partnership)
  (many)

- Part: Part III - Identification of Related Organizations Taxable as a
  Partnership

- Location:

  `SCHED-R-PART-03-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

151k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartIII/NameOfRelatedOrg/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/RelatedOrganizationName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/RelatedOrganizationName/BusinessNameLine1Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/NameOfRelatedOrg/BusinessNameLine1` | SZ | 2009–2012 | 24,126 | 4.48% | 64.4% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/RelatedOrganizationName/BusinessNameLine1` | SZ | 2013–2013 | 8,650 | 4.35% | 64.6% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/RelatedOrganizationName/BusinessNameLine1Txt` | SZ | 2014–2024 | 118,041 | 2.64% | 66.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.5k | 6.2k | 7.4k | 8.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8.6k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 9.3k | 9.8k | 10k | 11k | 11k | 11k | 12k | 12k | 12k | 12k | 7.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 3 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 150,817 | 30             | 75      |

### Most common values

| Value                                                       | Filings | Share |
|-------------------------------------------------------------|---------|-------|
| `ALVERNO CLINICAL LABORATORIES LLC`                         | 1,500   | 4.5%  |
| `BELMONTHARLEM SURGERY CENTER LLC`                          | 1,500   | 4.5%  |
| `PROFESSIONAL CLINICAL LABORATORIES LLC`                    | 1,500   | 4.5%  |
| `GSSVOA LLC`                                                | 977     | 2.9%  |
| `AMBULATORY SURGERY CENTER LP`                              | 783     | 2.3%  |
| `ASCENSION ALPHA FUND LLC`                                  | 783     | 2.3%  |
| `CHATEAU GARDENS HOUSING LLC`                               | 761     | 2.3%  |
| `PCAC GI JV LLC`                                            | 740     | 2.2%  |
| `ALEXIAN REHABILITATION SERVICES LLC`                       | 706     | 2.1%  |
| `BONAVENTURE MEDICAL FOUNDATION LLC`                        | 706     | 2.1%  |
| `PRESENCE LAKESHORE GASTROENTEROLOGY LLC`                   | 706     | 2.1%  |
| `ADVENT REHABILITATION LLC`                                 | 587     | 1.7%  |
| `CLINTON IMAGING SERVICES LLC`                              | 587     | 1.7%  |
| `HAYDEN SENIOR HOUSING LP`                                  | 577     | 1.7%  |
| `HEARTLAND SENIOR HOUSING LP`                               | 577     | 1.7%  |
| `MT BALDY SENIOR HOUSING LP`                                | 577     | 1.7%  |
| `WESTERVILLE SENIOR HOUSING II LLC`                         | 577     | 1.7%  |
| `ROOSEVELT TOWNE APARTMENTS LLC`                            | 576     | 1.7%  |
| `EDEN PLACE SENIOR HOUSING LP`                              | 575     | 1.7%  |
| `ASCENSION VIA CHRISTI IMAGING MANHATTAN LLC`               | 524     | 1.6%  |
| `ASCENSION WISCONSIN EMERUS JV LLC`                         | 524     | 1.6%  |
| `BAPTIST WOMENS HEALTH CENTER LLC`                          | 524     | 1.6%  |
| `ASCENSION ATHO CARRY LP`                                   | 516     | 1.5%  |
| `ASCENSION TOWERBROOK HEALTHCARE OPPORTUNITIES LP`          | 516     | 1.5%  |
| `ST VINCENT'S SLEEP DISORDER CENTER LLC`                    | 469     | 1.4%  |
| `MERCYMANOR PARTNERSHIP`                                    | 469     | 1.4%  |
| `BIG RUN MEDICAL OFFICE BUILDING LIMITED PARTNERSHIP`       | 403     | 1.2%  |
| `MEDILUCENT MOB I`                                          | 390     | 1.2%  |
| `BATTERY PARK SENIOR HOUSING LIMITED PARTNERSHIP`           | 388     | 1.2%  |
| `RIVERSIDE DEVELOPMENT LDHALP`                              | 388     | 1.2%  |
| `FOREST PARK IMAGING LLC`                                   | 387     | 1.2%  |
| `FRANCES WARDE MEDICAL LABORATORY`                          | 387     | 1.2%  |
| `MAGNETIC RESONANCE SERVICES PARTNERSHIP`                   | 387     | 1.2%  |
| `MCE MOB IV LIMITED PARTNERSHIP`                            | 387     | 1.2%  |
| `BUSCH HOMES LP`                                            | 383     | 1.1%  |
| `SMMC MOB II LP`                                            | 371     | 1.1%  |
| `MERCY REHABILITATION HOSPITAL LLC`                         | 361     | 1.1%  |
| `WEST LAKES SURGERY CENTER LLC`                             | 361     | 1.1%  |
| `AMBROSE PARKWOOD WEST II LLC`                              | 267     | 0.8%  |
| `CARMEL AMBULATORY SURGERY CENTER LLC`                      | 267     | 0.8%  |
| `ALLEGAN GENERAL HOSPITAL PAIN ADMINISTRATION SERVICES LLC` | 259     | 0.8%  |
| `ASCENSION HEALTH AT HOME LLC`                              | 259     | 0.8%  |
| `PABHS-UCM RADONC JV LLC`                                   | 246     | 0.7%  |
| `AHA HEALTHBRIDGE PARTNERS LLC`                             | 243     | 0.7%  |
| `NEW YORK HOLDCO LLC`                                       | 234     | 0.7%  |
| `ST VINCENT HEART CENTER OF INDIANA LLC`                    | 225     | 0.7%  |
| `MASON CITY AMBULATORY SURGERY CENTER LLC`                  | 203     | 0.6%  |
| `MERCY HEART CTR OP SERVICES LLC`                           | 203     | 0.6%  |
| `OSWEGO HEALTH HOME CARE LLC`                               | 202     | 0.6%  |
| `ABBEY CHURCH VILLAGE (TC2) HOUSING LIMITED PARTNERSHIP`    | 202     | 0.6%  |
| `ARLINGTON BY THE LAKE SENIOR HOUSING LIMITED PARTNERSHIP`  | 202     | 0.6%  |
| `AVONDALE WOODS II SENIOR HOUSING LIMITED PARTNERSHIP`      | 202     | 0.6%  |
| `AVONDALE WOODS SENIOR HOUSING LIMITED PARTNERSHIP`         | 202     | 0.6%  |
| `BALCONES HAUS SENIOR HOUSING LP`                           | 202     | 0.6%  |
| `BAPTIST GARDENS HOUSING LIMITED PARTNERSHIP`               | 202     | 0.6%  |
| `BARNESVILLE MANOR SENIOR HOUSING LIMITED PARTNERSHIP`      | 202     | 0.6%  |
| `BELL CREST SENIOR HOUSING LIMITED PARTNERSHIP`             | 202     | 0.6%  |
| `BETMAR VILLAGE SENIOR HOUSING LIMITED PARTNERSHIP`         | 202     | 0.6%  |
| `VOANS-CDT JV LLC`                                          | 201     | 0.6%  |
| `CATHERINE HORAN BUILDING ASSOCIATES LP`                    | 200     | 0.6%  |
| `CENTENNIAL SURGUNIT LLC`                                   | 200     | 0.6%  |
| `CENTER FOR DIGESTIVE CARE LLC`                             | 200     | 0.6%  |
| `CENTRAL NEW JERSEY HEART SERVICES LLC`                     | 200     | 0.6%  |
| `JUNEAU I VOA LLC`                                          | 195     | 0.6%  |
| `JUNEAU II VOA LLC`                                         | 195     | 0.6%  |
| `SALUDA CROSSING LLC`                                       | 195     | 0.6%  |
| `VALLEY HOMES LLC`                                          | 195     | 0.6%  |
| `KIRBY MANOR SENIOR LIMITED PARTNERSHIP`                    | 193     | 0.6%  |
| `CHAMBERS BRIDGE URBAN RENEWAL HOUSING LP`                  | 189     | 0.6%  |
| `LAKESIDE APARTMENT HOUSING LP`                             | 189     | 0.6%  |
| `TOWN COMMONS LLC`                                          | 189     | 0.6%  |
| `ABBEY CHURCH VILLAGE LIMITED PARTNERSHIP`                  | 186     | 0.6%  |
| `BRISTOL COURT APARTMENTS LIMITED PARTNERSHIP`              | 186     | 0.6%  |
| `CHANTRY PLACE HOUSING LIMITED PARTNERSHIP`                 | 186     | 0.6%  |
| `CLARA PARK VILLAGE APARTMENTS LIMITED PARTNERSHIP`         | 186     | 0.6%  |
| `COEUR D'ALENE SENIOR HOUSING LIMITED PARTNERSHIP`          | 186     | 0.6%  |
| `COLORADO PLAZA SENIOR HOUSING LIMITED PARTNERSHIP`         | 186     | 0.6%  |
| `COMBINED LOCKS SENIOR HOUSING LIMITED PARTNERSHIP`         | 186     | 0.6%  |
| `IDAHO ASC HOLDINGS LLC`                                    | 184     | 0.5%  |
| `AVANTAS LLC`                                               | 182     | 0.5%  |
| `BERGAN MERCY SURGERY CENTER LLC`                           | 182     | 0.5%  |
| `BLUEGRASS REGIONAL IMAGING CENTER`                         | 182     | 0.5%  |
| `CENTRAL NEBRASKA HOME CARE SERVICES`                       | 182     | 0.5%  |
| `Audubon Land Company LLC`                                  | 100     | 0.3%  |
| `Bluegrass Regional Imaging Center`                         | 100     | 0.3%  |
| `Breckenridge Medical Clinic LLC`                           | 100     | 0.3%  |
| `CHI Operating Investment Program LP`                       | 100     | 0.3%  |
| `Central Nebraska Rehab Services`                           | 100     | 0.3%  |
| `Healthcare Support Services LLC`                           | 100     | 0.3%  |
| `Mercy West Endoscopy LLC`                                  | 100     | 0.3%  |
| `North River Surgery Center LLC`                            | 100     | 0.3%  |
| `OrthoColorado LLC`                                         | 100     | 0.3%  |
| `Penrad Imaging`                                            | 100     | 0.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | THE CLEVELAND CLINIC FOUNDATION | AKRON SURGICAL ASSOCIATES LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2013 | 990 | x2 | StVincent Anderson Regional Hospital Inc | Breast MRI Leasing Company LLC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521409349300637_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | PAVILION ASSOCIATES LTD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
