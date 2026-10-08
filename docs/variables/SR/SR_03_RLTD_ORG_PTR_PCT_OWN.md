# SR_03_RLTD_ORG_PTR_PCT_OWN

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SR_03_RLTD_ORG_PTR_PCT_OWN

Percentage ownership

- Description: Percentage ownership

- Table:

  [`SR-P03-T01-ID-RLTD-ORGS-TAXABLE-PARTNERSHIP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sr-p03-t01-id-rltd-orgs-taxable-partnership)
  (many)

- Part: Part III - Identification of Related Organizations Taxable as a
  Partnership

- Location:

  `SCHED-R-PART-03-COL-K`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

54k

filings with a value

2010–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 9501.2x (IRS990ScheduleR/Form990ScheduleRPartIII/PercentageOwnership, 990, TY2012) |
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 25.1x (990: IRS990ScheduleR/Form990ScheduleRPartIII/PercentageOwnership vs IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/OwnershipPct) |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleR/Form990ScheduleRPartIII/PercentageOwnership: fraction (0-1); IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/OwnershipPct: fraction (0-1) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleR/Form990ScheduleRPartIII/PercentageOwnership` | SZ | 2010–2012 | 8,225 | 1.62% | 50.4% |
| x2 | `IRS990ScheduleR/IdRelatedOrgTxblPartnershipGrp/OwnershipPct` | SZ | 2013–2024 | 45,739 | 0.97% | 47.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2.6k | 2.7k | 2.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.2k | 3.5k | 3.7k | 3.8k | 4.0k | 4.0k | 4.1k | 4.2k | 4.2k | 4.2k | 4.2k | 2.7k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25  | Median | P75  | P99 |
|--------|---------|-----------|--------|------------|------|--------|------|-----|
| 990    | 53,964  | 100.0%    | 22.5%  | 0.0%       | 0.00 | 0.01   | 0.58 | 1   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HELPING OUR MENTALLY ILL EXPERIENCE | 0.00010 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513169349309416_public.xml) |
| 2012 | 990 | x1 | Mercy Health System of Southeastern Pen… | 0.23670 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349308784_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SR_03_RLTD_ORG_PTR_PCT_OWN, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
