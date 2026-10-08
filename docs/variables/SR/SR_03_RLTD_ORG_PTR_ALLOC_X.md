# SR_03_RLTD_ORG_PTR_ALLOC_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_ALLOC_X

Disproportionate allocations \[x\]

- Description: Disproportionate allocations? (Y-N)

- Table:

  [`SR-P03-T01-ID-RLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p03-t01-id-rltd-orgs-taxable-partnership)
  (many)

- Part: Part III - Identification of Related Organizations Taxable as a
  Partnership

- Location:

  `SCHED-R-PART-03-COL-H`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

111k

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
| ⓘ info | Meaning of a blank | 97% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/DisproportionateAllocations` | SZ | 2009–2012 | 17,160 | 3.03% | 56.7% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/DisproportionateAllocationsInd` | SZ | 2013–2024 | 94,013 | 2.34% | 60.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.9k | 4.6k | 5.2k | 5.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.8k | 6.1k | 6.4k | 6.6k | 6.9k | 6.9k | 7.0k | 10k | 10k | 11k | 11k | 6.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 6 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 | 3 | 3 | 3 | 3 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `0`     | 70,971  | 62.8% |
| `false` | 38,082  | 33.7% |
| `1`     | 2,644   | 2.3%  |
| `true`  | 1,226   | 1.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | MARIN HOMES FOR INDEPENDENT LIVING | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342279349301779_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_ALLOC_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
