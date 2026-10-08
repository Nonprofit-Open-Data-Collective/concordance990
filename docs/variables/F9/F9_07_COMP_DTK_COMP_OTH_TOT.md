# F9_07_COMP_DTK_COMP_OTH_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_DTK_COMP_OTH_TOT

Other compensation from the organization and related organizations -
total

- Description: Total, column F (F990-PC-PART-07-SECTION-A:
  F990-EZ-PART-04-PART-06-LINE-50-CONBINED)

- Table:

  [`F9-P07-T00-DIR-TRUST-KEY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p07-t00-dir-trust-key)
  (one)

- Part: Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent Contractors

- Location:

  `F990-PC-PART-07-SECTION-A-LINE-01D-COL-F`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 2

xpaths observed / mapped

2.4M

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 9.4x (IRS990/TotalOtherCompensationAmt, 990, TY2021) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TotalOtherCompensation` | PC | 2009–2012 | 313,265 | 61.1% |  |
| x2 | `IRS990/TotalOtherCompensationAmt` | PC | 2013–2024 | 2,081,400 | 62.1% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 25k | 79k | 99k | 110k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 121k | 130k | 139k | 144k | 155k | 176k | 184k | 207k | 212k | 219k | 222k | 172k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 76 | 64 | 62 | 61 | 61 | 60 | 60 | 59 | 59 | 65 | 65 | 65 | 63 | 63 | 63 | 62 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75    | P99     |
|--------|-----------|-----------|--------|------------|-----|--------|--------|---------|
| 990    | 2,394,665 | 100.0%    | 52.5%  | 0.0%       | 0   | 3,146  | 33,816 | 987,284 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | 282881 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_DTK_COMP_OTH_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
