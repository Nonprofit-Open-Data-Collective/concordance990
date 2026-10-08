# SR_03_RLTD_ORG_PTR_NAME_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_NAME_L2

Related organization name line 2

- Description: Name Of Related Org - BusinessNameLine2

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

3 / 3

xpaths observed / mapped

793

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

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
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/NameOfRelatedOrg/BusinessNameLine2` | SZ | 2009–2012 | 135 | 0.0267% | 35.6% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/RelatedOrganizationName/BusinessNameLine2` | SZ | 2013–2013 | 50 | 0.0251% | 34.0% |
| x3 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/RelatedOrganizationName/BusinessNameLine2Txt` | SZ | 2014–2024 | 608 | 0.013% | 28.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 12 | 38 | 37 | 48 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 50 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 52 | 51 | 51 | 52 | 55 | 55 | 60 | 88 | 58 | 50 | 36 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 793     | 20             | 62      |

### Most common values

| Value                 | Filings | Share |
|-----------------------|---------|-------|
| `LIMITED PARTNERSHIP` | 29      | 9.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | CARESOUTH CAROLINA INC | COMMUNITY INTEGRATED MANAGEMENT SER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202631009349300028_public.xml) |
| 2013 | 990 | x2 | DOWNTOWN WOMEN'S CENTER INC | NWTH MERIDIAN LTD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510569349300761_public.xml) |
| 2012 | 990 | x1 | WILLISTOWN CONSERVATION TRUST INC | C/O BARNARD MEZZANOTTE ET AL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303199349306120_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_NAME_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
