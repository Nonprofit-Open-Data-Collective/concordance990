# PF_08_COMP_KONTR_NUM_GT_50K

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_KONTR_NUM_GT_50K

Total number of other contractors paid over \$50;000

- Description: Total number of other contractors paid over \$50;000

- Table:

  [`PF-P08-T00-COMPENSATION-CONTRACTORS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p08-t00-compensation-contractors)
  (one)

- Part: Part VIII - Information About Officers, Directors, Trustees,
  Foundation Managers, Highly Paid Employees, and Contractors (2023:
  Part VII)

- Location:

  `F990-PF-PART-08-LINE-03`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

653k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check             | Detail                       |
|--------|-------------------------|------------------------------|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/TotNumberOfCntrctPaidOver50k` | PF | 2009–2012 | 59,249 | 56% |  |
| x2 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/ContractorPaidOver50kCnt` | PF | 2013–2024 | 593,557 | 57.6% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k | 15k | 20k | 22k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 25k | 30k | 32k | 35k | 38k | 43k | 51k | 66k | 68k | 69k | 70k | 66k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 64 | 60 | 59 | 56 | 55 | 56 | 55 | 55 | 56 | 57 | 58 | 58 | 57 | 56 | 56 | 58 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----|
| 990-PF | 652,806 | 100.0%    | 99.4%  | 0.0%       | 0   | 0      | 0   | 0   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | EDWIN D MARTIN AND JUDITH M MARTIN PRIV… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531279349100148_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_KONTR_NUM_GT_50K, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
