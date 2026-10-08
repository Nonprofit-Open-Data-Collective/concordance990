# F9_08_REV_MISC_OTH_EXCL

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_MISC_OTH_EXCL

Other miscellaneous revenue - excluded from tax

- Description: Misc. Revenue Excluded From Tax Under Sections 512-514

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-11D-COL-D`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

162k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 55.8x (IRS990/MiscellaneousRevenueGrp/ExclusionAmt, 990, TY2016) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 4.4x (990: IRS990/MiscellaneousRevenue/ExclusionAmount vs IRS990/MiscellaneousRevenueGrp/ExclusionAmt) |
| ⓘ info | Sign convention | 1.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/MiscellaneousRevenue/ExclusionAmount` | PC | 2009–2012 | 15,606 | 2.8% |  |
| x2 | `IRS990/MiscellaneousRevenueGrp/ExclusionAmt` | PC | 2013–2024 | 146,725 | 6.64% |  |
| x3 | `IRS990/Form990PartVIII/MiscellaneousRevenue/ExclusionAmount` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.8k | 4.1k | 4.7k | 5.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 5.2k | 5.9k | 6.2k | 6.3k | 6.8k | 10.0k | 11k | 16k | 18k | 20k | 23k | 18k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 4 | 4 | 5 | 5 | 6 | 7 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99       |
|--------|---------|-----------|--------|------------|-----|--------|-------|-----------|
| 990    | 162,331 | 100.0%    | 66.9%  | 1.2%       | 0   | 0      | 6,434 | 2,089,184 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | 500 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | MARIMED FOUNDATION FOR ISLAND HEALTH CA… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420309349300687_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_MISC_OTH_EXCL, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
