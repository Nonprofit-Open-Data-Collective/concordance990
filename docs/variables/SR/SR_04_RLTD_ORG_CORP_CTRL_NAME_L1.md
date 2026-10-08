# SR_04_RLTD_ORG_CORP_CTRL_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_04_RLTD_ORG_CORP_CTRL_NAME_L1

Direct controlling entity name line 1

- Description: Direct Controlling Entity Name - BusinessNameLine1

- Table:

  [`SR-P04-T01-ID-RLTD-ORGS-TAXABLE-CORPORATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p04-t01-id-rltd-orgs-taxable-corporation)
  (many)

- Part: Part IV - Identification of Related Organizations Taxable as a
  Corporation or Trust

- Location:

  `SCHED-R-PART-04-COL-D`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 4

xpaths observed / mapped

135k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/DirectControllingEntityName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/DirectControllingEntityName/BusinessNameLine1Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIV/DirectControllingEntityName/BusinessNameLine1` | SZ | 2009–2012 | 21,373 | 4.09% | 52.9% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/DirectControllingEntityName/BusinessNameLine1` | SZ | 2013–2013 | 8,000 | 4.02% | 51.1% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblCorpTrGrp/DirectControllingEntityName/BusinessNameLine1Txt` | SZ | 2014–2024 | 105,891 | 2.35% | 51.2% |
| x4 | `IRS990ScheduleR/Form990ScheduleRPartIV/DirectControllingEntity/NameBusiness/BusinessNameLine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.1k | 5.2k | 6.7k | 7.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8.0k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 8.8k | 9.1k | 9.3k | 9.9k | 9.9k | 10k | 10k | 11k | 11k | 11k | 6.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 6 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 135,264 | 9              | 75      |

### Most common values

| Value                                          | Filings | Share |
|------------------------------------------------|---------|-------|
| (blank)                                        | 35,367  | 68.0% |
| `na`                                           | 1,904   | 3.7%  |
| `CHI`                                          | 1,211   | 2.3%  |
| `CHS`                                          | 1,132   | 2.2%  |
| `MMC`                                          | 1,035   | 2.0%  |
| `HMC`                                          | 913     | 1.8%  |
| `SJHS`                                         | 860     | 1.7%  |
| `SHP`                                          | 753     | 1.4%  |
| `ANC`                                          | 646     | 1.2%  |
| `Feinstein`                                    | 535     | 1.0%  |
| `Formativ Health`                              | 535     | 1.0%  |
| `Group Holding`                                | 535     | 1.0%  |
| `Hplan Holding`                                | 535     | 1.0%  |
| `THS`                                          | 533     | 1.0%  |
| `BRHS`                                         | 498     | 1.0%  |
| `NORCORP`                                      | 445     | 0.9%  |
| `Central Suffolk`                              | 402     | 0.8%  |
| `Healthcare`                                   | 402     | 0.8%  |
| `NSH Enterprise`                               | 324     | 0.6%  |
| `LIJ`                                          | 280     | 0.5%  |
| `SJRMC`                                        | 220     | 0.4%  |
| `SAH`                                          | 218     | 0.4%  |
| `ASCENSION HEALTH ALLIANCE`                    | 198     | 0.4%  |
| `ASCENSION CARE MANAGEMENT INSURANCE HOLDINGS` | 197     | 0.4%  |
| `CHIC`                                         | 189     | 0.4%  |
| `CKMC`                                         | 189     | 0.4%  |
| `FHS`                                          | 189     | 0.4%  |
| `CHI-SLH`                                      | 176     | 0.3%  |
| `CHI-SLHBCM`                                   | 176     | 0.3%  |
| `SAMC`                                         | 162     | 0.3%  |
| `SFH`                                          | 159     | 0.3%  |
| `CHI Nebraska`                                 | 159     | 0.3%  |
| `PHI`                                          | 158     | 0.3%  |
| `CHI NEBRASKA`                                 | 121     | 0.2%  |
| `CHI-IA Corp`                                  | 99      | 0.2%  |
| `FSI`                                          | 99      | 0.2%  |
| `MHCS`                                         | 99      | 0.2%  |
| `MHof Williston`                               | 99      | 0.2%  |
| `Foundation`                                   | 90      | 0.2%  |
| `NSHS Enterprise`                              | 90      | 0.2%  |
| `NSH Enterprises`                              | 69      | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | PENNSYLVANIA INSTITUTE OF TECHNOLOGY | PENNSYLVANIA INSTITUTE OF TECHNOLOGY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202641119349301809_public.xml) |
| 2013 | 990 | x2 | NCS Community Development Corp | NCS Community Development Corp | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201443019349300219_public.xml) |
| 2012 | 990 | x1 | ROBERT SALIGMAN HOUSE | FEDERATION HOUSING INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421019349300512_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_04_RLTD_ORG_CORP_CTRL_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
