# SR_03_RLTD_ORG_PTR_PRIMARY_ACT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_PRIMARY_ACT

Primary activity

- Description: Primary business activity; product or service

- Table:

  [`SR-P03-T01-ID-RLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p03-t01-id-rltd-orgs-taxable-partnership)
  (many)

- Part: Part III - Identification of Related Organizations Taxable as a
  Partnership

- Location:

  `SCHED-R-PART-03-COL-B`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

145k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/PrimaryActivitiesTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/PrimaryActivity` | SZ | 2009–2012 | 23,591 | 4.33% | 65.1% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/PrimaryActivitiesTxt` | SZ | 2013–2024 | 121,074 | 2.49% | 67.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.4k | 6.1k | 7.3k | 7.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8.3k | 8.8k | 9.3k | 9.7k | 10k | 11k | 11k | 11k | 12k | 12k | 12k | 6.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 144,665 | 21             | 100     |

### Most common values

| Value                                             | Filings | Share |
|---------------------------------------------------|---------|-------|
| `REAL ESTATE`                                     | 13,701  | 18.6% |
| `LOW INCOME HOUSING`                              | 7,593   | 10.3% |
| `HOUSING`                                         | 7,078   | 9.6%  |
| `INVESTMENTS`                                     | 7,011   | 9.5%  |
| `SURGERY CENTER`                                  | 6,996   | 9.5%  |
| `HEALTHCARE`                                      | 6,121   | 8.3%  |
| `AMBULATORY SURGERY CENTER`                       | 6,020   | 8.2%  |
| `MEDICAL SERVICES`                                | 4,485   | 6.1%  |
| `Real Estate`                                     | 3,055   | 4.2%  |
| `INVESTMENT`                                      | 1,787   | 2.4%  |
| `RADIOLOGY SERVICES`                              | 1,389   | 1.9%  |
| `RADIOLOGY`                                       | 1,285   | 1.7%  |
| `OUTPATIENT SURGERY`                              | 905     | 1.2%  |
| `HEALTH CARE`                                     | 727     | 1.0%  |
| `Ambulatory Surgery Center`                       | 616     | 0.8%  |
| `ACCOUNTABLE CARE ORGANIZATION`                   | 552     | 0.8%  |
| `DIAGNOSTIC IMAGING`                              | 510     | 0.7%  |
| `RENTAL REAL ESTATE`                              | 449     | 0.6%  |
| `HOLDING COMPANY`                                 | 449     | 0.6%  |
| `RENTAL`                                          | 379     | 0.5%  |
| `RENTAL ACTIVITY FOR LOW INCOME FAMILIES/SENIORS` | 371     | 0.5%  |
| `Medical Imaging`                                 | 349     | 0.5%  |
| `AFFORDABLE HOUSING`                              | 275     | 0.4%  |
| `OP SURGERY`                                      | 244     | 0.3%  |
| `Outpatient Surgery`                              | 192     | 0.3%  |
| `Surgery`                                         | 171     | 0.2%  |
| `Investments`                                     | 124     | 0.2%  |
| `Surgery Center`                                  | 115     | 0.2%  |
| `Diagnostic`                                      | 101     | 0.1%  |
| `Cancer Center`                                   | 100     | 0.1%  |
| `Laundry`                                         | 100     | 0.1%  |
| `Medical Clinic`                                  | 99      | 0.1%  |
| `Ambul Surg Ctr`                                  | 98      | 0.1%  |
| `Ambulatory Surg`                                 | 98      | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NEIGHBORHOOD DEVELOPMENT CENTER INC | OPERATE COMMERCIAL REAL ESTATE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202532339349300338_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | NON-RESIDENTIAL PROPERTY MNGT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_PRIMARY_ACT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
