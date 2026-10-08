# SR_02_RLTD_ORG_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_ADDR_L2

Related organization street address line 2

- Description: Address Foreign - AddressLine2

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

13k

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
| ⓘ info | No sign of truncation | IRS990ScheduleR/Form990ScheduleRPartII/AddressForeign/AddressLine2: longest value is exactly 35 characters; IRS990ScheduleR/Form990ScheduleRPartII/AddressUS/AddressLine2: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/AddressLine2Txt: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/AddressLine2: longest value is exactly 35 characters; IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/AddressLine2Txt: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/AddressUS/AddressLine2` | SZ | 2009–2012 | 1,325 | 0.24% | 35.8% |
| x2 | `IRS990ScheduleR/Form990ScheduleRPartII/AddressForeign/AddressLine2` | SZ | 2009–2012 | 64 | 0.0117% | 31.2% |
| x3 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/AddressLine2` | SZ | 2013–2013 | 464 | 0.233% | 27.2% |
| x4 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/AddressLine2` | SZ | 2013–2013 | 30 | 0.0151% | 23.3% |
| x5 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/USAddress/AddressLine2Txt` | SZ | 2014–2024 | 10,490 | 0.316% | 45.2% |
| x6 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/AddressLine2Txt` | SZ | 2014–2024 | 657 | 0.0238% | 30.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 170 | 332 | 391 | 432 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 5 | 16 | 22 | 21 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 464 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 30 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 547 | 597 | 626 | 730 | 967 | 971 | 1.1k | 1.2k | 1.3k | 1.5k | 875 |
| x6 |  |  |  |  |  | 42 | 41 | 49 | 42 | 44 | 57 | 80 | 81 | 77 | 78 | 66 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 13,030  | 12             | 35      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `SUITE 300` | 1,545   | 23.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | PARTNERS IN HEALTH A NONPROFIT CORPORAT… | Suite 603 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202640999349300744_public.xml) |
| 2024 | 990 | x5 | Iowa Federation of Labor AFL-CIO | Suite A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511619349301666_public.xml) |
| 2013 | 990 | x4 | NATURE CONSERVANCY | Loka 246 Asa Sul | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201530419349300113_public.xml) |
| 2013 | 990 | x3 | KERSHAW COUNTY PUBLIC | 2029 WEST DEKALB STREET | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201540129349300959_public.xml) |
| 2012 | 990 | x2 | CREATION MINISTRIES INTERNATIONAL | PO BOX 195 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342209349301184_public.xml) |
| 2012 | 990 | x1 | BOYS & GIRLS CLUB OF SUFFOLK COUNTY | 1275 PEACHTREE STREET NE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421849349300307_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
