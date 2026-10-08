# SR_05_TRANSAC_LEASE_TO_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_05_TRANSAC_LEASE_TO_X

Engaged in lease of facilities, equipment, or other assets to related
organization(s) \[x\]

- Description: Lease of facilities; equipment; or other assets to other
  organizations?

- Table:

  [`SR-P05-T00-TRANSACTIONS-RLTD-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p05-t00-transactions-rltd-orgs)
  (one)

- Part: Part V - Transactions With Related Organizations

- Location:

  `SCHED-R-PART-05-LINE-01J`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

921k

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
| ⓘ info | Meaning of a blank | 91% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/RentalOfFacilitiesToOtherOrgs` | SZ | 2009–2012 | 145,516 | 27.4% |  |
| x2 | `IRS990ScheduleR/RentalOfFacilitiesToOthOrgInd` | SZ | 2013–2024 | 775,657 | 18.4% |  |
| x3 | `IRS990ScheduleR/Form990ScheduleRPartV/RentalOfFacilitiesToOtherOrgs` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 14k | 37k | 45k | 49k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 53k | 57k | 59k | 61k | 65k | 65k | 67k | 73k | 74k | 75k | 75k | 51k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 43 | 30 | 28 | 27 | 27 | 26 | 25 | 25 | 25 | 24 | 24 | 23 | 22 | 21 | 21 | 18 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `0`     | 519,935 | 56.4% |
| `false` | 318,086 | 34.5% |
| `1`     | 50,480  | 5.5%  |
| `true`  | 32,672  | 3.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_05_TRANSAC_LEASE_TO_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
