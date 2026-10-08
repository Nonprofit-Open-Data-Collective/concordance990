# F9_09_EXP_GRANT_US_INDIV_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_09_EXP_GRANT_US_INDIV_TOT

Grants to domestic individuals - total expenses

- Description: Total Grants and Assistance to Domestic Individuals -
  Total Expense

- Table:

  [`F9-P09-T00-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p09-t00-expenses)
  (one)

- Part: Part IX - Statement of Functional Expenses

- Location:

  `F990-PC-PART-09-LINE-02-COL-A`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

1.3M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.7x (IRS990/GrantsToDomesticIndividualsGrp/TotalAmt, 990, TY2021) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.3x (990: IRS990/GrantsToDomesticIndividuals/Total vs IRS990/GrantsToDomesticIndividualsGrp/TotalAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/GrantsToDomesticIndividuals/Total` | PC | 2009–2012 | 176,998 | 35.5% |  |
| x2 | `IRS990/GrantsToDomesticIndividualsGrp/TotalAmt` | PC | 2013–2024 | 1,120,546 | 33.3% |  |
| x3 | `IRS990/Form990PartIX/GrantsToDomesticIndividuals/Total` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 13k | 44k | 57k | 64k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 70k | 76k | 80k | 83k | 88k | 90k | 92k | 104k | 111k | 116k | 118k | 92k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 38 | 35 | 36 | 36 | 35 | 35 | 34 | 34 | 34 | 33 | 33 | 33 | 33 | 33 | 33 | 33 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75    | P99        |
|--------|-----------|-----------|--------|------------|-----|--------|--------|------------|
| 990    | 1,297,543 | 100.0%    | 59.4%  | 0.0%       | 0   | 0      | 22,743 | 10,931,829 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | 12474 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | DAVIS MADRIGALS INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441019349301124_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_09_EXP_GRANT_US_INDIV_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
