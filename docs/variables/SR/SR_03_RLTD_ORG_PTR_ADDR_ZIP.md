# SR_03_RLTD_ORG_PTR_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_ADDR_ZIP

Related organization zip

- Description: Foreign Address - Postal code

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

6 / 6

xpaths observed / mapped

146k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the ZIP format | 98.7% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ✓ pass | No placeholder values | no all-zero / all-nine placeholders among the most common values |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/AddressUS/ZIPCode` | SZ | 2009–2012 | 23,460 | 4.3% | 65.1% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartIII/AddressForeign/PostalCode` | SZ | 2009–2012 | 142 | 0.0278% | 66.2% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/USAddress/ZIPCode` | SZ | 2013–2013 | 8,258 | 4.15% | 65.2% |
| x4 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/ForeignAddress/PostalCode` | SZ | 2013–2013 | 61 | 0.0307% | 52.5% |
| x5 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/USAddress/ZIPCd` | SZ | 2014–2024 | 112,705 | 2.49% | 66.8% |
| x6 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/ForeignAddress/ForeignPostalCd` | SZ | 2014–2024 | 1,296 | 0.0267% | 70.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.4k | 6.1k | 7.2k | 7.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 12 | 39 | 41 | 50 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 8.3k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 61 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 8.8k | 9.3k | 9.7k | 10k | 11k | 11k | 11k | 12k | 12k | 12k | 6.9k |
| x6 |  |  |  |  |  | 52 | 102 | 110 | 102 | 109 | 119 | 136 | 148 | 164 | 180 | 74 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 141,291 | 90.8% |
| `999999999` | 12,279  | 7.9%  |
| `AA9-9999`  | 663     | 0.4%  |
| `AA9 9AA`   | 497     | 0.3%  |
| `A9A9A9`    | 302     | 0.2%  |
| `999999`    | 157     | 0.1%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | McMaster University | L8P 0A1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202620709349301752_public.xml) |
| 2024 | 990 | x5 | NEIGHBORHOOD DEVELOPMENT CENTER INC | 55104 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202532339349300338_public.xml) |
| 2013 | 990 | x4 | UNIVERSITY HEALTHCARE ALLIANCE | XC JE4 9WG | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201531959349300928_public.xml) |
| 2013 | 990 | x3 | SAN MATEO ELECTRICAL WORKERS HEALTH PLAN | 95660 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201540919349300024_public.xml) |
| 2012 | 990 | x2 | TRUSTEES OF THE UNIVERSITY OF PENNSYLVA… | W1K 6PL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349302062_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 32207 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
