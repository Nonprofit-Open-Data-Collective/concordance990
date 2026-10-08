# SH_99_CHNA_NEED_ADOPT_BUDGET_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_99_CHNA_NEED_ADOPT_BUDGET_X

Addressed needs through adoption of a budget \[x\]

- Description: Operational of budget (see SH-FORM-VERSION-2013-PART-05)

- Table:

  [`SH-P99-T01-FAP-COMMUNITY-BENEFIT-POLICY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p99-t01-fap-community-benefit-policy)
  (many)

- Part: Lines from earlier versions of the schedule (Part V, Section B
  facility policies)

- Location:

  `SCHED-H-PART-99-SECTION-B-LINE-06F`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

2.4k

filings with a value

2010–2013

tax years observed

1 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | values are almost always X/true when present, so a missing value usually means unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVSectionB/AdoptBudget` | SZ | 2010–2012 | 1,047 | 0.501% | 9.6% |
| x2 | `IRS990ScheduleH/HospitalFcltyPoliciesPrctcGrp/AdoptBudgetInd` | SZ | 2013–2013 | 1,352 | 0.68% | 8.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 38 | 109 | 900 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.4k |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | 1 | 1 |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 2,399   | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2013 | 990 | x2 | OHIO VALLEY MEDICAL CENTER INCORPORATED | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201413189349304736_public.xml) |
| 2012 | 990 | x1 | MEDICAL SERVICES INC | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332739349300093_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_99_CHNA_NEED_ADOPT_BUDGET_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
