# SR_03_RLTD_ORG_PTR_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_ADDR_STATE

Related organization state

- Description: Province or state

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

145k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 59 distinct values per xpath and year |
| ✓ pass | Codes share one format | 99% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/AddressUS/State` | SZ | 2009–2012 | 23,460 | 4.3% | 65.1% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartIII/AddressForeign/ProvinceOrState` | SZ | 2009–2012 | 110 | 0.0211% | 80.9% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/USAddress/State` | SZ | 2013–2013 | 8,258 | 4.15% | 65.2% |
| x4 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/ForeignAddress/ProvinceOrState` | SZ | 2013–2013 | 43 | 0.0216% | 67.4% |
| x5 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/USAddress/StateAbbreviationCd` | SZ | 2014–2024 | 112,705 | 2.49% | 66.8% |
| x6 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/ForeignAddress/ProvinceOrStateNm` | SZ | 2014–2024 | 920 | 0.0162% | 68.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.4k | 6.1k | 7.2k | 7.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 18 | 25 | 29 | 38 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 8.3k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 43 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 8.8k | 9.3k | 9.7k | 10k | 11k | 11k | 11k | 12k | 12k | 12k | 6.9k |
| x6 |  |  |  |  |  | 42 | 77 | 77 | 69 | 74 | 87 | 91 | 103 | 123 | 132 | 45 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 24,749  | 14.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | THE CLEVELAND CLINIC FOUNDATION | GRAND CAYMAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2024 | 990 | x5 | THE CLEVELAND CLINIC FOUNDATION | OH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2013 | 990 | x4 | UNIVERSITY HEALTHCARE ALLIANCE | EN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201531959349300928_public.xml) |
| 2013 | 990 | x3 | ST LOUIS VOLUNTEERS OF AMERICA | VA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413539349301006_public.xml) |
| 2012 | 990 | x2 | TRUSTEES OF THE UNIVERSITY OF PENNSYLVA… | LONDON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349302062_public.xml) |
| 2012 | 990 | x1 | JOHNS HOPKINS PHARMAQUIP INC | MD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441299349301834_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
