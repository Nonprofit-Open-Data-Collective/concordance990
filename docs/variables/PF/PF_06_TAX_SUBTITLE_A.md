# PF_06_TAX_SUBTITLE_A

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_06_TAX_SUBTITLE_A

Subtitle A Tax

- Description: Subtitle A Tax

- Table:

  [`PF-P06-T00-INVEST-INCOME-EXCISE-TAX`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p06-t00-invest-income-excise-tax)
  (one)

- Part: Part VI - Excise Tax Based on Investment Income (2023: Part V)

- Location:

  `F990-PF-PART-06-LINE-04`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

660k

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
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/ExciseTaxBasedOnInvestmentIncm/SubtitleATax` | PF | 2009–2012 | 54,749 | 51.9% |  |
| x2 | `IRS990PF/ExciseTaxBasedOnInvstIncmGrp/SubtitleATaxAmt` | PF | 2013–2024 | 605,207 | 60.5% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 14k | 19k | 21k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 24k | 28k | 31k | 33k | 36k | 44k | 53k | 69k | 72k | 72k | 73k | 70k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 59 | 55 | 54 | 52 | 52 | 53 | 52 | 52 | 53 | 59 | 60 | 60 | 60 | 59 | 59 | 61 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----|
| 990-PF | 659,956 | 100.0%    | 99.7%  | 0.0%       | 0   | 0      | 0   | 0   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | C A LUCAS TRUST FBO 1ST CONG | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_06_TAX_SUBTITLE_A, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
