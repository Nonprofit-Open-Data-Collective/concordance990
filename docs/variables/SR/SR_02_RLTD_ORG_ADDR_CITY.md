# SR_02_RLTD_ORG_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_ADDR_CITY

Related organization city

- Description: Foreign Address - City

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

845k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartII/AddressForeign/City: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/CityNm: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/AddressUS/City` | SZ | 2009–2012 | 132,312 | 24.8% | 51.3% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartII/AddressForeign/City` | SZ | 2009–2012 | 1,584 | 0.312% | 29.4% |
| x3 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/City` | SZ | 2013–2013 | 47,596 | 23.9% | 49.2% |
| x4 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/City` | SZ | 2013–2013 | 643 | 0.323% | 28.6% |
| x5 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/CityNm` | SZ | 2014–2024 | 651,290 | 16.3% | 47.9% |
| x6 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/CityNm` | SZ | 2014–2024 | 11,741 | 0.322% | 31.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13k | 34k | 41k | 44k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 156 | 376 | 492 | 560 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 48k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 643 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 51k | 54k | 55k | 59k | 59k | 61k | 66k | 67k | 67k | 67k | 45k |
| x6 |  |  |  |  |  | 734 | 811 | 860 | 976 | 1.1k | 1.1k | 1.3k | 1.3k | 1.3k | 1.4k | 894 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 40 | 27 | 26 | 25 | 24 | 23 | 23 | 23 | 23 | 22 | 21 | 20 | 20 | 19 | 19 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 845,166 | 9              | 35      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `WASHINGTON` | 26,404  | 17.4% |
| `NEW YORK`   | 25,531  | 16.8% |
| `COLUMBUS`   | 14,101  | 9.3%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | ACCION INTERNATIONAL | BANGALORE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503189349301700_public.xml) |
| 2024 | 990 | x5 | RISEWELL COMMUNITY SERVICES INC FKA | WEST BABYLON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2013 | 990 | x4 | Plan International USA Inc | Abuja | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201520439349300207_public.xml) |
| 2013 | 990 | x3 | ST LOUIS VOLUNTEERS OF AMERICA | ALEXANDRIA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413539349301006_public.xml) |
| 2012 | 990 | x2 | MAYO CLINIC HEALTH SYSTEM - EAU CLAIRE | FRANKFURT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322079349301107_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | SAN DIEGO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
