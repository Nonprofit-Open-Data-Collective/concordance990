# SD_11_RECO_REV_OTH_NO_INCL

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_11_RECO_REV_OTH_NO_INCL

Other amounts included on Form 990 Part 8 line 12 but not line 1

- Description: Other revenues not included

- Table:

  [`SD-P11-T00-RECONCILIATION-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p11-t00-reconciliation-revenue)
  (one)

- Part: Part XI - Reconciliation of Revenue per Audited Financial
  Statements With Revenue per Return

- Location:

  `SCHED-D-PART-11-LINE-04B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

250k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 3.5x (IRS990ScheduleD/OtherRevenuesNotIncluded, 990, TY2010) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 4.0x (990: IRS990ScheduleD/OtherRevenuesNotIncluded vs IRS990ScheduleD/OtherRevenuesNotIncludedAmt) |
| ⓘ info | Sign convention | 35.6% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/OtherRevenuesNotIncluded` | SZ | 2009–2012 | 46,540 | 8.15% |  |
| x2 | `IRS990ScheduleD/OtherRevenuesNotIncludedAmt` | SZ | 2013–2024 | 203,361 | 4.78% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartXII/OtherRevenuesNotIncluded` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.7k | 12k | 14k | 15k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 15k | 16k | 17k | 17k | 18k | 17k | 17k | 18k | 18k | 18k | 19k | 13k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 17 | 10 | 9 | 8 | 8 | 7 | 7 | 7 | 7 | 6 | 6 | 6 | 5 | 5 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25     | Median | P75     | P99        |
|--------|---------|-----------|--------|------------|---------|--------|---------|------------|
| 990    | 249,901 | 100.0%    | 13.3%  | 35.6%      | -13,665 | 2,894  | 177,608 | 36,230,525 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HAWAII PREPARATORY ACADEMY | 598241 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510989349300406_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_11_RECO_REV_OTH_NO_INCL, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
