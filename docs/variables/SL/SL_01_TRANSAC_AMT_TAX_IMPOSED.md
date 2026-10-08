# SL_01_TRANSAC_AMT_TAX_IMPOSED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SL_01_TRANSAC_AMT_TAX_IMPOSED

Amount of tax incurred by organization managers or disqualified persons

- Description: Amount of tax imposed

- Table:

  [`SL-P01-T00-EXCESS-BENEFIT-TRANSAC`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sl-p01-t00-excess-benefit-transac)
  (one)

- Part: Part I - Excess Benefit Transactions

- Location:

  `SCHED-L-PART-01-LINE-02`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

718

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.3% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleL/AmountOfTaxImposed` | SZ | 2009–2012 | 77 | 0.00622% |  |
| x2 | `IRS990ScheduleL/TaxImposedAmt` | SZ | 2013–2024 | 641 | 0.0199% |  |
| x3 | `IRS990ScheduleL/Form990ScheduleLPartI/AmountOfTaxImposed` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 11 | 22 | 27 | 17 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 27 | 31 | 22 | 32 | 35 | 42 | 37 | 44 | 73 | 102 | 105 | 91 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99    |
|--------|---------|-----------|--------|------------|-------|--------|--------|--------|
| 990    | 445     | 100.0%    | 35.2%  | 0.4%       | 13.12 | 2,913  | 23,019 | 96,403 |
| 990-EZ | 273     | 100.0%    | 85.3%  | 0.0%       | 0     | 0      | 0      | 1,768  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | SNAPBACK NC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510939349201901_public.xml) |
| 2012 | 990 | x1 | LOGAN COMMUNITY RESOURCES INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431259349301818_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SL_01_TRANSAC_AMT_TAX_IMPOSED, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
