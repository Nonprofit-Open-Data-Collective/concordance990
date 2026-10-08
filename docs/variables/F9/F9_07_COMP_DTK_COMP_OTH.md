# F9_07_COMP_DTK_COMP_OTH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_DTK_COMP_OTH

Other compensation from the organization and related organizations

- Description: Other compensation (F990-PC-PART-07-SECTION-A:
  F990-EZ-PART-04-PART-06-LINE-50-CONBINED)

- Table:

  [`F9-P07-T01-COMPENSATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p07-t01-compensation)
  (many)

- Part: Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent Contractors

- Location:

  `F990-PC-PART-07-SECTION-A-LINE-01A-COL-F`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 6

xpaths observed / mapped

4.9M

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/Form990PartVIISectionA/OtherCompensation` | PC | 2009–2012 | 490,362 | 98.9% | 97.4% |
| x2 | `IRS990EZ/OfficerDirectorTrusteeKeyEmpl/ExpenseAccountOtherAllowances` | EZ | 2009–2012 | 103,629 | 39.2% | 93.1% |
| x3 | `IRS990/Form990PartVIISectionAGrp/OtherCompensationAmt` | PC | 2013–2024 | 3,339,026 | 100% | 97.2% |
| x4 | `IRS990EZ/OfficerDirectorTrusteeEmplGrp/ExpenseAccountOtherAllwncAmt` | EZ | 2013–2024 | 961,221 | 61.1% | 91.2% |
| x5 | `IRS990EZ/Form990PartVIISectionA/OtherCompensation` | EZ | not observed | 0 |  |  |
| x6 | `IRS990EZ/Form990PartVIISectionAGrp/OtherCompensationAmt` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 122k | 158k | 178k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 7.6k | 27k | 32k | 37k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 197k | 216k | 232k | 242k | 260k | 271k | 284k | 320k | 336k | 349k | 355k | 277k |
| x4 |  |  |  |  | 41k | 45k | 49k | 51k | 55k | 77k | 80k | 90k | 119k | 122k | 123k | 109k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 49 | 42 | 39 | 39 | 39 | 39 | 39 | 39 | 40 | 52 | 52 | 53 | 59 | 59 | 60 | 61 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75 | P99    |
|--------|-----------|-----------|--------|------------|-----|--------|-----|--------|
| 990    | 3,829,362 | 100.0%    | 89.8%  | 0.0%       | 0   | 0      | 0   | 72,575 |
| 990-EZ | 1,064,849 | 100.0%    | 99.0%  | 0.0%       | 0   | 0      | 0   | 57.50  |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | KYLE GOLDBERG MEMORIAL FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511219349201801_public.xml) |
| 2024 | 990 | x3 | IAAI FOUNDATION INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990EZ | x2 | CONCORD CHRISTIAN ACADEMY GIVING & GOING | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332829349200713_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_DTK_COMP_OTH, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
