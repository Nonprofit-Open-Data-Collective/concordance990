# F9_00_LEGAL_DMCL_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_LEGAL_DMCL_CNTR

Country of legal domicile

- Description: Countryof legam domicile

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-M`

- Type: text

- Scope: HD – header (all returns)

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

2.9k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 70 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/CountryLegalDomicile` | PC | 2009–2012 | 272 | 0.0315% |  |
| x2 | `IRS990/LegalDomicileCountryCd` | PC | 2013–2024 | 2,581 | 0.0631% |  |
| x3 | `IRS990/Form990PartI/CountryLegalDomicile` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 30 | 76 | 80 | 86 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 100 | 108 | 123 | 136 | 152 | 161 | 181 | 311 | 330 | 345 | 346 | 288 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 803     | 40.3% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | INTERNATIONAL FEDERATION OF ACCOUNTANTS | SZ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349317116_public.xml) |
| 2012 | 990 | x1 | McMaster University | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410769349301011_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_LEGAL_DMCL_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
