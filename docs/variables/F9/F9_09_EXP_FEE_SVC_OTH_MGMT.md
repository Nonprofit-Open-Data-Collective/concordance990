# F9_09_EXP_FEE_SVC_OTH_MGMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_09_EXP_FEE_SVC_OTH_MGMT

Fees for services - other - management and general expenses

- Description: Fees for Services - Other - Management and General

- Table:

  [`F9-P09-T00-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p09-t00-expenses)
  (one)

- Part: Part IX - Statement of Functional Expenses

- Location:

  `F990-PC-PART-09-LINE-11G-COL-C`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

1.2M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.9x (IRS990/FeesForServicesOther/ManagementAndGeneral, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/FeesForServicesOther/ManagementAndGeneral` | PC | 2009–2012 | 150,460 | 29.2% |  |
| x2 | `IRS990/FeesForServicesOtherGrp/ManagementAndGeneralAmt` | PC | 2013–2024 | 1,059,712 | 32% |  |
| x3 | `IRS990/Form990PartIX/FeesForServicesOther/ManagementAndGeneral` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 14k | 37k | 48k | 52k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 59k | 65k | 71k | 74k | 81k | 85k | 90k | 102k | 109k | 116k | 120k | 89k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 41 | 30 | 30 | 29 | 30 | 30 | 30 | 30 | 31 | 31 | 32 | 32 | 32 | 33 | 34 | 32 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25   | Median | P75    | P99       |
|--------|-----------|-----------|--------|------------|-------|--------|--------|-----------|
| 990    | 1,210,169 | 100.0%    | 8.3%   | 0.1%       | 1,213 | 8,279  | 40,696 | 3,701,497 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | YOUNG MEN'S CHRISTIAN ASSOCIATION | 3167 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | 250 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_09_EXP_FEE_SVC_OTH_MGMT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
