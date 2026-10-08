# SC_02_LOB_ACT_MEDIA_AD_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_LOB_ACT_MEDIA_AD_X

Lobbied through media advertisements \[x\]

- Description: Media advertisements?

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-B-LINE-01C-COL-A`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

115k

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
| ⓘ info | Meaning of a blank | 99% of values are explicit false/0, so a missing value is not the same as unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 4.8x year-on-year (in 2012) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/MediaAdvertisements` | SZ | 2009–2012 | 27,402 | 2.43% |  |
| x2 | `IRS990ScheduleC/MediaAdvertisementsInd` | SZ | 2013–2024 | 87,536 | 1.13% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartII/MediaAdvertisements` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.9k | 6.8k | 11k | 6.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.8k | 7.0k | 7.1k | 7.1k | 7.5k | 7.4k | 7.4k | 7.7k | 7.9k | 8.1k | 8.3k | 5.1k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 8 | 5 | 6 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ | 1 | 1 | 2 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value   | Filings | Share |
|---------|---------|-------|
| `false` | 57,988  | 50.5% |
| `0`     | 55,545  | 48.3% |
| `1`     | 811     | 0.7%  |
| `true`  | 594     | 0.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | THE REFUGE CORPORATION | false | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321209349300202_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_LOB_ACT_MEDIA_AD_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
