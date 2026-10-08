# F9_00_TYPE_ORG_CORP_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_TYPE_ORG_CORP_X

Corporation \[x\]

- Description: Form of organization: Corporation

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-K`

- Type: checkbox

- Scope: HD – header (all returns)

- Database: F990

- Forms: EZ, PC

3 / 5

xpaths observed / mapped

4.9M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | values are almost always X/true when present, so a missing value usually means unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TypeOfOrganizationCorporation` | PC | 2009–2012 | 431,281 | 57.4% |  |
| x2 | `IRS990/TypeOfOrganizationCorpInd` | PC | 2013–2024 | 2,971,295 | 53.8% |  |
| x3 | `IRS990EZ/TypeOfOrganizationCorpInd` | EZ | 2013–2024 | 1,508,060 | 31.8% |  |
| x4 | `IRS990/Form990PartI/TypeOfOrganizationCorporation` | PC | not observed | 0 |  |  |
| x5 | `IRS990EZ/TypeOfOrganizationCorporation` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 30k | 106k | 138k | 157k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 174k | 192k | 206k | 216k | 232k | 241k | 253k | 284k | 299k | 311k | 316k | 246k |
| x3 |  |  |  |  | 76k | 90k | 98k | 104k | 112k | 121k | 124k | 139k | 164k | 167k | 167k | 145k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 90 | 86 | 87 | 87 | 88 | 88 | 88 | 89 | 89 | 89 | 89 | 89 | 89 | 89 | 89 | 89 |
| 990-EZ |  |  |  |  | 73 | 77 | 79 | 80 | 81 | 81 | 82 | 82 | 81 | 81 | 81 | 81 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings   | Share  |
|-------|-----------|--------|
| `X`   | 4,910,636 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | Science & Technology Education Project | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2024 | 990 | x2 | OWL CREEK COUNTRY CLUB | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_TYPE_ORG_CORP_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
