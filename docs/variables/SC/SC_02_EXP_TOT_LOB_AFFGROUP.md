# SC_02_EXP_TOT_LOB_AFFGROUP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_EXP_TOT_LOB_AFFGROUP

Total lobbying expenditures - affiliated group totals

- Description: Total lobbying expenditures - Affiliated group totals

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-A-LINE-01C-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

5.1k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.8x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/TotalLobbyingExpenditures/AffiliatedGroupTotals` | SZ | 2009–2012 | 929 | 0.094% |  |
| x2 | `IRS990ScheduleC/TotalLobbyingExpendGrp/AffiliatedGroupTotalAmt` | SZ | 2013–2024 | 4,139 | 0.0813% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartII/TotalLobbyingExpenditures/AffiliatedGroupTotals` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 153 | 242 | 277 | 257 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 277 | 297 | 298 | 331 | 330 | 299 | 290 | 356 | 351 | 440 | 499 | 371 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75     | P99     |
|--------|---------|-----------|--------|------------|-----|--------|---------|---------|
| 990    | 4,675   | 100.0%    | 27.6%  | 0.0%       | 37  | 55,250 | 189,841 | 686,126 |
| 990-EZ | 393     | 100.0%    | 90.3%  | 0.0%       | 0   | 87.75  | 252     | 1,471   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CHILDREN'S HOSPITAL AND HEALTH SYSTEM | 610170 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503219349301845_public.xml) |
| 2012 | 990 | x1 | ATLANTICARE HEALTH SYSTEM INC | 253867 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343189349301139_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_EXP_TOT_LOB_AFFGROUP, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
