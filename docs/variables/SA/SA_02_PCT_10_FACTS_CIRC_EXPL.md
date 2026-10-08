# SA_02_PCT_10_FACTS_CIRC_EXPL

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_02_PCT_10_FACTS_CIRC_EXPL

Explanation of how the organization meets the 10%
facts-and-circumstances test (Part II line 10, reported in Part VI)

- Description: Explanation of how the organization meets the 10%
  facts-and-circumstances test (Part II line 10, reported in Part VI)

- Table:

  [`SA-P02-T00-SUPPORT_SCHEDULE_170`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p02-t00-support_schedule_170)
  (one)

- Part: Part II - Support Schedule for Organizations Described in
  Sections 170(b)(1)(A)(iv) and 170(b)(1)(A)(vi)

- Location:

  `SCHED-A-PART-02`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

37k

filings with a value

2009–2024

tax years observed

2

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990ScheduleA/FactsAndCircumstancesTest: longest value is exactly 9000 characters; IRS990ScheduleA/FactsAndCircumstancesTestTxt: longest value is exactly 9000 characters |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 3.0x year-on-year (in 2013) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 4.0x year-on-year (in 2013) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/FactsAndCircumstancesTest` | SZ | 2009–2012 | 13,280 | 1.7% |  |
| x2 | `IRS990ScheduleA/FactsAndCircumstancesTestTxt` | SZ | 2013–2024 | 23,630 | 0.44% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 797 | 3.4k | 4.4k | 4.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.6k | 1.4k | 1.6k | 1.7k | 1.8k | 1.8k | 2.0k | 2.3k | 2.5k | 2.5k | 2.5k | 2.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 2 | 1 | \<1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | 2 | 2 | 2 | 2 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 27,173  | 812            | 9,000   |
| 990-EZ | 9,737   | 537            | 9,000   |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `THE ORGANIZATION MAINTAINS A CONTINUOUS AND BONA FIDE PROGRAM FOR SOLICITATION OF FUNDS F…` | 196 | 21.3% |
| `Part II Section B Line 10 Other related revenue` | 72 | 7.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | LASCO INC | Organization size and budget | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533229349200113_public.xml) |
| 2012 | 990EZ | x1 | VINEYARD INDEPENDENCE PARTNERSHIP INC | OTHER INCOME PART III, LINE 12; DESCRIPTION: RENT; 2008: 15840.; 2009: 0.; 2010… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332399349200118_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_02_PCT_10_FACTS_CIRC_EXPL, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
