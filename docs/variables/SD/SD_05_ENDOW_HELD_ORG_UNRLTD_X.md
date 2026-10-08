# SD_05_ENDOW_HELD_ORG_UNRLTD_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_05_ENDOW_HELD_ORG_UNRLTD_X

Endowment funds are held and administered for the organization by
unrelated organizations \[x\]

- Description: Endowments held by unrelated organizations?

- Table:

  [`SD-P05-T00-ENDOWMENT`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p05-t00-endowment)
  (one)

- Part: Part V - Endowment Funds

- Location:

  `SCHED-D-PART-05-LINE-03A(i)`

- Type: checkbox

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

496k

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
| ⓘ info | Meaning of a blank | 79% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/EndowmentsHeldByUnrelatedOrgs` | SZ | 2009–2012 | 114,014 | 13.4% |  |
| x2 | `IRS990ScheduleD/EndowmentsHeldUnrelatedOrgInd` | SZ | 2013–2024 | 381,687 | 8.75% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartV/EndowmentsHeldByUnrelatedOrgs` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 12k | 35k | 44k | 24k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 26k | 28k | 29k | 30k | 33k | 33k | 33k | 36k | 36k | 37k | 37k | 24k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 35 | 28 | 27 | 13 | 13 | 13 | 13 | 12 | 12 | 12 | 12 | 11 | 11 | 10 | 10 | 9 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `0`     | 203,234 | 41.0% |
| `false` | 189,772 | 38.3% |
| `1`     | 57,588  | 11.6% |
| `true`  | 45,107  | 9.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | Oregon Council of the Blind | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201331219349301263_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_05_ENDOW_HELD_ORG_UNRLTD_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
