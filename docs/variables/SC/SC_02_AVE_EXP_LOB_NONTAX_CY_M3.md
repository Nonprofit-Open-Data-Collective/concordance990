# SC_02_AVE_EXP_LOB_NONTAX_CY_M3

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_AVE_EXP_LOB_NONTAX_CY_M3

Lobbying nontaxable amount - current year minus three

- Description: Lobbying Nontaxable Amount2 - Current year minus 3

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-A-LINE-02A-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

57k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.3x (IRS990ScheduleC/LobbyingNontaxableAmount2/CurrentYearMinus3, 990, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.2x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/LobbyingNontaxableAmount2/CurrentYearMinus3` | SZ | 2009–2012 | 7,648 | 0.965% |  |
| x2 | `IRS990ScheduleC/AvgLobbyingNontaxableAmountGrp/CurrentYearMinus3Amt` | SZ | 2013–2024 | 49,217 | 0.759% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartII/LobbyingNontaxableAmount2/CurrentYearMinus3` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 818 | 1.8k | 2.4k | 2.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.9k | 3.2k | 3.5k | 3.7k | 4.0k | 4.1k | 4.3k | 4.8k | 4.9k | 5.0k | 5.0k | 3.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25     | Median  | P75       | P99       |
|--------|---------|-----------|--------|------------|---------|---------|-----------|-----------|
| 990    | 54,566  | 100.0%    | 1.8%   | 0.0%       | 173,605 | 299,202 | 1,000,000 | 1,000,000 |
| 990-EZ | 2,299   | 100.0%    | 15.9%  | 0.0%       | 7,624   | 16,598  | 25,177    | 207,716   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | TOWARDS JUSTICE OF COLORADO | 221969 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503149349306160_public.xml) |
| 2012 | 990 | x1 | Phoenix Children's Hospital | 1000000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510279349300641_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_AVE_EXP_LOB_NONTAX_CY_M3, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
