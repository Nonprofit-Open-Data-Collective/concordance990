# SK_04_BOND_ARB_GIC_TERM

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_04_BOND_ARB_GIC_TERM

Term of GIC

- Description: Form990 Schedule KPart IV - Term of GIC

- Table:

  [`SK-P04-T01-BOND-ARBITRAGE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p04-t01-bond-arbitrage)
  (many)

- Part: Part IV - Arbitrage

- Location:

  `SCHED-K-PART-04-LINE-05C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

4.7k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ✓ pass | One scale across xpaths (fraction vs percent) | IRS990ScheduleK/Form990ScheduleKPartIV/TermOfGIC: percent or small count; IRS990ScheduleK/TaxExemptBondsArbitrageGrp/TermOfGICPct: percent or small count |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartIV/TermOfGIC` | SZ | 2009–2012 | 1,691 | 0.275% | 30.0% |
| x2 | `IRS990ScheduleK/TaxExemptBondsArbitrageGrp/TermOfGICPct` | SZ | 2013–2024 | 2,980 | 0.157% | 27.5% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 259 | 457 | 480 | 495 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 423 | 314 | 261 | 208 | 173 | 198 | 204 | 209 | 199 | 169 | 187 | 435 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25  | Median | P75   | P99   |
|--------|---------|-----------|--------|------------|------|--------|-------|-------|
| 990    | 4,671   | 100.0%    | 32.0%  | 0.0%       | 1.45 | 2.85   | 13.80 | 35.30 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Casa Colina Hospital and Centers for He… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610479349301421_public.xml) |
| 2012 | 990 | x1 | ST JOHN'S LUTHERAN MINISTRIES INC | 1.200000000000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303199349302550_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_04_BOND_ARB_GIC_TERM, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
