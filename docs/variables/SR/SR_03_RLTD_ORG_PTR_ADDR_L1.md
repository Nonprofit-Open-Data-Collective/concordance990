# SR_03_RLTD_ORG_PTR_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_ADDR_L1

Related organization street address line 1

- Description: Address Foreign - AddressLine1

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

147k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartIII/AddressUS/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/AddressUS/AddressLine1` | SZ | 2009–2012 | 23,460 | 4.3% | 65.1% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartIII/AddressForeign/AddressLine1` | SZ | 2009–2012 | 178 | 0.0312% | 68.5% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/USAddress/AddressLine1` | SZ | 2013–2013 | 8,258 | 4.15% | 65.2% |
| x4 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/ForeignAddress/AddressLine1` | SZ | 2013–2013 | 69 | 0.0347% | 52.2% |
| x5 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/USAddress/AddressLine1Txt` | SZ | 2014–2024 | 112,705 | 2.49% | 66.8% |
| x6 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/ForeignAddress/AddressLine1Txt` | SZ | 2014–2024 | 2,425 | 0.0343% | 49.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.4k | 6.1k | 7.2k | 7.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 23 | 52 | 47 | 56 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 8.3k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 69 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 8.8k | 9.3k | 9.7k | 10k | 11k | 11k | 11k | 12k | 12k | 12k | 6.9k |
| x6 |  |  |  |  |  | 69 | 123 | 130 | 116 | 133 | 294 | 351 | 362 | 360 | 392 | 95 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 147,095 | 21             | 35      |

### Most common values

| Value                             | Filings | Share |
|-----------------------------------|---------|-------|
| `569 BROOKWOOD VILLAGE SUITE 901` | 3,058   | 7.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | McMaster University | 175 Longwood Rd S Ste 105 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202620709349301752_public.xml) |
| 2024 | 990 | x5 | RISEWELL COMMUNITY SERVICES INC FKA | 1 FARMINGDALE ROAD- ROUTE 109 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2013 | 990 | x4 | Lucile Salter Packard Children's | OGIER HOUSE THE ESPLANADE XC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521969349301917_public.xml) |
| 2013 | 990 | x3 | StVincent Anderson Regional Hospital Inc | 10330 N Meridian St Ste 430N | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521409349300637_public.xml) |
| 2012 | 990 | x2 | American Bureau of Shipping | 1803 Bao An Pl 800 Dong Fang | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333179349304363_public.xml) |
| 2012 | 990 | x1 | Mercy Health System of Southeastern Pen… | 1375 Washington Avenue Ste 201 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349308784_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
