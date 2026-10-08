# F9_01_NAFB_TOT_BOY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_01_NAFB_TOT_BOY

Net assets or fund balances - beginning of year

- Description: Net Assets or Fund Balances; BOY

- Table:

  [`F9-P01-T00-SUMMARY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p01-t00-summary)
  (one)

- Part: Part I - Summary

- Location:

  `F990-PC-PART-01-LINE-22-BOY`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

5.8M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.3x (IRS990/NetAssetsOrFundBalancesBOY, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 5.3% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/NetAssetsOrFundBalancesBOY` | PC | 2009–2012 | 490,975 | 99.2% |  |
| x2 | `IRS990EZ/NetAssetsOrFundBalancesBOY` | EZ | 2009–2012 | 247,613 | 97.3% |  |
| x3 | `IRS990/NetAssetsOrFundBalancesBOYAmt` | PC | 2013–2024 | 3,290,237 | 97.7% |  |
| x4 | `IRS990EZ/NetAssetsOrFundBalancesBOYAmt` | EZ | 2013–2024 | 1,786,390 | 94% |  |
| x5 | `IRS990/Form990PartI/NetAssetsOrFundBalancesBOY` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 122k | 158k | 178k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 15k | 61k | 80k | 91k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 197k | 216k | 230k | 240k | 258k | 267k | 279k | 315k | 329k | 341k | 347k | 271k |
| x4 |  |  |  |  | 101k | 112k | 120k | 125k | 133k | 142k | 145k | 161k | 191k | 194k | 194k | 168k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 98 | 98 | 98 | 98 | 98 | 98 | 98 |
| 990-EZ | 98 | 97 | 97 | 97 | 97 | 96 | 96 | 96 | 96 | 95 | 95 | 95 | 94 | 94 | 94 | 94 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 3,781,196 | 100.0% | 0.6% | 6.3% | 117,585 | 512,648 | 2,173,228 | 168,847,032 |
| 990-EZ | 2,033,993 | 100.0% | 2.2% | 3.6% | 13,456 | 43,437 | 108,417 | 434,185 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | Science & Technology Education Project | 56922 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2024 | 990 | x3 | IAAI FOUNDATION INC | 427720 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x2 | PLACERVILLE ROTARY CLUB | 240990 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 3726110 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_01_NAFB_TOT_BOY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
