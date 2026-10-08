# SH_03_COLLEC_POLICY_PROV_FA_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_03_COLLEC_POLICY_PROV_FA_X

Debt collection policy that applied to largest number of patients
contained provisions on practices for patients known to qualify for
financial assistance \[x\]

- Description: Provision for charity care?

- Table:

  [`SH-P03-T00-FAP-COMMUNITY-BENEFIT-POLICY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p03-t00-fap-community-benefit-policy)
  (one)

- Part: Part III - Bad Debt, Medicare, and Collection Practices

- Location:

  `SCHED-H-PART-03-SECTION-C-LINE-09B`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 4

xpaths observed / mapped

35k

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
| ⓘ info | Meaning of a blank | 7% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/ProvisionForCharityCare` | SZ | 2009–2012 | 8,466 | 1.32% |  |
| x2 | `IRS990ScheduleH/FinancialAssistancePrvsnInd` | SZ | 2013–2024 | 26,328 | 0.343% |  |
| x3 | `IRS990ScheduleH/Form990ScheduleHPartIII/ProvisionForCharityCare` | SZ | not observed | 0 |  |  |
| x4 | `IRS990ScheduleH/ProvisionForCharityCareInd` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 2.3k | 2.4k | 2.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.4k | 2.4k | 2.3k | 2.3k | 2.4k | 2.3k | 2.3k | 2.3k | 2.3k | 2.3k | 2.2k | 952 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `1`     | 18,035  | 51.8% |
| `true`  | 14,249  | 41.0% |
| `0`     | 1,602   | 4.6%  |
| `false` | 908     | 2.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NAVICENT HEALTH BALDWIN INC | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349301709_public.xml) |
| 2012 | 990 | x1 | COMMUNITY MEMORIAL HEALTHCENTER | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420429349300502_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_03_COLLEC_POLICY_PROV_FA_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
