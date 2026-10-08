# SC_03_NONDEDUCT_LOB_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_03_NONDEDUCT_LOB_TOT

Nondeductible lobbying and political expenditures - total

- Description: Nondeductible lobbying and political expenditures - Total

- Table:

  [`SC-P03-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p03-t00-lobby)
  (one)

- Part: Part III - Lobbying and Political Activities of Section
  501(c)(4), (5), and (6) Organizations (III-A, III-B)

- Location:

  `SCHED-C-PART-03-B-LINE-02C`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

66k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.3x (IRS990ScheduleC/NonDedLobbyPoliticalTotal, 990, TY2011) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 6.7% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/NonDedLobbyPoliticalTotal` | SZ | 2009–2012 | 8,808 | 1.18% |  |
| x2 | `IRS990ScheduleC/NonDeductibleLbbyngPltclTotAmt` | SZ | 2013–2024 | 56,760 | 0.98% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartIII/NonDedLobbyPoliticalTotal` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 391 | 2.4k | 2.8k | 3.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.6k | 4.0k | 4.2k | 4.4k | 4.6k | 4.9k | 5.0k | 5.4k | 5.4k | 5.5k | 5.4k | 4.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|--------|--------|---------|-----------|
| 990    | 57,881  | 100.0%    | 3.8%   | 6.9%       | 14,806 | 50,322 | 155,234 | 4,546,131 |
| 990-EZ | 7,687   | 100.0%    | 3.4%   | 5.0%       | 5,651  | 14,646 | 32,234  | 109,496   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NATIONAL UTILITY CONTRACTORS ASSOC | 46716 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541819349300844_public.xml) |
| 2012 | 990 | x1 | NEW MEXICO SOCIETY OF CPAS | 13910 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420379349300102_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_03_NONDEDUCT_LOB_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
