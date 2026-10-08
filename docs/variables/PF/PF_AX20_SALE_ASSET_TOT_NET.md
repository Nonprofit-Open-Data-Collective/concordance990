# PF_AX20_SALE_ASSET_TOT_NET

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX20_SALE_ASSET_TOT_NET

gross sales price minus basis minus sales expense

- Description: Total (net) - gross sales price minus basis minus sales
  expense

- Table:

  [`PF-P99-T20-SALE-OTH-ASSET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t20-sale-oth-asset)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-20`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

75k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 28.0x (GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/TotalNetAmt, 990PF, TY2017) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 39.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAsset/TotalNet` | PF | 2009–2012 | 7,372 | 8.65% | 64.7% |
| x2 | `GainLossSaleOtherAssetsSch/GainLossSaleOtherAssetGrp/TotalNetAmt` | PF | 2013–2024 | 67,609 | 4.81% | 66.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 176 | 1.6k | 2.1k | 3.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.2k | 5.2k | 4.8k | 6.1k | 5.5k | 5.8k | 6.5k | 6.2k | 6.2k | 6.3k | 6.2k | 5.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 8 | 6 | 6 | 9 | 7 | 10 | 8 | 10 | 8 | 8 | 7 | 5 | 5 | 5 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25  | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|------|--------|-------|---------|
| 990-PF | 74,981  | 100.0%    | 0.3%   | 39.1%      | -104 | 77     | 1,366 | 167,498 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | CHILMARK FOUNDATION | 8714 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531329349100988_public.xml) |
| 2012 | 990PF | x1 | The Andrew Hughes Chatham Foundation | 326 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321309349100527_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX20_SALE_ASSET_TOT_NET, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
