# F9_08_REV_PROG_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_PROG_TOT

Program service revenue - total

- Description: Program service revenue group column A

- Table:

  [`F9-P08-T01-REVENUE-PROGRAMS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t01-revenue-programs)
  (many)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-02-ABCDE-COL-A`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

2.5M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.0x (IRS990/ProgramServiceRevenue/TotalRevenueColumn, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.4% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ProgramServiceRevenue/TotalRevenueColumn` | PC | 2009–2012 | 345,376 | 68.8% | 58.2% |
| x2 | `IRS990/ProgramServiceRevenueGrp/TotalRevenueColumnAmt` | PC | 2013–2024 | 2,138,391 | 59% | 55.6% |
| x3 | `IRS990/Form990PartVIII/ProgramServiceRevenue/TotalRevenueColumn` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 26k | 86k | 110k | 124k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 135k | 148k | 157k | 163k | 174k | 178k | 184k | 199k | 207k | 214k | 217k | 164k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 78 | 70 | 69 | 69 | 68 | 67 | 67 | 67 | 66 | 65 | 65 | 62 | 62 | 61 | 61 | 59 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25    | Median | P75     | P99        |
|--------|-----------|-----------|--------|------------|--------|--------|---------|------------|
| 990    | 2,483,758 | 100.0%    | 2.0%   | 0.4%       | 15,021 | 93,548 | 512,465 | 69,079,045 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | APPALACHIAN CENTER FOR EXCELLENCE IN | 351782 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543119349302369_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 477653 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_PROG_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
