# PF_05_4940E_ASSET_NOCHARIT_CY_M2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_05_4940E_ASSET_NOCHARIT_CY_M2

Year 2

- Description: Noncharitable Assets - Year 2

- Table:

  [`PF-P05-T00-NET-INVEST-INCOME-TAX-4940E`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p05-t00-net-invest-income-tax-4940e)
  (one)

- Part: Part V - Qualification Under Section 4940(e) for Reduced Tax on
  Net Investment Income (removed after 2019)

- Location:

  `F990-PF-PART-05-LINE-01-COL-C`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

430k

filings with a value

2009–2019

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.4x (IRS990PF/QlfyUndSect4940eForReducedTax/NoncharitableAssetsYear2, 990PF, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/QlfyUndSect4940eForReducedTax/NoncharitableAssetsYear2` | PF | 2009–2012 | 79,250 | 77.6% |  |
| x2 | `IRS990PF/QlfyUndSect4940eReducedTaxGrp/NetVlNoncharitableAssetsYr2Amt` | PF | 2013–2019 | 350,525 | 77.5% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.8k | 20k | 27k | 31k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 36k | 42k | 45k | 48k | 52k | 59k | 68k |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 78 | 79 | 77 | 78 | 78 | 78 | 77 | 77 | 77 | 78 | 77 |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25     | Median  | P75       | P99        |
|--------|---------|-----------|--------|------------|---------|---------|-----------|------------|
| 990-PF | 429,775 | 100.0%    | 2.9%   | 0.0%       | 119,418 | 593,064 | 1,946,937 | 66,845,814 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2019 | 990PF | x2 | TR UA ALSTON H LANCASTER | 940178 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202030939349100218_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | 1626746 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_05_4940E_ASSET_NOCHARIT_CY_M2, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
