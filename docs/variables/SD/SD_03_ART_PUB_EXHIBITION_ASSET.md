# SD_03_ART_PUB_EXHIBITION_ASSET

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_03_ART_PUB_EXHIBITION_ASSET

Assets from works of art, historical treasures, or other similar assets
held for public exhibition, education, or research included on Form 990
part 8 line 1

- Description: Assets in Form 990; Part X

- Table:

  [`SD-P03-T00-ORGS-COLLECT-ART-HIST-TREASURE-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p03-t00-orgs-collect-art-hist-treasure-oth)
  (one)

- Part: Part III - Organizations Maintaining Collections of Art,
  Historical Treasures, or Other Similar Assets

- Location:

  `SCHED-D-PART-03-LINE-01B(ii)`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

27k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990ScheduleD/ArtPublicExhibitionAmts/AssetsInPartX, 990, TY2011) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/ArtPublicExhibitionAmts/AssetsInPartX` | SZ | 2009–2012 | 4,861 | 0.858% |  |
| x2 | `IRS990ScheduleD/ArtPublicExhibitionAmountsGrp/AssetsIncludedAmt` | SZ | 2013–2024 | 21,810 | 0.449% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartIII/ArtPublicExhibitionAmts/AssetsInPartX` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 627 | 1.3k | 1.4k | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.6k | 1.7k | 1.8k | 1.8k | 1.9k | 1.9k | 1.9k | 2.0k | 2.0k | 2.0k | 2.0k | 1.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75       | P99        |
|--------|---------|-----------|--------|------------|--------|---------|-----------|------------|
| 990    | 26,671  | 100.0%    | 3.5%   | 0.0%       | 51,787 | 239,670 | 1,044,698 | 37,114,201 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HISTORIC ANNAPOLIS INC | 1246365 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630779349301293_public.xml) |
| 2012 | 990 | x1 | MASSACHUSETTS SCHOOL OF PROFESSIONAL | 167200 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201440389349300009_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_03_ART_PUB_EXHIBITION_ASSET, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
