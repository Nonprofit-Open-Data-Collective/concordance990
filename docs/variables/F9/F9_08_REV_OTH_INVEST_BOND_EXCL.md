# F9_08_REV_OTH_INVEST_BOND_EXCL

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_INVEST_BOND_EXCL

Income from investment of bonds - excluded from tax

- Description: Income from investment of bonds, column D

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-04-COL-D`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

124k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 52.1x (IRS990/IncmFromInvestBondProceedsGrp/ExclusionAmt, 990, TY2016) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/IncomeFromInvestBondProceeds/ExclusionAmount` | PC | 2009–2012 | 11,829 | 2.02% |  |
| x2 | `IRS990/IncmFromInvestBondProceedsGrp/ExclusionAmt` | PC | 2013–2024 | 112,392 | 5.73% |  |
| x3 | `IRS990/Form990PartVIII/IncomeFromInvestBondProceeds/ExclusionAmount` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 3.3k | 3.5k | 3.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.8k | 4.1k | 4.3k | 4.4k | 4.8k | 5.1k | 6.7k | 14k | 15k | 17k | 18k | 16k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 4 | 4 | 5 | 5 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-----|---------|
| 990    | 124,221 | 100.0%    | 91.7%  | 0.2%       | 0   | 0      | 0   | 553,332 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | KRESS FARM GARDEN PRESERVE | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349303827_public.xml) |
| 2012 | 990 | x1 | MARIMED FOUNDATION FOR ISLAND HEALTH CA… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420309349300687_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_INVEST_BOND_EXCL, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
