# SD_02_EMT_170H_SATISFIED_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_02_EMT_170H_SATISFIED_X

Each conservation easement satisfies section 170(h)(4)(B)(i) and
170(h)(4)(B)(ii) requirements \[x\]

- Description: Does each conservation easement reported on line 2(d)
  above satisfy the requirements of section 170(h)(4)(B)(i) and
  170(h)(4)(B)(ii)?

- Table:

  [`SD-P02-T00-CONSERV-EASEMENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p02-t00-conserv-easements)
  (one)

- Part: Part II - Conservation Easements

- Location:

  `SCHED-D-PART-02-LINE-08`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

76k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 92% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 35.3x year-on-year (in 2012) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/Sect170hRequirementsSatisfied` | SZ | 2009–2012 | 50,291 | 0.454% |  |
| x2 | `IRS990ScheduleD/Section170hRqrStsfdInd` | SZ | 2013–2024 | 25,753 | 0.428% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartII/Sect170hRequirementsSatisfied` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.7k | 19k | 26k | 815 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 926 | 962 | 1.3k | 1.5k | 1.8k | 1.9k | 2.2k | 3.4k | 3.1k | 3.5k | 3.9k | 1.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 14 | 16 | 16 | \<1 | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 69,077  | 90.8% |
| `1`     | 3,176   | 4.2%  |
| `true`  | 2,861   | 3.8%  |
| `0`     | 930     | 1.2%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | FALMOUTH CONSERVATION TRUST | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630709349301858_public.xml) |
| 2012 | 990 | x1 | ARCOLA MILLS HISTORIC FOUNDATION | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201311929349300201_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_02_EMT_170H_SATISFIED_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
