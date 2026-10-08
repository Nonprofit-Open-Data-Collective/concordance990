# SK_01_BOND_ISSUER_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_01_BOND_ISSUER_NAME_L1

Issuer name line 1

- Description: Issuer Name - BusinessNameLine1

- Table:

  [`SK-P01-T01-BOND-ISSUES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p01-t01-bond-issues)
  (many)

- Part: Part I - Bond Issues

- Location:

  `SCHED-K-PART-01-COL-A`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

89k

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
| ⓘ info | No sign of truncation | IRS990ScheduleK/Form990ScheduleKPartI/IssuerName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleK/TaxExemptBondsIssuesGrp/IssuerName/BusinessNameLine1: longest value is exactly 75 characters; IRS990ScheduleK/TaxExemptBondsIssuesGrp/IssuerName/BusinessNameLine1Txt: longest value is exactly 75 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartI/IssuerName/BusinessNameLine1` | SZ | 2009–2012 | 19,680 | 3.26% | 41.2% |
| x2 | `IRS990ScheduleK/TaxExemptBondsIssuesGrp/IssuerName/BusinessNameLine1` | SZ | 2013–2013 | 5,906 | 2.97% | 40.9% |
| x3 | `IRS990ScheduleK/TaxExemptBondsIssuesGrp/IssuerName/BusinessNameLine1Txt` | SZ | 2014–2024 | 63,516 | 1.07% | 40.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3.0k | 5.2k | 5.6k | 5.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.9k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 6.0k | 6.0k | 6.0k | 6.4k | 6.1k | 6.1k | 6.1k | 6.0k | 5.9k | 5.8k | 3.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 9 | 4 | 4 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 89,102  | 37             | 75      |

### Most common values

| Value                                                   | Filings | Share |
|---------------------------------------------------------|---------|-------|
| `MASSACHUSETTS DEVELOPMENT FINANCE AGENCY`              | 2,298   | 21.5% |
| `ILLINOIS FINANCE AUTHORITY`                            | 1,441   | 13.5% |
| `DORMITORY AUTHORITY OF THE STATE OF NEW YORK`          | 1,259   | 11.8% |
| `INDIANA FINANCE AUTHORITY`                             | 877     | 8.2%  |
| `PUBLIC FINANCE AUTHORITY`                              | 792     | 7.4%  |
| `DISTRICT OF COLUMBIA`                                  | 789     | 7.4%  |
| `CALIFORNIA MUNICIPAL FINANCE AUTHORITY`                | 630     | 5.9%  |
| `WISCONSIN HEALTH AND EDUCATIONAL FACILITIES AUTHORITY` | 494     | 4.6%  |
| `BUILD NYC RESOURCE CORPORATION`                        | 465     | 4.4%  |
| `Illinois Finance Authority`                            | 373     | 3.5%  |
| `CALIFORNIA ENTERPRISE DEVELOPMENT AUTHORITY`           | 305     | 2.9%  |
| `MASS DEVELOPMENT FINANCE AGENCY`                       | 265     | 2.5%  |
| `NEW JERSEY ECONOMIC DEVELOPMENT AUTHORITY`             | 252     | 2.4%  |
| `NORTH CAROLINA MEDICAL CARE COMMISSION`                | 137     | 1.3%  |
| `NEW YORK CITY INDUSTRIAL DEVELOPMENT AGENCY`           | 131     | 1.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | KETCHUM-GRANDE MEMORIAL SCHOOL | DORMITORY AUTHORITY OF THE STATE OF NEW YORK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503149349303680_public.xml) |
| 2013 | 990 | x2 | Young Men's Christian Association of Gr… | City of Balcones Heights Texas Cultural Education Fac | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431329349303633_public.xml) |
| 2012 | 990 | x1 | MINNEAPOLIS COLLEGE OF ART & DESIGN | MHEFA SERIES 6-K | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_01_BOND_ISSUER_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
