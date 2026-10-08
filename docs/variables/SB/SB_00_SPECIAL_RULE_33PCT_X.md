# SB_00_SPECIAL_RULE_33PCT_X

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SB_00_SPECIAL_RULE_33PCT_X

Special Rule: 501(c)(3) org meeting the 33-1/3% support test

- Description: Special Rule: 501(c)(3) org meeting the 33-1/3% support
  test

- Table:

  [`SB-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sb-p00-t00-header)
  (one)

- Part: Heading - Organization Type and Filing Rules

- Location:

  `SCHED-B-PART-01`

- Type: checkbox

- Scope: PZ – 990 and 990-EZ

- Database: F990, F990PF

2 / 2

xpaths observed / mapped

12

filings with a value

2010–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are checkbox codes | 100.0% of values are X / true / false / 1 / 0 |
| ⓘ info | Meaning of a blank | values are almost always X/true when present, so a missing value usually means unchecked |
| ✓ pass | Element names agree in polarity | all element names have the same polarity |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `GAP` | ▲ warn | (variable) | no 990PF filings in 2011,2012,2013,2014,2015,2016,2017,2022, but filings before and after | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleB/SpclRuleMetOneThirdSuprtTest` |  | 2010–2010 | 1 | 0.000473% |  |
| x2 | `IRS990ScheduleB/SpclRuleMetOne3rdSuprtTestInd` |  | 2018–2024 | 11 | 0.000175% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 1 |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  |  |  |  |  |  | 1 | 3 | 3 | 1 |  | 2 | 1 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  | \<1 |  |  |  |  |  |  |  | \<1 | \<1 | \<1 | \<1 |  | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share  |
|-------|---------|--------|
| `X`   | 12      | 100.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | Yavne Foundation Inc | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523189349105407_public.xml) |
| 2010 | 990PF | x1 | JAN & BETKA PAPANEK FOUNDATION | X | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201131339349102213_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SB_00_SPECIAL_RULE_33PCT_X, report type *checkbox*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
