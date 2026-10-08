# SR_02_RLTD_ORG_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_ADDR_L1

Related organization street address line 1

- Description: Address Foreign - AddressLine1

- Table:

  [`SR-P02-T01-ID-RLTD-TAX-EXEMPED-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p02-t01-id-rltd-tax-exemped-orgs)
  (many)

- Part: Part II - Identification of Related Tax-Exempt Organizations

- Location:

  `SCHED-R-PART-02-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

6 / 6

xpaths observed / mapped

846k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartII/AddressForeign/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/Form990ScheduleRPartII/AddressUS/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/AddressUS/AddressLine1` | SZ | 2009–2012 | 132,312 | 24.8% | 51.3% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartII/AddressForeign/AddressLine1` | SZ | 2009–2012 | 1,682 | 0.333% | 31.0% |
| x3 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/AddressLine1` | SZ | 2013–2013 | 47,596 | 23.9% | 49.2% |
| x4 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/AddressLine1` | SZ | 2013–2013 | 683 | 0.343% | 30.0% |
| x5 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/AddressLine1Txt` | SZ | 2014–2024 | 651,290 | 16.3% | 47.9% |
| x6 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/AddressLine1Txt` | SZ | 2014–2024 | 12,454 | 0.342% | 31.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13k | 34k | 41k | 44k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 158 | 405 | 521 | 598 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 48k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 683 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 51k | 54k | 55k | 59k | 59k | 61k | 66k | 67k | 67k | 67k | 45k |
| x6 |  |  |  |  |  | 775 | 857 | 908 | 1.0k | 1.1k | 1.2k | 1.3k | 1.4k | 1.4k | 1.4k | 947 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 40 | 27 | 26 | 25 | 24 | 23 | 23 | 23 | 23 | 22 | 21 | 20 | 20 | 19 | 19 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 846,017 | 20             | 35      |

### Most common values

| Value              | Filings | Share |
|--------------------|---------|-------|
| `PO BOX 1447`      | 3,776   | 10.6% |
| `PO BOX 9184`      | 1,370   | 3.8%  |
| `301 HENRY STREET` | 1,264   | 3.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | ACCION INTERNATIONAL | 9/3 KAISER-E-HIND 1 FL RICHMO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503189349301700_public.xml) |
| 2024 | 990 | x5 | APPALACHIAN CENTER FOR EXCELLENCE IN | PO BOX 7070 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302369_public.xml) |
| 2013 | 990 | x4 | THE ANNA FREUD FOUNDATION | 21 MARESFIELD GARDENS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201520459349300717_public.xml) |
| 2013 | 990 | x3 | SAN MATEO ELECTRICAL WORKERS HEALTH PLAN | 6800 SANTA TERESA BOULEVARD SUITE 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201540919349300024_public.xml) |
| 2012 | 990 | x2 | SARAH LAWRENCE COLLEGE | Wadham College | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430149349301703_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 800 PRUDENTIAL DR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
