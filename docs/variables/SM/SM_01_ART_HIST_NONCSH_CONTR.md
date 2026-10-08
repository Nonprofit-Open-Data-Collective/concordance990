# SM_01_ART_HIST_NONCSH_CONTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SM_01_ART_HIST_NONCSH_CONTR

Art - historical treasures - noncash contribution amounts

- Description: Revenues reported on F990; Pt VIII; line 1g

- Table:

  [`SM-P01-T00-NONCASH-CONTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sm-p01-t00-noncash-contributions)
  (one)

- Part: Part I - Types of Property

- Location:

  `SCHED-M-PART-01-LINE-02-COL-C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

1.4k

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
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.9x (990: IRS990ScheduleM/ArtHistoricalTreasures/NoncashContribsRptdF990 vs IRS990ScheduleM/ArtHistoricalTreasuresGrp/NoncashContributionsRptF990Amt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleM/ArtHistoricalTreasures/NoncashContribsRptdF990` | SZ | 2009–2012 | 292 | 0.0451% |  |
| x2 | `IRS990ScheduleM/ArtHistoricalTreasuresGrp/NoncashContributionsRptF990Amt` | SZ | 2013–2024 | 1,144 | 0.022% |  |
| x3 | `IRS990ScheduleM/Form990ScheduleMPartI/ArtHistoricalTreasures/RevenuesReportedLine1G` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 38 | 76 | 97 | 81 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 97 | 94 | 100 | 102 | 95 | 103 | 107 | 96 | 98 | 96 | 95 | 61 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25  | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|------|--------|--------|-----------|
| 990    | 1,436   | 100.0%    | 30.5%  | 0.0%       | 0.25 | 7,400  | 43,541 | 1,019,556 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Salmon Brook Historical Society Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533189349306848_public.xml) |
| 2012 | 990 | x1 | CHATTANOOGA CHRISTIAN SCHOOL INC | 4900 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411349349304031_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SM_01_ART_HIST_NONCSH_CONTR, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
