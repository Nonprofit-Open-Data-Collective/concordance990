# SR_02_RLTD_ORG_DMCL_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_DMCL_CNTR

Legal domicile (foreign country)

- Description: Legal domicile - Foreign Country

- Table:

  [`SR-P02-T01-ID-RLTD-TAX-EXEMPED-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p02-t01-id-rltd-tax-exemped-orgs)
  (many)

- Part: Part II - Identification of Related Tax-Exempt Organizations

- Location:

  `SCHED-R-PART-02-COL-C`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

18k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 157 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/LegalDomicileForeignCountry` | SZ | 2009–2012 | 1,810 | 0.363% | 31.5% |
| x2 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/LegalDomicileForeignCountryCd` | SZ | 2013–2024 | 15,974 | 0.359% | 31.0% |
| x3 | `IRS990ScheduleR/Form990ScheduleRPartII/LegalDomicile/ForeignCountry` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 172 | 423 | 563 | 652 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 754 | 986 | 1.1k | 1.1k | 1.3k | 1.4k | 1.5k | 1.6k | 1.7k | 1.8k | 1.8k | 995 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | \<1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `UK`  | 4,252   | 24.0% |
| `CA`  | 3,368   | 19.0% |
| `VT`  | 1,852   | 10.4% |
| `IN`  | 1,412   | 8.0%  |
| `MX`  | 1,242   | 7.0%  |
| `FR`  | 1,221   | 6.9%  |
| `GM`  | 1,178   | 6.6%  |
| `IS`  | 1,001   | 5.6%  |
| `HK`  | 877     | 4.9%  |
| `SF`  | 768     | 4.3%  |
| `BR`  | 196     | 1.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Angel Christian Television Trust Inc | UK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630279349300528_public.xml) |
| 2012 | 990 | x1 | MAYO CLINIC HEALTH SYSTEM - EAU CLAIRE | GM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322079349301107_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_DMCL_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
