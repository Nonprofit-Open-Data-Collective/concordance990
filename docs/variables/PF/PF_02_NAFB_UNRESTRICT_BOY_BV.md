# PF_02_NAFB_UNRESTRICT_BOY_BV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_02_NAFB_UNRESTRICT_BOY_BV

Unrestricted net assets - book value, beginning of year

- Description: Unrestricted - Beginning of Year - Book Value

- Table:

  [`PF-P02-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p02-t00-balance-sheet)
  (one)

- Part: Part II - Balance Sheets

- Location:

  `F990-PF-PART-02-LINE-24-COL-A`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

289k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.3x (IRS990PF/Form990PFBalanceSheetsGrp/NoDonorRstrNetAssestsBOYAmt, 990PF, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 2.4% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/BalanceSheets/UnrestrictedBOY` | PF | 2009–2012 | 23,384 | 23.7% |  |
| x2 | `IRS990PF/Form990PFBalanceSheetsGrp/UnrestrictedBOYAmt` | PF | 2013–2018 | 90,492 | 24.9% |  |
| x3 | `IRS990PF/Form990PFBalanceSheetsGrp/NoDonorRstrNetAssestsBOYAmt` | PF | 2019–2024 | 174,723 | 27% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 591 | 5.6k | 7.8k | 9.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 11k | 13k | 15k | 16k | 17k | 19k |  |  |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  | 21k | 28k | 30k | 32k | 33k | 31k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 25 | 22 | 22 | 24 | 24 | 24 | 25 | 25 | 25 | 25 | 24 | 24 | 25 | 26 | 27 | 27 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75       | P99         |
|--------|---------|-----------|--------|------------|--------|---------|-----------|-------------|
| 990-PF | 288,599 | 100.0%    | 1.6%   | 2.4%       | 33,524 | 321,442 | 1,743,962 | 125,622,324 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | PLANTING SEEDS GROWING HOPE | 88413 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531219349100123_public.xml) |
| 2018 | 990PF | x2 | GENEVA AREA RECREATIONAL EDUCATIONAL | -18642679 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201922809349100202_public.xml) |
| 2012 | 990PF | x1 | The Pavewest Mangan Family Foundation | 220083 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313199349102561_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_02_NAFB_UNRESTRICT_BOY_BV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
