# SR_03_RLTD_ORG_PTR_CTRL_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_CTRL_NAME_L1

Direct controlling entity organization name line 1

- Description: Direct Controlling Entity Name - BusinessNameLine1

- Table:

  [`SR-P03-T01-ID-RLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p03-t01-id-rltd-orgs-taxable-partnership)
  (many)

- Part: Part III - Identification of Related Organizations Taxable as a
  Partnership

- Location:

  `SCHED-R-PART-03-COL-D`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 5

xpaths observed / mapped

74k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartIII/DirectControllingEntityName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/DirectControllingEntityName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/DirectControllingEntityName/BusinessNameLine1Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/DirectControllingEntityName/BusinessNameLine1` | SZ | 2009–2012 | 11,726 | 2.17% | 60.7% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/DirectControllingEntityName/BusinessNameLine1` | SZ | 2013–2013 | 4,404 | 2.21% | 60.9% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/DirectControllingEntityName/BusinessNameLine1Txt` | SZ | 2014–2024 | 58,080 | 1.16% | 61.9% |
| x4 | `IRS990ScheduleR/Form990ScheduleRPartIII/DirectControllingEntity/NameBusiness/BusinessNameLine1` | SZ | not observed | 0 |  |  |
| x5 | `IRS990ScheduleR/Form990ScheduleRPartIII/DirectControllingEntity/NameBusiness/BusinessNameLine2` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.3k | 3.0k | 3.6k | 3.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.4k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 4.9k | 5.1k | 5.2k | 5.5k | 5.7k | 5.8k | 5.6k | 5.7k | 5.7k | 5.7k | 3.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 74,210  | 8              | 75      |

### Most common values

| Value             | Filings | Share |
|-------------------|---------|-------|
| (blank)           | 23,953  | 59.4% |
| `na`              | 2,262   | 5.6%  |
| `CHI`             | 1,197   | 3.0%  |
| `SFMC`            | 1,036   | 2.6%  |
| `FHS`             | 902     | 2.2%  |
| `ACH`             | 880     | 2.2%  |
| `CHIC`            | 825     | 2.0%  |
| `AH-IMC`          | 704     | 1.7%  |
| `SCH`             | 652     | 1.6%  |
| `DC Holding`      | 538     | 1.3%  |
| `Endoscopy Ventu` | 538     | 1.3%  |
| `Melville ASC`    | 538     | 1.3%  |
| `SJHS`            | 522     | 1.3%  |
| `AHBMHS`          | 489     | 1.2%  |
| `MHCS`            | 485     | 1.2%  |
| `Multispecialty`  | 474     | 1.2%  |
| `SERMC`           | 466     | 1.2%  |
| `Formativ Health` | 466     | 1.2%  |
| `Care Mgmt Grp`   | 448     | 1.1%  |
| `Healthcare`      | 329     | 0.8%  |
| `LICDH Ventures`  | 329     | 0.8%  |
| `HMC`             | 322     | 0.8%  |
| `NS-LIJ Ventures` | 320     | 0.8%  |
| `JH`              | 217     | 0.5%  |
| `SVIMC`           | 189     | 0.5%  |
| `THC`             | 189     | 0.5%  |
| `NSLIJ Urgent Ca` | 145     | 0.4%  |
| `CHI-IA Corp`     | 99      | 0.2%  |
| `MMC`             | 99      | 0.2%  |
| `SJ HospitalLex`  | 98      | 0.2%  |
| `HSEINC`          | 97      | 0.2%  |
| `SJMC`            | 90      | 0.2%  |
| `NSENT`           | 90      | 0.2%  |
| `CSH`             | 76      | 0.2%  |
| `NSUH`            | 73      | 0.2%  |
| `Central Sterile` | 64      | 0.2%  |
| `Chapman`         | 64      | 0.2%  |
| `Magnitude Hold`  | 64      | 0.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | HUNTERS POINT AFFORDABLE HOUSING INC | HUNTERS POINT AFFORDABLE HOUSING INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502769349301530_public.xml) |
| 2013 | 990 | x2 | StVincent Anderson Regional Hospital Inc | StVincent Hospital and Health Care Center Inc | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521409349300637_public.xml) |
| 2012 | 990 | x1 | ROBERT SALIGMAN HOUSE | FEDERATION HOUSING INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421019349300512_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_CTRL_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
