# SR_06_UNRLTD_ORG_PTR_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_06_UNRLTD_ORG_PTR_ADDR_L1

Unrelated organization street address line 1

- Description: Address Foreign - AddressLine1

- Table:

  [`SR-P06-T01-UNRLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p06-t01-unrltd-orgs-taxable-partnership)
  (many)

- Part: Part VI - Unrelated Organizations Taxable as a Partnership

- Location:

  `SCHED-R-PART-06-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

6 / 6

xpaths observed / mapped

2.5k

filings with a value

2009–2024

tax years observed

0 + 4 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartVI/AddressUS/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartVI/AddressUS/AddressLine1` | SZ | 2009–2012 | 418 | 0.0768% | 23.2% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartVI/AddressForeign/AddressLine1` | SZ | 2011–2012 | 2 | 0.000557% |  |
| x3 | `IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/USAddress/AddressLine1` | SZ | 2013–2013 | 153 | 0.0769% | 25.5% |
| x4 | `IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/ForeignAddress/AddressLine1` | SZ | 2013–2013 | 1 | 0.000503% |  |
| x5 | `IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/USAddress/AddressLine1Txt` | SZ | 2014–2024 | 1,926 | 0.0397% | 22.8% |
| x6 | `IRS990ScheduleR/UnrelatedOrgTxblPartnershipGrp/ForeignAddress/AddressLine1Txt` | SZ | 2014–2024 | 16 | 0.000721% | 25.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 47 | 115 | 118 | 138 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 153 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 154 | 161 | 168 | 188 | 184 | 198 | 214 | 196 | 183 | 170 | 110 |
| x6 |  |  |  |  |  | 1 | 1 | 1 | 1 | 3 | 2 | 2 | 2 | 1 |  | 2 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 2,516   | 23             | 35      |

### Most common values

| Value              | Filings | Share |
|--------------------|---------|-------|
| `304 E CHURCH AVE` | 128     | 23.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | MARGOT AND TOM PRITZKER FOUNDATION | 190 ELGIN AVENUE GEORGE TOWN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349316036_public.xml) |
| 2024 | 990 | x5 | STADIUM PLACE INC | 7464 NEW RIDGE ROAD STE 5 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610489349301711_public.xml) |
| 2013 | 990 | x4 | VAN OTTERLOO FAMILY FOUNDATION | WALKER HOUSE 87 MARY STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201502269349303270_public.xml) |
| 2013 | 990 | x3 | JAMAICA PLAIN NEIGHBORHOOD DEVELOPMENT … | 31 GERMANIA STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433079349301568_public.xml) |
| 2012 | 990 | x2 | VAN OTTERLOO FAMILY FOUNDATION | WALKER HOUSE 87 MARY STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422279349303217_public.xml) |
| 2012 | 990 | x1 | GEORGETOWN HEALTHCARE SYSTEM | 98 SAN JACINTO BLVD STE 1800 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323199349306767_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_06_UNRLTD_ORG_PTR_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
