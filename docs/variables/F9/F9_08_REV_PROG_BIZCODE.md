# F9_08_REV_PROG_BIZCODE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_PROG_BIZCODE

Program service revenue business code

- Description: Program service revenue group business code

- Table:

  [`F9-P08-T01-REVENUE-PROGRAMS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t01-revenue-programs)
  (many)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-02-ABCDE-COL-BIZCODE`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

1.9M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.0x (IRS990/ProgramServiceRevenueGrp/BusinessCd, 990, TY2021) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.0x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ProgramServiceRevenue/BusinessCode` | PC | 2009–2012 | 253,573 | 50.4% | 57.6% |
| x2 | `IRS990/ProgramServiceRevenueGrp/BusinessCd` | PC | 2013–2024 | 1,621,303 | 44.6% | 54.2% |
| x3 | `IRS990/Form990PartVIII/ProgramServiceRevenue/BusinessCode` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 20k | 62k | 80k | 91k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 100k | 110k | 117k | 122k | 131k | 135k | 141k | 153k | 159k | 165k | 167k | 124k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 60 | 51 | 50 | 50 | 50 | 50 | 50 | 50 | 50 | 50 | 50 | 48 | 47 | 47 | 47 | 45 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25     | Median  | P75     | P99     |
|--------|-----------|-----------|--------|------------|---------|---------|---------|---------|
| 990    | 1,874,868 | 100.0%    | 0.0%   | 0.0%       | 561,499 | 624,100 | 900,099 | 900,099 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | GIRL SCOUTS OF KANSAS HEARTLAND INC | 713990 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202630479349301123_public.xml) |
| 2012 | 990 | x1 | MINNEAPOLIS COLLEGE OF ART & DESIGN | 611710 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401059349300110_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_PROG_BIZCODE, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
