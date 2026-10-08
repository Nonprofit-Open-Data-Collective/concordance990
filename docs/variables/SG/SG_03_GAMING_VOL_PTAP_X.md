# SG_03_GAMING_VOL_PTAP_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SG_03_GAMING_VOL_PTAP_X

Volunteer labor for pull tabs/instant bingo/progressive bingo \[x\]

- Description: volunteer labor; pull tabs

- Table:

  [`SG-P03-T00-GAMING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sg-p03-t00-gaming)
  (one)

- Part: Part III - Gaming

- Location:

  `SCHED-G-PART-03-LINE-06-COL-B`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

102k

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
| ⓘ info | Meaning of a blank | 76% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleG/GamingInformation/VolunteerLaborPullTabs` | SZ | 2009–2012 | 12,280 | 1.65% |  |
| x2 | `IRS990ScheduleG/GamingInformationGrp/VolunteerLaborPullTabsInd` | SZ | 2013–2024 | 89,616 | 1.7% |  |
| x3 | `IRS990ScheduleG/Form990ScheduleGPartIII/GamingInformation/VolunteerLaborPullTabs` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 898 | 2.9k | 3.9k | 4.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.1k | 5.7k | 7.0k | 6.4k | 6.9k | 7.3k | 7.4k | 7.9k | 9.0k | 9.4k | 9.8k | 7.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ | 3 | 1 | 1 | 1 | 1 | 1 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 68,257  | 67.0% |
| `true`  | 19,982  | 19.6% |
| `0`     | 8,775   | 8.6%  |
| `1`     | 4,882   | 4.8%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | Tehachapi Warrior Booster Club Inc | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349202502_public.xml) |
| 2012 | 990EZ | x1 | OFFICER WIVES CLUB OF CHERRY POINT MCAS | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323399349200607_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SG_03_GAMING_VOL_PTAP_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
