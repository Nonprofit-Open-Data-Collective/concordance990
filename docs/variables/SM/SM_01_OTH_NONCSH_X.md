# SM_01_OTH_NONCSH_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_01_OTH_NONCSH_X

Other \[x\]

- Description: Checkbox for lines on Part I

- Table:

  [`SM-P01-T01-NONCASH-CONTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p01-t01-noncash-contributions)
  (many)

- Part: Part I - Types of Property

- Location:

  `SCHED-M-PART-01-LINE-25-COL-A`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

197k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

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
| x1 | `IRS990ScheduleM/OtherNonCashContributionsTable/NonCashCheckbox` | SZ | 2009–2012 | 30,041 | 5.81% | 47.7% |
| x2 | `IRS990ScheduleM/OtherNonCashContriTableGrp/NonCashCheckboxInd` | SZ | 2013–2024 | 167,195 | 4.22% | 42.8% |
| x3 | `IRS990ScheduleM/Form990ScheduleMPartI/OtherNonCashContributionsTable/NonCashCheckbox` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3.2k | 7.2k | 9.2k | 10k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 11k | 12k | 13k | 14k | 15k | 15k | 14k | 14k | 15k | 16k | 16k | 12k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 10 | 6 | 6 | 6 | 6 | 6 | 6 | 6 | 6 | 5 | 5 | 4 | 4 | 5 | 5 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 197,236 | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | PENNSYLVANIA INSTITUTE OF TECHNOLOGY | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202641119349301809_public.xml) |
| 2012 | 990 | x1 | Washington Hospital Healthcare Foundati… | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421359349309267_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_01_OTH_NONCSH_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
