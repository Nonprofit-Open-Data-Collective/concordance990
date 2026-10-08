# F9_00_TYPE_ORG_ASSOC_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_TYPE_ORG_ASSOC_X

Association \[x\]

- Description: Form of organization: Association

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

3 / 4

xpaths observed / mapped

337k

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
| x1 | `IRS990/TypeOfOrganizationAssociation` | PC | 2009–2012 | 20,985 | 2.89% |  |
| x2 | `IRS990EZ/TypeOfOrganizationAssocInd` | EZ | 2013–2024 | 168,771 | 3.66% |  |
| x3 | `IRS990/TypeOfOrganizationAssocInd` | PC | 2013–2024 | 147,533 | 2.84% |  |
| x4 | `IRS990/Form990PartI/TypeOfOrganizationAssociation` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 870 | 5.3k | 6.9k | 7.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 8.8k | 10k | 11k | 11k | 12k | 13k | 13k | 15k | 19k | 19k | 19k | 17k |
| x3 |  |  |  |  | 8.8k | 9.7k | 10k | 11k | 11k | 12k | 12k | 14k | 15k | 15k | 16k | 13k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 5 |
| 990-EZ |  |  |  |  | 8 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 | 9 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 337,289 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | COUNTRYWOOD PTA | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523149349202317_public.xml) |
| 2024 | 990 | x3 | GRACE ONE | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511229349301136_public.xml) |
| 2012 | 990 | x1 | Shenandoah Community Ambulance Assoc | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332259349301968_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_TYPE_ORG_ASSOC_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
