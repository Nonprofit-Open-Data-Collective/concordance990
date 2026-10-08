# SR_03_RLTD_ORG_PTR_DMCL_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_DMCL_CNTR

Legal domicile (foreign country)

- Description: Legal domicile - Foreign Country

- Table:

  [`SR-P03-T01-ID-RLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p03-t01-id-rltd-orgs-taxable-partnership)
  (many)

- Part: Part III - Identification of Related Organizations Taxable as a
  Partnership

- Location:

  `SCHED-R-PART-03-COL-C`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

3.1k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 32 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/LegalDomicileForeignCountry` | SZ | 2009–2012 | 205 | 0.0356% | 61.0% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/LegalDomicileForeignCountryCd` | SZ | 2013–2024 | 2,900 | 0.048% | 51.5% |
| x3 | `IRS990ScheduleR/Form990ScheduleRPartIII/LegalDomicile/ForeignCountry` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 28 | 56 | 57 | 64 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 74 | 78 | 128 | 135 | 131 | 146 | 344 | 400 | 405 | 451 | 475 | 133 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CJ`  | 1,182   | 23.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HOLY ROSARY HEALTHCARE | CJ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533089349301528_public.xml) |
| 2012 | 990 | x1 | TRUSTEES OF THE UNIVERSITY OF PENNSYLVA… | UK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349302062_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_DMCL_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
