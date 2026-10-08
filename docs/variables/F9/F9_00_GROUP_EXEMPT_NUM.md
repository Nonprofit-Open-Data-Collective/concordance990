# F9_00_GROUP_EXEMPT_NUM

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_GROUP_EXEMPT_NUM

Group exemption number

- Description: Group exemption number

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-HC`

- Type: numeric

- Scope: HD – header (all returns)

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

261k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990EZ/GroupExemptionNum, 990EZ, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.2x |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/GroupExemptionNumber` | PC | 2009–2012 | 19,031 | 2.49% |  |
| x2 | `IRS990EZ/GroupExemptionNumber` | EZ | 2009–2012 | 17,203 | 2.21% |  |
| x3 | `IRS990EZ/GroupExemptionNum` | EZ | 2013–2024 | 116,346 | 2.32% |  |
| x4 | `IRS990/GroupExemptionNum` | PC | 2013–2024 | 108,887 | 1.87% |  |
| x5 | `IRS990/Form990PartI/GroupExemptionNumber` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.5k | 4.7k | 6.0k | 6.8k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 1.5k | 4.2k | 5.5k | 6.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 6.7k | 7.1k | 7.4k | 7.8k | 8.5k | 8.7k | 9.0k | 11k | 13k | 13k | 13k | 11k |
| x4 |  |  |  |  | 7.0k | 7.5k | 7.9k | 8.1k | 8.5k | 8.5k | 8.5k | 11k | 11k | 11k | 11k | 8.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 | 3 |
| 990-EZ | 10 | 7 | 7 | 6 | 6 | 6 | 6 | 6 | 6 | 6 | 6 | 6 | 7 | 6 | 6 | 6 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99   |
|--------|---------|-----------|--------|------------|-----|--------|-------|-------|
| 990    | 127,918 | 100.0%    | 0.3%   | 0.0%       | 669 | 1,060  | 2,728 | 9,386 |
| 990-EZ | 133,549 | 100.0%    | 0.7%   | 0.0%       | 573 | 1,199  | 3,237 | 9,388 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | INTERNATIONAL ASSOCIATION OF SHEET META… | 6112 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511359349203141_public.xml) |
| 2024 | 990 | x4 | Free and Accepted Masons Carpinteria Lo… | 0214 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502869349301900_public.xml) |
| 2012 | 990EZ | x2 | FARMINGVILLE ELEMENTARY SCHOOL PTA | 1319 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343099349200539_public.xml) |
| 2012 | 990 | x1 | Mercy Health System of Southeastern Pen… | 0928 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201343199349308784_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_GROUP_EXEMPT_NUM, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
