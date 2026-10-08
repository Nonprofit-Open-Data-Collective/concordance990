# SK_04_BOND_ARB_HEDGE_TERM

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_04_BOND_ARB_HEDGE_TERM

Term of hedge

- Description: Form990 Schedule KPart IV - Term of hedge

- Table:

  [`SK-P04-T01-BOND-ARBITRAGE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p04-t01-bond-arbitrage)
  (many)

- Part: Part IV - Arbitrage

- Location:

  `SCHED-K-PART-04-LINE-04C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

17k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990ScheduleK/TaxExemptBondsArbitrageGrp/TermOfHedgePct, 990, TY2018) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleK/Form990ScheduleKPartIV/TermOfHedge: percent or small count; IRS990ScheduleK/TaxExemptBondsArbitrageGrp/TermOfHedgePct: percent or small count |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartIV/TermOfHedge` | SZ | 2009–2012 | 4,500 | 0.75% | 24.7% |
| x2 | `IRS990ScheduleK/TaxExemptBondsArbitrageGrp/TermOfHedgePct` | SZ | 2013–2024 | 12,039 | 0.26% | 24.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 673 | 1.2k | 1.3k | 1.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 1.3k | 1.2k | 1.1k | 1.1k | 1.1k | 1.0k | 992 | 967 | 900 | 855 | 838 | 722 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99   |
|--------|---------|-----------|--------|------------|-----|--------|-------|-------|
| 990    | 16,539  | 100.0%    | 9.6%   | 0.0%       | 9   | 14     | 22.90 | 39.94 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | AIDS HEALTHCARE FOUNDATION | 20.000000000000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513189349316441_public.xml) |
| 2012 | 990 | x1 | BAPTIST MEMORIALS MINISTRIES | 10\. | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303179349304205_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_04_BOND_ARB_HEDGE_TERM, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
