# SA_05_ASSET_MINIM_FMV_OTH_PY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SA_05_ASSET_MINIM_FMV_OTH_PY

Fair market value of other non-exempt-use assets - prior year

- Description: Prior year amount

- Table:

  [`SA-P05-T00-SUPPORT-ORGS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sa-p05-t00-support-orgs)
  (one)

- Part: Part V - Type III Non-Functionally Integrated 509(a)(3)
  Supporting Organizations

- Location:

  `SCHED-A-PART-05-SECTION-B-LINE-01C-COL-A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

1 / 1

xpaths observed / mapped

24k

filings with a value

2014–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 3.1x year-on-year (in 2024) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleA/MinimumAssetAmountGrp/FMVOtherNonExemptUseAssetGrp/PriorYearAmt` | SZ | 2014–2024 | 23,893 | 1.15% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  | 1.3k | 1.3k | 1.4k | 1.5k | 1.5k | 1.7k | 2.2k | 2.1k | 2.1k | 3.5k | 5.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | \<1 | \<1 | 1 | 1 |
| 990-EZ |  |  |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | 1 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99        |
|--------|---------|-----------|--------|------------|-----|--------|-----|------------|
| 990    | 15,608  | 100.0%    | 90.9%  | 0.0%       | 0   | 0      | 0   | 11,270,856 |
| 990-EZ | 8,285   | 100.0%    | 98.2%  | 0.0%       | 0   | 0      | 0   | 15,312     |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x1 | Native Development Network | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501789349200600_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SA_05_ASSET_MINIM_FMV_OTH_PY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
