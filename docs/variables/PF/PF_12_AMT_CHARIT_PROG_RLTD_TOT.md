# PF_12_AMT_CHARIT_PROG_RLTD_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_12_AMT_CHARIT_PROG_RLTD_TOT

Program Related Investments Total

- Description: Program Related Investments Total

- Table:

  [`PF-P12-T00-QUALIFYING-DISTRIBUTIONS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p12-t00-qualifying-distributions)
  (one)

- Part: Part XII - Qualifying Distributions (2023: Part XI)

- Location:

  `F990-PF-PART-12-LINE-01B`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 3

xpaths observed / mapped

703k

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
| x1 | `IRS990PF/QualifyingDistributions/ProgramRelatedInvestmentsTotal` | PF | 2009–2012 | 58,800 | 55.7% |  |
| x2 | `IRS990PF/QualifyingDistriPartXIIGrp/ProgramRelatedInvstTotalAmt` | PF | 2013–2020 | 339,046 | 63.8% |  |
| x3 | `IRS990PF/PFQualifyingDistributionsGrp/ProgramRelatedInvstTotalAmt` | PF | 2021–2024 | 305,580 | 64.1% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k | 15k | 20k | 22k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 26k | 31k | 34k | 36k | 39k | 45k | 54k | 73k |  |  |  |  |
| x3 |  |  |  |  |  |  |  |  |  |  |  |  | 76k | 78k | 79k | 74k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 65 | 59 | 58 | 56 | 57 | 58 | 57 | 57 | 57 | 60 | 62 | 64 | 63 | 63 | 63 | 64 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99    |
|--------|---------|-----------|--------|------------|-----|--------|-----|--------|
| 990-PF | 703,426 | 100.0%    | 98.6%  | 0.0%       | 0   | 0      | 0   | 24,131 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | C A LUCAS TRUST FBO 1ST CONG | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2020 | 990PF | x2 | LENZMEIER FAMILY FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202113359349100211_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_12_AMT_CHARIT_PROG_RLTD_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
