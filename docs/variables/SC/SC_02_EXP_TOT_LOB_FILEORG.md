# SC_02_EXP_TOT_LOB_FILEORG

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_EXP_TOT_LOB_FILEORG

Total lobbying expenditures - filing org's totals

- Description: Total lobbying expenditures - Filing organization's
  totals

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-A-LINE-01C-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

60k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.3x (IRS990ScheduleC/TotalLobbyingExpenditures/FilingOrganizationsTotals, 990, TY2011) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.7x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/TotalLobbyingExpenditures/FilingOrganizationsTotals` | SZ | 2009–2012 | 8,818 | 1.08% |  |
| x2 | `IRS990ScheduleC/TotalLobbyingExpendGrp/FilingOrganizationsTotalAmt` | SZ | 2013–2024 | 50,691 | 0.808% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartII/TotalLobbyingExpenditures/FilingOrganizationsTotals` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 921 | 2.2k | 2.7k | 3.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.2k | 3.4k | 3.7k | 3.9k | 4.2k | 4.2k | 4.4k | 4.8k | 4.9k | 5.1k | 5.3k | 3.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 2 | 2 | 2 | 2 | 1 | 1 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|-------|--------|--------|---------|
| 990    | 56,619  | 100.0%    | 13.3%  | 0.0%       | 3,325 | 19,800 | 68,030 | 648,605 |
| 990-EZ | 2,890   | 100.0%    | 34.7%  | 0.0%       | 0     | 1,200  | 5,993  | 24,389  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CASPER PRIDE | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520519349302007_public.xml) |
| 2012 | 990 | x1 | Phoenix Children's Hospital | 239824 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510279349300641_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_EXP_TOT_LOB_FILEORG, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
