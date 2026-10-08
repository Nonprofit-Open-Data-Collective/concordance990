# SH_05_CHNA_CONDUCTED_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_05_CHNA_CONDUCTED_X

Conducted a community health needs assessment \[x\]

- Description: Conduct community needs health assessments?

- Table:

  [`SH-P05-T03-FACILITY-POLICIES-PRACTICES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p05-t03-facility-policies-practices)
  (many)

- Part: Part V - Facility Information

- Location:

  `SCHED-H-PART-05-SECTION-B-LINE-03`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

30k

filings with a value

2010–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | 6% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/Form990ScheduleHPartVSectionB/CHNAConducted` | SZ | 2010–2012 | 2,760 | 0.983% | 9.7% |
| x2 | `IRS990ScheduleH/HospitalFcltyPoliciesPrctcGrp/CHNAConductedInd` | SZ | 2013–2024 | 26,939 | 0.355% | 7.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 322 | 671 | 1.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.4k | 2.4k | 2.4k | 2.3k | 2.4k | 2.3k | 2.3k | 2.3k | 2.3k | 2.4k | 2.3k | 984 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `1`     | 15,917  | 53.2% |
| `true`  | 12,156  | 40.6% |
| `0`     | 970     | 3.2%  |
| `false` | 900     | 3.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NAVICENT HEALTH BALDWIN INC | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349301709_public.xml) |
| 2012 | 990 | x1 | COMMUNITY MEMORIAL HEALTHCENTER | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420429349300502_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_05_CHNA_CONDUCTED_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
