# SR_02_RLTD_ORG_CTRL_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_CTRL_NAME_L1

Direct controlling entity name line 1

- Description: Direct Controlling Entity Name - BusinessNameLine1

- Table:

  [`SR-P02-T01-ID-RLTD-TAX-EXEMPED-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p02-t01-id-rltd-tax-exemped-orgs)
  (many)

- Part: Part II - Identification of Related Tax-Exempt Organizations

- Location:

  `SCHED-R-PART-02-COL-F`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

402k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartII/DirectControllingEntityName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/DirectControllingEntityName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/DirectControllingEntityName/BusinessNameLine1Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/DirectControllingEntityName/BusinessNameLine1` | SZ | 2009–2012 | 58,842 | 11.3% | 62.3% |
| x2 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/DirectControllingEntityName/BusinessNameLine1` | SZ | 2013–2013 | 22,177 | 11.2% | 60.0% |
| x3 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/DirectControllingEntityName/BusinessNameLine1Txt` | SZ | 2014–2024 | 321,243 | 7.89% | 56.9% |
| x4 | `IRS990ScheduleR/Form990ScheduleRPartII/DirectControllingEntity/NameBusiness/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.6k | 15k | 18k | 20k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 22k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 24k | 26k | 27k | 29k | 29k | 30k | 33k | 33k | 34k | 34k | 22k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 17 | 12 | 11 | 11 | 11 | 11 | 11 | 11 | 11 | 11 | 11 | 10 | 10 | 10 | 10 | 8 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 402,262 | 19             | 75      |

### Most common values

| Value                                           | Filings | Share |
|-------------------------------------------------|---------|-------|
| (blank)                                         | 115,949 | 76.6% |
| `na`                                            | 6,363   | 4.2%  |
| `NONE`                                          | 5,656   | 3.7%  |
| `NO`                                            | 3,823   | 2.5%  |
| `SJHS`                                          | 2,895   | 1.9%  |
| `ASCENSION HEALTH ALLIANCE`                     | 2,459   | 1.6%  |
| `ASCENSION HEALTH`                              | 1,969   | 1.3%  |
| `MMC`                                           | 1,626   | 1.1%  |
| `PRESENCE CARE TRANSFORMATION CORPORATION`      | 1,499   | 1.0%  |
| `ALEXIAN BROTHERS HEALTH SYSTEM`                | 762     | 0.5%  |
| `Alexian Brothers Health System`                | 738     | 0.5%  |
| `YES`                                           | 506     | 0.3%  |
| `AFFINITY HEALTH SYSTEM`                        | 492     | 0.3%  |
| `GENESYS HEALTH SYSTEM`                         | 461     | 0.3%  |
| `Ascension Health Alliance`                     | 364     | 0.2%  |
| `BHC`                                           | 330     | 0.2%  |
| `SFH`                                           | 317     | 0.2%  |
| `Ascension Health`                              | 314     | 0.2%  |
| `FHS`                                           | 294     | 0.2%  |
| `ASCENSION SACRED HEART-STMARY'S HOSPITALS INC` | 269     | 0.2%  |
| `COLUMBIA ST MARY'S INC`                        | 269     | 0.2%  |
| `ST MARY'S HEALTHCARE`                          | 262     | 0.2%  |
| `CHS`                                           | 256     | 0.2%  |
| `SJMC`                                          | 243     | 0.2%  |
| `SLCHS`                                         | 208     | 0.1%  |
| `MERCY HEALTH PARTNERS`                         | 203     | 0.1%  |
| `MOUNT CARMEL HEALTH SYSTEM`                    | 203     | 0.1%  |
| `SAINT ALPHONSUS HEALTH SYSTEM INC`             | 203     | 0.1%  |
| `NATIONAL CHURCH RESIDENCES`                    | 203     | 0.1%  |
| `HOLY CROSS HOSPITAL INC`                       | 187     | 0.1%  |
| `TRINITY HEALTH CORPORATION`                    | 185     | 0.1%  |
| `CATHOLIC HEALTH MINISTRIES`                    | 182     | 0.1%  |
| `ST PETER'S HOSPITAL`                           | 160     | 0.1%  |
| `CATHOLIC HEALTH EAST`                          | 159     | 0.1%  |
| `LTC (EDDY) INC`                                | 159     | 0.1%  |
| `SJHHC`                                         | 136     | 0.1%  |
| `Sole Member`                                   | 129     | 0.1%  |
| `Catholic Health East`                          | 123     | 0.1%  |
| `MERCY HOUSING INC`                             | 116     | 0.1%  |
| `SJHM`                                          | 114     | 0.1%  |
| `ASI`                                           | 113     | 0.1%  |
| `No`                                            | 103     | 0.1%  |
| `FH`                                            | 102     | 0.1%  |
| `GHS`                                           | 101     | 0.1%  |
| `GSH`                                           | 101     | 0.1%  |
| `SCH`                                           | 101     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | RISEWELL COMMUNITY SERVICES INC FKA | RISEWELL COMMUNITY SERVICES INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2013 | 990 | x2 | JUNIOR ACHIEVEMENT OF EAST TEXAS INC |  | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201530489349302423_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | BAPTIST HEALTH SYSTEM INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_CTRL_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
