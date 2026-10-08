# F9_00_TYPE_ORG_OTH_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_TYPE_ORG_OTH_X

Other form of organization \[x\]

- Description: Form of organization: Other

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

170k

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
| x1 | `IRS990/TypeOfOrganizationOther` | PC | 2009–2012 | 12,719 | 1.66% |  |
| x2 | `IRS990/TypeOfOrganizationOtherInd` | PC | 2013–2024 | 80,940 | 1.61% |  |
| x3 | `IRS990EZ/TypeOfOrganizationOtherInd` | EZ | 2013–2024 | 76,580 | 2.11% |  |
| x4 | `IRS990/Form990PartI/TypeOfOrganizationOther` | PC | not observed | 0 |  |  |
| x5 | `IRS990/TypeOfOrgOtherDescriptionInd` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 643 | 3.3k | 4.2k | 4.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.8k | 5.3k | 5.5k | 5.7k | 5.9k | 6.2k | 6.4k | 8.0k | 8.4k | 8.7k | 8.7k | 7.3k |
| x3 |  |  |  |  | 3.5k | 3.7k | 4.0k | 4.1k | 4.4k | 4.6k | 4.8k | 6.4k | 10k | 11k | 11k | 9.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 2 | 2 | 2 | 3 |
| 990-EZ |  |  |  |  | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 4 | 5 | 5 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 170,239 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | INTERNATIONAL ASSOCIATION OF SHEET META… | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511359349203141_public.xml) |
| 2024 | 990 | x2 | Free and Accepted Masons Carpinteria Lo… | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502869349301900_public.xml) |
| 2012 | 990 | x1 | BOARD OF CONTROL FOR SOUTHERN | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343179349301309_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_TYPE_ORG_OTH_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
