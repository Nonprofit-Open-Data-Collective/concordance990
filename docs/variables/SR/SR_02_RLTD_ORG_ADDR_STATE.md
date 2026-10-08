# SR_02_RLTD_ORG_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_ADDR_STATE

Related organization state

- Description: Province or state

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

839k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 606 distinct values per xpath and year |
| ✓ pass | Codes share one format | 99% have the shape AA                        |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/AddressUS/State` | SZ | 2009–2012 | 132,312 | 24.8% | 51.3% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartII/AddressForeign/ProvinceOrState` | SZ | 2009–2012 | 717 | 0.14% | 29.3% |
| x3 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/State` | SZ | 2013–2013 | 47,596 | 23.9% | 49.2% |
| x4 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/ProvinceOrState` | SZ | 2013–2013 | 293 | 0.147% | 28.3% |
| x5 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/StateAbbreviationCd` | SZ | 2014–2024 | 651,290 | 16.3% | 47.9% |
| x6 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/ProvinceOrStateNm` | SZ | 2014–2024 | 6,355 | 0.166% | 23.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13k | 34k | 41k | 44k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 80 | 166 | 219 | 252 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 48k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 293 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 51k | 54k | 55k | 59k | 59k | 61k | 66k | 67k | 67k | 67k | 45k |
| x6 |  |  |  |  |  | 334 | 427 | 446 | 506 | 555 | 632 | 698 | 732 | 776 | 790 | 459 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 40 | 27 | 26 | 25 | 24 | 23 | 23 | 23 | 23 | 22 | 21 | 20 | 20 | 19 | 19 | 16 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `NY`  | 92,376  | 17.1% |
| `CA`  | 82,239  | 15.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | AIDS HEALTHCARE FOUNDATION | ESWATINI | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349316441_public.xml) |
| 2024 | 990 | x5 | APPALACHIAN CENTER FOR EXCELLENCE IN | VA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302369_public.xml) |
| 2013 | 990 | x4 | INDEPENDENT DIPLOMAT INC | London | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412259349301181_public.xml) |
| 2013 | 990 | x3 | ST LOUIS VOLUNTEERS OF AMERICA | VA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413539349301006_public.xml) |
| 2012 | 990 | x2 | SARAH LAWRENCE COLLEGE | Endland | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430149349301703_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | AZ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
