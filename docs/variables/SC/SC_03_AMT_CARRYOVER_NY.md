# SC_03_AMT_CARRYOVER_NY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_03_AMT_CARRYOVER_NY

Portion of the excess the organization agrees to carryover

- Description: If notices were sent and the amount on line 2c exceeds
  the amount on line 3; what portion of that amount does the
  organization agree to carryover to the reasonable estimate of
  nondeductible lobbying and political expenditure next year?

- Table:

  [`SC-P03-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p03-t00-lobby)
  (one)

- Part: Part III - Lobbying and Political Activities of Section
  501(c)(4), (5), and (6) Organizations (III-A, III-B)

- Location:

  `SCHED-C-PART-03-B-LINE-04`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

20k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990ScheduleC/CarriedOverAmt, 990, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 8.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/AmountToBeCarriedOver` | SZ | 2009–2012 | 2,723 | 0.363% |  |
| x2 | `IRS990ScheduleC/CarriedOverAmt` | SZ | 2013–2024 | 17,356 | 0.315% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartIII/AmountToBeCarriedOver` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 126 | 716 | 889 | 992 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.1k | 1.2k | 1.3k | 1.3k | 1.4k | 1.5k | 1.5k | 1.6k | 1.6k | 1.7k | 1.7k | 1.4k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 17,385  | 100.0%    | 15.4%  | 8.3%       | 600 | 13,850 | 56,942 | 1,381,333 |
| 990-EZ | 2,694   | 100.0%    | 9.2%   | 5.7%       | 998 | 5,435  | 16,849 | 75,119    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | KANSAS ACADEMY OF FAMILY PHYSICIANS | 27757 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503189349308300_public.xml) |
| 2012 | 990 | x1 | CALIFORNIA BEER & BEVERAGE DISTRIBUTORS | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302189349300300_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_03_AMT_CARRYOVER_NY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
