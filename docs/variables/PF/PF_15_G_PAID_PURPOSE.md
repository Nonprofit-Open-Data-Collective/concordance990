# PF_15_G_PAID_PURPOSE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_PAID_PURPOSE

Purpose of Grant or Contribution

- Description: Purpose of Grant or Contribution

- Table:

  [`PF-P15-T01-SUPPLEMENTARY-INFO-GRANT-PAID`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t01-supplementary-info-grant-paid)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-03A-COL-04`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 3

xpaths observed / mapped

914k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/PurposeOfGrantOrContribution: longest value is exactly 1000 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/GrantOrContributionPurposeTxt: longest value is exactly 1000 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriPaidDuringYear/PurposeOfGrantOrContribution` | PF | 2009–2012 | 84,016 | 81.9% | 77.5% |
| x2 | `IRS990PF/SupplementaryInformationGrp/GrantOrContributionPdDurYrGrp/GrantOrContributionPurposeTxt` | PF | 2013–2024 | 829,544 | 76.4% | 76.0% |
| x3 | `IRS990PF/SupplementaryInfomation/GrantOrContriPaidDuringYear/PurposeOfGrantOrContribution` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.9k | 21k | 29k | 33k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 38k | 44k | 48k | 51k | 56k | 61k | 71k | 91k | 93k | 94k | 95k | 88k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 81 | 83 | 83 | 82 | 82 | 83 | 82 | 81 | 81 | 81 | 81 | 79 | 78 | 77 | 76 | 76 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 913,560 | 26             | 1,000   |

### Most common values

| Value                    | Filings | Share |
|--------------------------|---------|-------|
| `GENERAL SUPPORT`        | 63,352  | 17.8% |
| `CHARITABLE`             | 44,467  | 12.5% |
| `GENERAL`                | 39,565  | 11.1% |
| `GENERAL OPERATING`      | 37,669  | 10.6% |
| `SCHOLARSHIP`            | 37,257  | 10.5% |
| `EDUCATION`              | 33,329  | 9.4%  |
| `UNRESTRICTED GENERAL`   | 28,145  | 7.9%  |
| `SCHOLARSHIPS`           | 21,994  | 6.2%  |
| `UNRESTRICTED`           | 17,900  | 5.0%  |
| `GENERAL FUND`           | 12,594  | 3.5%  |
| `EDUCATIONAL`            | 11,888  | 3.3%  |
| `RELIGIOUS`              | 4,624   | 1.3%  |
| `General & Unrestricted` | 1,492   | 0.4%  |
| `PROGRAM SUPPORT`        | 1,407   | 0.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | C A LUCAS TRUST FBO 1ST CONG | GENERAL OPERATING | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | UNRESTRICTED-GENERAL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_PAID_PURPOSE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
