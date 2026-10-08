# SR_03_RLTD_ORG_PTR_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_ADDR_L2

Related organization street address line 2

- Description: Address Foreign - AddressLine2

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

4.5k

filings with a value

2009–2024

tax years observed

0 + 5 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 1% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/AddressUS/AddressLine2` | SZ | 2009–2012 | 124 | 0.0234% | 41.9% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartIII/AddressForeign/AddressLine2` | SZ | 2012–2012 | 2 | 0.00111% |  |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/USAddress/AddressLine2` | SZ | 2013–2013 | 53 | 0.0267% | 41.5% |
| x4 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/ForeignAddress/AddressLine2` | SZ | 2013–2013 | 2 | 0.00101% |  |
| x5 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/USAddress/AddressLine2Txt` | SZ | 2014–2024 | 4,144 | 0.0977% | 70.5% |
| x6 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/ForeignAddress/AddressLine2Txt` | SZ | 2014–2024 | 135 | 0.0018% | 74.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 9 | 31 | 42 | 42 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  | 2 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 53 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 2 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 110 | 110 | 148 | 231 | 598 | 511 | 495 | 488 | 569 | 613 | 271 |
| x6 |  |  |  |  |  | 3 | 4 | 11 | 3 | 12 | 21 | 18 | 18 | 19 | 21 | 5 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 4,460   | 11             | 34      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `SUITE 101` | 1,483   | 8.9%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | PLANET WATER FOUNDATION | WATTHANA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521279349301437_public.xml) |
| 2024 | 990 | x5 | Baptist Health Hospitals | Suite 200 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543179349309514_public.xml) |
| 2013 | 990 | x4 | University of the Virgin Islands | 2 John Brewers Bay | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201531809349301318_public.xml) |
| 2013 | 990 | x3 | AMERICAN FEDERATION OF STATE COUNTY | STE 220 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423189349307737_public.xml) |
| 2012 | 990 | x2 | Agora Partnerships | One Capital Place | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313199349310766_public.xml) |
| 2012 | 990 | x1 | WESLEY ACRES | 1520 COOPER HILL ROAD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420169349300527_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
