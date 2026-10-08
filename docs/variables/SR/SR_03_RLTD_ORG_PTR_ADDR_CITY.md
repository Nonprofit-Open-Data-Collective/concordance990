# SR_03_RLTD_ORG_PTR_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_ADDR_CITY

Related organization city

- Description: Foreign Address - City

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartIII/AddressForeign/City: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/ForeignAddress/City: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/ForeignAddress/CityNm: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/AddressUS/City` | SZ | 2009–2012 | 23,460 | 4.3% | 65.1% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartIII/AddressForeign/City` | SZ | 2009–2012 | 166 | 0.0273% | 71.7% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/USAddress/City` | SZ | 2013–2013 | 8,258 | 4.15% | 65.2% |
| x4 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/ForeignAddress/City` | SZ | 2013–2013 | 61 | 0.0307% | 52.5% |
| x5 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/USAddress/CityNm` | SZ | 2014–2024 | 112,705 | 2.49% | 66.8% |
| x6 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/ForeignAddress/CityNm` | SZ | 2014–2024 | 2,332 | 0.0332% | 48.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.4k | 6.1k | 7.2k | 7.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 22 | 50 | 45 | 49 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 8.3k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 61 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 8.8k | 9.3k | 9.7k | 10k | 11k | 11k | 11k | 12k | 12k | 12k | 6.9k |
| x6 |  |  |  |  |  | 61 | 112 | 121 | 108 | 128 | 282 | 341 | 355 | 356 | 376 | 92 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 146,982 | 9              | 35      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `BIRMINGHAM` | 7,505   | 10.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | THE CLEVELAND CLINIC FOUNDATION | GEORGE TOWN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2024 | 990 | x5 | RISEWELL COMMUNITY SERVICES INC FKA | WEST BABYLON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2013 | 990 | x4 | HARVARD REAL ESTATE - ALLSTON INC | SYDNEY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201531349349301853_public.xml) |
| 2013 | 990 | x3 | StVincent Anderson Regional Hospital Inc | Indianapolis | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521409349300637_public.xml) |
| 2012 | 990 | x2 | American Bureau of Shipping | Shanghai | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333179349304363_public.xml) |
| 2012 | 990 | x1 | JOHNS HOPKINS PHARMAQUIP INC | BALTIMORE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441299349301834_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
