# SC_02_LOB_ACT_PUBLICA_BCAST_AMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_LOB_ACT_PUBLICA_BCAST_AMT

Amount of lobbying through publications or published or broadcast
statements

- Description: Publications; or published or broadcast statements (only
  for section 501(c)(3))(Amount)

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-B-LINE-01E-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

3.8k

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
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.5x (990: IRS990ScheduleC/PublicationsOrBroadcastAmount vs IRS990ScheduleC/PublicationsOrBroadcastAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/PublicationsOrBroadcastAmount` | SZ | 2009–2012 | 681 | 0.0841% |  |
| x2 | `IRS990ScheduleC/PublicationsOrBroadcastAmt` | SZ | 2013–2024 | 3,072 | 0.0346% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartII/PublicationsOrBroadcastAmount` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 82 | 184 | 185 | 230 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 300 | 300 | 265 | 271 | 283 | 287 | 263 | 244 | 236 | 237 | 228 | 158 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-------|--------|-------|---------|
| 990    | 3,578   | 100.0%    | 28.2%  | 0.0%       | 93.25 | 698    | 5,056 | 193,282 |
| 990-EZ | 175     | 100.0%    | 38.9%  | 0.0%       | 24    | 156    | 278   | 794     |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Mobility Works Inc | 756 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600899349301305_public.xml) |
| 2012 | 990 | x1 | NATIONAL WOMEN'S HEALTH NETWORK | 552 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321339349304722_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_LOB_ACT_PUBLICA_BCAST_AMT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
