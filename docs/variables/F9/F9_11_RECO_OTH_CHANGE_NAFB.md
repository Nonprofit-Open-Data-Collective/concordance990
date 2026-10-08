# F9_11_RECO_OTH_CHANGE_NAFB

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_11_RECO_OTH_CHANGE_NAFB

Other changes in net assets or fund balances

- Description: Other changes in net assets or fund balances

- Table:

  [`F9-P11-T00-ASSETS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p11-t00-assets)
  (one)

- Part: Part XI - Reconciliation of Net Assets

- Location:

  `F990-PC-PART-11-LINE-09`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 4

xpaths observed / mapped

2.9M

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 1243.0x (IRS990EZ/OtherChangesInNetAssets, 990EZ, TY2010) |
| ⚠ fail | Pooled xpaths are on the same scale (same return type) | medians differ 1498.5x (990: IRS990/ReconcilationOtherChanges vs IRS990/OtherChangesInNetAssetsAmt) |
| ⓘ info | Sign convention | 15.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/OtherChangesInNetAssets` | EZ | 2009–2012 | 93,965 | 36.1% |  |
| x2 | `IRS990/ReconcilationOtherChanges` | PC | 2010–2012 | 286,993 | 57.4% |  |
| x3 | `IRS990/OtherChangesInNetAssetsAmt` | PC | 2013–2024 | 1,873,867 | 57.1% |  |
| x4 | `IRS990EZ/OtherChangesInNetAssetsAmt` | EZ | 2013–2024 | 685,681 | 39.4% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3.9k | 25k | 31k | 34k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 77k | 107k | 103k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 112k | 121k | 128k | 134k | 144k | 150k | 158k | 182k | 190k | 197k | 201k | 158k |
| x4 |  |  |  |  | 37k | 40k | 43k | 44k | 47k | 50k | 52k | 61k | 80k | 81k | 80k | 70k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 63 | 67 | 57 | 56 | 55 | 55 | 55 | 55 | 55 | 56 | 57 | 56 | 56 | 57 | 57 |
| 990-EZ | 25 | 40 | 38 | 36 | 35 | 34 | 34 | 34 | 34 | 33 | 34 | 36 | 40 | 39 | 39 | 39 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75 | P99       |
|--------|-----------|-----------|--------|------------|-----|--------|-----|-----------|
| 990    | 2,160,860 | 100.0%    | 68.6%  | 15.2%      | 0   | 0      | 0   | 5,277,929 |
| 990-EZ | 779,645   | 100.0%    | 65.9%  | 15.3%      | 0   | 0      | 0   | 54,455    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | SAINT CLAIR HOUSE INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2024 | 990 | x3 | OWL CREEK COUNTRY CLUB | -56619 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990EZ | x1 | ART FORMS & THEATRE CONCEPTS INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |
| 2012 | 990 | x2 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_11_RECO_OTH_CHANGE_NAFB, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
