# SD_99_RECO_NETASSET_EXCESS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_99_RECO_NETASSET_EXCESS

Excess or deficit

- Description: Excess or deficit (see SD-FORM-VERSION-2011-PART-11)

- Table:

  [`SD-P99-T00-RECONCILIATION-NETASSETS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p99-t00-reconciliation-netassets)
  (one)

- Part: Lines from earlier versions of the schedule (reconciliation of
  net assets)

- Location:

  `SCHED-D-PART-99-LINE-03`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

1 / 2

xpaths observed / mapped

172k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.4x (IRS990ScheduleD/ExcessOrDeficitForYear, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 42.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/ExcessOrDeficitForYear` | SZ | 2009–2011 | 172,002 | 51.2% |  |
| x2 | `IRS990ScheduleD/Form990ScheduleDPartXI/ExcessOrDeficitForYear` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 24k | 67k | 82k |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 71 | 54 | 51 |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25     | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|---------|--------|---------|-----------|
| 990    | 172,002 | 100.0%    | 0.4%   | 42.1%      | -52,639 | 20,834 | 249,691 | 9,843,119 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2011 | 990 | x1 | POMONA VALLEY HOSPITAL MEDICAL CTR FNDTN | 901864 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201223129349300827_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_99_RECO_NETASSET_EXCESS, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
