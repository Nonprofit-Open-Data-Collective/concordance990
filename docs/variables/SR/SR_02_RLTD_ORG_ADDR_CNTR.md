# SR_02_RLTD_ORG_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_02_RLTD_ORG_ADDR_CNTR

Related organization country

- Description: Foreign Address - Country

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

3 / 3

xpaths observed / mapped

15k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 140 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartII/AddressForeign/Country` | SZ | 2009–2012 | 1,682 | 0.333% | 31.0% |
| x2 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/Country` | SZ | 2013–2013 | 683 | 0.343% | 30.0% |
| x3 | `IRS990ScheduleR/IdRelatedTaxExemptOrgGrp/ForeignAddress/CountryCd` | SZ | 2014–2024 | 12,454 | 0.342% | 31.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 158 | 405 | 521 | 598 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 683 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 775 | 857 | 908 | 1.0k | 1.1k | 1.2k | 1.3k | 1.4k | 1.4k | 1.4k | 947 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `UK`  | 3,694   | 25.0% |
| `CA`  | 3,381   | 22.9% |
| `IN`  | 1,304   | 8.8%  |
| `MX`  | 1,098   | 7.4%  |
| `GM`  | 1,071   | 7.3%  |
| `FR`  | 962     | 6.5%  |
| `IS`  | 879     | 6.0%  |
| `SF`  | 729     | 4.9%  |
| `HK`  | 647     | 4.4%  |
| `BR`  | 271     | 1.8%  |
| `AS`  | 169     | 1.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | ACCION INTERNATIONAL | IN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503189349301700_public.xml) |
| 2013 | 990 | x2 | INDEPENDENT DIPLOMAT INC | UK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412259349301181_public.xml) |
| 2012 | 990 | x1 | Ved Vignan Mahavidyapeeth | IN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333229349300203_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_02_RLTD_ORG_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
