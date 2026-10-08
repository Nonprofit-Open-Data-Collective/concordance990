# SK_03_BOND_BIZUSE_CHANGE_PCT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_03_BOND_BIZUSE_CHANGE_PCT

Percentage of bond-financed property sold or disposed of

- Description: Percentage change in use of bond financed property

- Table:

  [`SK-P03-T01-BOND-PRIVATE-BIZ-USE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p03-t01-bond-private-biz-use)
  (many)

- Part: Part III - Private Business Use

- Location:

  `SCHED-K-PART-03-LINE-08B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

2.8k

filings with a value

2012–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleK/Form990ScheduleKPartIII/PrcntgeBondFinancedProp: fraction (0-1); IRS990ScheduleK/TaxExemptBondsPrivateBusUseGrp/ChangeInUseBondFinancedPropPct: fraction (0-1) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartIII/PrcntgeBondFinancedProp` | SZ | 2012–2012 | 345 | 0.192% | 45.5% |
| x2 | `IRS990ScheduleK/TaxExemptBondsPrivateBusUseGrp/ChangeInUseBondFinancedPropPct` | SZ | 2013–2024 | 2,439 | 0.152% | 40.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  | 345 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 205 | 206 | 156 | 132 | 163 | 202 | 204 | 194 | 189 | 177 | 189 | 422 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75  | P99  |
|--------|---------|-----------|--------|------------|-----|--------|------|------|
| 990    | 2,784   | 100.0%    | 72.1%  | 0.0%       | 0   | 0      | 0.01 | 0.43 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Casa Colina Hospital and Centers for He… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610479349301421_public.xml) |
| 2012 | 990 | x1 | Phoenix Children's Hospital | 0.00000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201510279349300641_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_03_BOND_BIZUSE_CHANGE_PCT, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
