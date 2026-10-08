# F9_08_REV_OTH_GAMING_NET_RLTD

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_GAMING_NET_RLTD

Net income from gaming activities - related or exempt function

- Description: gaming related revenue

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-09C-COL-B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

120k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.7x (IRS990/NetIncomeFromGamingGrp/RelatedOrExemptFuncIncomeAmt, 990, TY2019) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 3.7% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/NetIncomeFromGaming/RelatedOrExemptFunctionIncome` | PC | 2009–2012 | 9,425 | 1.95% |  |
| x2 | `IRS990/NetIncomeFromGamingGrp/RelatedOrExemptFuncIncomeAmt` | PC | 2013–2024 | 110,206 | 5.28% |  |
| x3 | `IRS990/Form990PartVIII/NetIncomeFromGaming/RelatedOrExemptFunctionIncome` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 717 | 2.3k | 2.9k | 3.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.0k | 4.7k | 5.1k | 5.5k | 6.0k | 6.3k | 7.2k | 12k | 14k | 15k | 16k | 15k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 4 | 4 | 4 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|-------|--------|--------|---------|
| 990    | 119,631 | 100.0%    | 45.0%  | 3.7%       | 16.50 | 11,662 | 43,377 | 397,499 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | The Family YMCA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511649349301161_public.xml) |
| 2012 | 990 | x1 | BENSALEM SENIOR CITIZENS ASSOCIATION | 16222 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421149349300002_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_GAMING_NET_RLTD, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
