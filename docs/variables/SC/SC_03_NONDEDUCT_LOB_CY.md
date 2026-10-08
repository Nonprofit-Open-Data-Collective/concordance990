# SC_03_NONDEDUCT_LOB_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_03_NONDEDUCT_LOB_CY

Nondeductible lobbying and political expenditures - current year

- Description: Nondeductible lobbying and political expenditures -
  Current year

- Table:

  [`SC-P03-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p03-t00-lobby)
  (one)

- Part: Part III - Lobbying and Political Activities of Section
  501(c)(4), (5), and (6) Organizations (III-A, III-B)

- Location:

  `SCHED-C-PART-03-B-LINE-02A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

64k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.1x (IRS990ScheduleC/NonDeductibleLbbyngPltclCYAmt, 990, TY2021) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/NonDedLobbyPoliticalCurrent` | SZ | 2009–2012 | 8,383 | 1.16% |  |
| x2 | `IRS990ScheduleC/NonDeductibleLbbyngPltclCYAmt` | SZ | 2013–2024 | 55,530 | 0.957% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartIII/NonDedLobbyPoliticalCurrent` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 384 | 2.1k | 2.7k | 3.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.5k | 3.9k | 4.1k | 4.3k | 4.5k | 4.8k | 4.9k | 5.3k | 5.3k | 5.3k | 5.3k | 4.4k |
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
| 990    | 56,592  | 100.0%    | 3.5%   | 0.1%       | 19,874 | 54,131 | 160,342 | 4,995,895 |
| 990-EZ | 7,321   | 100.0%    | 2.0%   | 0.0%       | 6,266  | 14,702 | 26,932  | 79,008    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | NATIONAL UTILITY CONTRACTORS ASSOC | 28528 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541819349300844_public.xml) |
| 2012 | 990EZ | x1 | MISSISSIPPI SPEECH-LANGUAGE-HEARING ASS… | 16500 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343179349202279_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_03_NONDEDUCT_LOB_CY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
