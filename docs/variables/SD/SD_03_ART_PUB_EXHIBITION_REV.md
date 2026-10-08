# SD_03_ART_PUB_EXHIBITION_REV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_03_ART_PUB_EXHIBITION_REV

Revenue from works of art, historical treasures, or other similar assets
held for public exhibition, education, or research included on Form 990
part 8 line 1

- Description: Revenues on Form 990; Part VIII; line 1

- Table:

  [`SD-P03-T00-ORGS-COLLECT-ART-HIST-TREASURE-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p03-t00-orgs-collect-art-hist-treasure-oth)
  (one)

- Part: Part III - Organizations Maintaining Collections of Art,
  Historical Treasures, or Other Similar Assets

- Location:

  `SCHED-D-PART-03-LINE-01B(i)`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

11k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.9x |
| ⓘ info | Sign convention | 0.3% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/ArtPublicExhibitionAmts/RevenuesIncluded` | SZ | 2009–2012 | 2,264 | 0.353% |  |
| x2 | `IRS990ScheduleD/ArtPublicExhibitionAmountsGrp/RevenuesIncludedAmt` | SZ | 2013–2024 | 8,296 | 0.181% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartIII/ArtPublicExhibitionAmts/RevenuesOnPartVIIILine1` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 385 | 612 | 633 | 634 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 647 | 689 | 686 | 663 | 703 | 675 | 666 | 770 | 751 | 756 | 789 | 501 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 10,560  | 100.0%    | 47.2%  | 0.3%       | 0   | 2,022  | 67,119 | 4,060,018 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Flying Yankee Restoration Group Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510669349300306_public.xml) |
| 2012 | 990 | x1 | CHAMPLAIN VALLEY TRANSPORTATION MUSEUM | 32932 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303179349301590_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_03_ART_PUB_EXHIBITION_REV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
