# SH_03_MEDICARE_SURPLUS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SH_03_MEDICARE_SURPLUS

Medicare surplus or shortfall

- Description: Line 5 less line 6

- Table:

  [`SH-P03-T00-FAP-COMMUNITY-BENEFIT-POLICY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sh-p03-t00-fap-community-benefit-policy)
  (one)

- Part: Part III - Bad Debt, Medicare, and Collection Practices

- Location:

  `SCHED-H-PART-03-SECTION-B-LINE-07`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

34k

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
| ⓘ info | Sign convention | 70.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleH/MedicareSurplusOrShortfall` | SZ | 2009–2012 | 8,460 | 1.3% |  |
| x2 | `IRS990ScheduleH/MedicareSurplusOrShortfallAmt` | SZ | 2013–2024 | 25,793 | 0.339% |  |
| x3 | `IRS990ScheduleH/Form990ScheduleHPartIII/Line5LessLine6` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 2.3k | 2.4k | 2.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.3k | 2.3k | 2.3k | 2.2k | 2.3k | 2.2k | 2.2k | 2.2k | 2.2k | 2.3k | 2.2k | 941 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25        | Median   | P75    | P99        |
|--------|---------|-----------|--------|------------|------------|----------|--------|------------|
| 990    | 34,253  | 100.0%    | 0.5%   | 70.1%      | -7,386,444 | -984,980 | 89,456 | 23,902,726 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | THE CLEVELAND CLINIC FOUNDATION | -72298165 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349302136_public.xml) |
| 2012 | 990 | x1 | Powell Valley Health Care Inc | 62705 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349304887_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SH_03_MEDICARE_SURPLUS, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
