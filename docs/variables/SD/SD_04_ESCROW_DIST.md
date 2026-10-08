# SD_04_ESCROW_DIST

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_04_ESCROW_DIST

Escrow or custodial arrangement distributions during the year

- Description: Distributions during the year

- Table:

  [`SD-P04-T00-ESCROW-CUSTODIAL-ARRANGEMENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p04-t00-escrow-custodial-arrangements)
  (one)

- Part: Part IV - Escrow and Custodial Arrangements

- Location:

  `SCHED-D-PART-04-LINE-01E`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

14k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.8x (IRS990ScheduleD/DistributionsDuringYearAmt, 990, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 1.6% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/DistributionsDuringYear` | SZ | 2009–2012 | 2,519 | 0.471% |  |
| x2 | `IRS990ScheduleD/DistributionsDuringYearAmt` | SZ | 2013–2024 | 11,750 | 0.226% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartIV/DistributionsDuringYear` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 266 | 651 | 755 | 847 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 895 | 996 | 896 | 890 | 898 | 951 | 936 | 1.3k | 1.2k | 1.2k | 928 | 627 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99        |
|--------|---------|-----------|--------|------------|-------|--------|---------|------------|
| 990    | 14,269  | 100.0%    | 10.2%  | 1.6%       | 7,707 | 56,497 | 468,681 | 44,608,962 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | EUGENE M CONNOR POST 193 INC | 359548 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543459349300919_public.xml) |
| 2012 | 990 | x1 | Powell Valley Health Care Inc | 75004 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349304887_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_04_ESCROW_DIST, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
