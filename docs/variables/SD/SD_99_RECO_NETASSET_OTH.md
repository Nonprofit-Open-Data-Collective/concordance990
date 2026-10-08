# SD_99_RECO_NETASSET_OTH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_99_RECO_NETASSET_OTH

Other change in assets

- Description: Other changes amount (see SD-FORM-VERSION-2011-PART-11)

- Table:

  [`SD-P99-T00-RECONCILIATION-NETASSETS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p99-t00-reconciliation-netassets)
  (one)

- Part: Lines from earlier versions of the schedule (reconciliation of
  net assets)

- Location:

  `SCHED-D-PART-99-LINE-08`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

39k

filings with a value

2009–2011

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 47.4% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/OtherAmount` | SZ | 2009–2011 | 38,897 | 10.8% |  |
| x2 | `IRS990ScheduleD/Form990ScheduleDPartXI/OtherAmount` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.8k | 15k | 17k |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 20 | 12 | 11 |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25     | Median | P75    | P99        |
|--------|---------|-----------|--------|------------|---------|--------|--------|------------|
| 990    | 38,897  | 100.0%    | 9.0%   | 47.4%      | -77,691 | -0.50  | 35,542 | 10,286,883 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2011 | 990 | x1 | Montana Retail Store Employees | 660865 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322319349300047_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_99_RECO_NETASSET_OTH, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
