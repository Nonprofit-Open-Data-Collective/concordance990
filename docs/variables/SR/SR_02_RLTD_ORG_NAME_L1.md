# SR_02_RLTD_ORG_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_NAME_L1

Related organization name line 1

- Description: Name Of Disregarded Entity - BusinessNameLine1

- Table:

  [`SR-P02-T01-ID-RLTD-TAX-EXEMPED-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p02-t01-id-rltd-tax-exemped-orgs)
  (many)

- Part: Part II - Identification of Related Tax-Exempt Organizations

- Location:

  `SCHED-R-PART-02-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

846k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartII/NameOfDisregardedEntity/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/DisregardedEntityName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/DisregardedEntityName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/NameOfDisregardedEntity/BusinessNameLine1` | SZ | 2009–2012 | 134,080 | 25.1% | 51.3% |
| x2 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/DisregardedEntityName/BusinessNameLine1` | SZ | 2013–2013 | 48,298 | 24.3% | 49.4% |
| x3 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/DisregardedEntityName/BusinessNameLine1Txt` | SZ | 2014–2024 | 663,836 | 16.6% | 48.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13k | 34k | 41k | 45k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 48k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 52k | 55k | 56k | 60k | 60k | 62k | 67k | 68k | 69k | 69k | 46k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 40 | 28 | 26 | 25 | 24 | 24 | 23 | 23 | 23 | 22 | 22 | 21 | 20 | 20 | 19 | 17 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 846,214 | 30             | 75      |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `MERCY FOUNDATION INC` | 4,290 | 11.9% |
| `ST MARY MEDICAL CENTER` | 2,605 | 7.2% |
| `ASCENSION HEALTH` | 2,188 | 6.1% |
| `ASCENSION HEALTH ALLIANCE` | 1,947 | 5.4% |
| `ST ALEXIUS MEDICAL CENTER` | 1,513 | 4.2% |
| `TRINITY HEALTH FOUNDATION` | 1,445 | 4.0% |
| `GOOD SAMARITAN HOSPITAL FOUNDATION` | 924 | 2.6% |
| `ST MARY'S FOUNDATION INC` | 855 | 2.4% |
| `ALVERNO PROVENA HOSPITAL LABORATORIES INC` | 789 | 2.2% |
| `MERCY MEDICAL CENTER` | 784 | 2.2% |
| `Ascension Health` | 773 | 2.1% |
| `ST JOSEPH MEDICAL CENTER FOUNDATION` | 753 | 2.1% |
| `MERCY HEALTHCARE FOUNDATION` | 649 | 1.8% |
| `ST MARY'S HOSPITAL FOUNDATION` | 572 | 1.6% |
| `MERCY HEALTH FOUNDATION INC` | 529 | 1.5% |
| `MEDICARE VALUE PARTNERS` | 528 | 1.5% |
| `GULF CARE INC` | 522 | 1.4% |
| `MINNESOTA AFFORDABLE HOUSING TRUST INC` | 431 | 1.2% |
| `SLEEPY EYE AREA HOME HEALTH INC` | 419 | 1.2% |
| `Plains Township VOA Living Center Inc` | 404 | 1.1% |
| `BAUM HARMON MERCY HOSPITAL` | 391 | 1.1% |
| `ST FRANCIS HOSPITAL` | 389 | 1.1% |
| `THE HOMESTEAD AT ROCHESTER INC` | 383 | 1.1% |
| `ROCKLIN VOA ELDERLY HOUSING INC` | 381 | 1.1% |
| `CATHOLIC HEALTH INITIATIVES - IOWA CORP` | 368 | 1.0% |
| `HOUSE OF MERCY` | 368 | 1.0% |
| `MERCY AUXILIARY OF CENTRAL IOWA` | 368 | 1.0% |
| `MERCY CLINICS INC` | 368 | 1.0% |
| `MERCY COLLEGE OF HEALTH SCIENCES` | 368 | 1.0% |
| `MERCY MEDICAL CENTER - CENTERVILLE` | 368 | 1.0% |
| `MERCY FOUNDATION OF DES MOINES IA` | 367 | 1.0% |
| `AGAPE COMMUNITY CENTER OF MILWAUKEE INC` | 269 | 0.7% |
| `CATALPA HEALTH INC` | 269 | 0.7% |
| `MINISTRY WEIGHT MANAGEMENT INC` | 269 | 0.7% |
| `HOWARD YOUNG HEALTH CARE INC` | 268 | 0.7% |
| `THE HOWARD YOUNG MEDICAL CENTER INC` | 268 | 0.7% |
| `Grand Junction VOA Elderly Housing Inc` | 267 | 0.7% |
| `Rocklin VOA Elderly Housing Inc` | 267 | 0.7% |
| `Decatur VOA Living Center Inc` | 265 | 0.7% |
| `ST MARY'S HEALTHCARE` | 262 | 0.7% |
| `CARONDELET REGIONAL MEDICAL PC` | 261 | 0.7% |
| `PRESENCE AMBULATORY SERVICES` | 259 | 0.7% |
| `PRESENCE BEHAVIORAL HEALTH` | 259 | 0.7% |
| `PRESENCE CARE TRANSFORMATION CORPORATION` | 259 | 0.7% |
| `MINISTRY HEALTH CARE INC` | 252 | 0.7% |
| `BINGHAMTON HEALTH CORPORATION` | 235 | 0.7% |
| `LOURDES REALTY COMPANY INC` | 233 | 0.6% |
| `Ascension Health Alliance` | 208 | 0.6% |
| `BAUM HARMON MERCY HOSPITAL AND CLINICS FOUNDATION` | 203 | 0.6% |
| `CATHERINE MCAULEY HEALTH SERVICES CORP` | 203 | 0.6% |
| `MERCY PHYSICIAN NETWORK` | 203 | 0.6% |
| `ST FRANCIS HOSPITAL INC` | 203 | 0.6% |
| `GOTTLIEB MEMORIAL HOSPITAL` | 202 | 0.6% |
| `FIRST COMMUNITY VILLAGE` | 202 | 0.6% |
| `LAKE WALES RETIREMENT CENTER INC` | 202 | 0.6% |
| `NATIONAL CHURCH RESIDENCES AT HOME HEALTH AND WELLNESS CENTRAL OHIO` | 202 | 0.6% |
| `NATIONAL CHURCH RESIDENCES DEVELOPMENT SERVICES` | 202 | 0.6% |
| `NATIONAL CHURCH RESIDENCES OF ATLANTA GA INC` | 202 | 0.6% |
| `VOANS PACE SOUTH CENTRAL OHIO` | 201 | 0.6% |
| `WESTERVILLE SENIOR HOUSING II INC` | 201 | 0.6% |
| `HOLY CROSS HOSPITAL INC` | 190 | 0.5% |
| `NORTHWEST OHIO AREA PACE INC` | 184 | 0.5% |
| `AMICARE HOSPICE SERVICES INC` | 163 | 0.5% |
| `AUXILIARY OF HOLY ROSARY HOSPITAL` | 163 | 0.5% |
| `JAMES ISLAND HARBOR INVESTOR INC` | 146 | 0.4% |
| `CATHEDRAL PIONEER CHURCH HOMES` | 134 | 0.4% |
| `St Mary's Hospital Foundation` | 133 | 0.4% |
| `DOGWOOD RETIREMENT HOUSING INC` | 129 | 0.4% |
| `FAJARDO RHF HOUSING INC` | 129 | 0.4% |
| `St Joseph Medical Center Foundation` | 108 | 0.3% |
| `Good Samaritan Hospital` | 104 | 0.3% |
| `St Mary's Hospital` | 104 | 0.3% |
| `Mercy Medical Center` | 102 | 0.3% |
| `Catholic Health Initiatives` | 101 | 0.3% |
| `Good Samaritan Hospital Foundation` | 101 | 0.3% |
| `Mercy Foundation Inc` | 101 | 0.3% |
| `St Catherine Hospital` | 101 | 0.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | APPALACHIAN CENTER FOR EXCELLENCE IN | ST MARYS HEALTH WAGON INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302369_public.xml) |
| 2013 | 990 | x2 | ST LOUIS VOLUNTEERS OF AMERICA | GRAND JUNCTION VOA ELDERLY HOUSING | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413539349301006_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | SOUTHERN BAPTIST HOSPITAL OF FLORIDA INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
