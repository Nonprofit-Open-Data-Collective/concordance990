# SK_02_BOND_PROCEED_CAP_EXP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_02_BOND_PROCEED_CAP_EXP

Capital expenditures from proceeds

- Description: Capital expenditures

- Table:

  [`SK-P02-T01-BOND-PROCEEDS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p02-t01-bond-proceeds)
  (many)

- Part: Part II - Proceeds

- Location:

  `SCHED-K-PART-02-LINE-10`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

62k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.2x (IRS990ScheduleK/Form990ScheduleKPartII/CapitalExpenditures, 990, TY2011) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartII/CapitalExpenditures` | SZ | 2009–2012 | 14,428 | 2.35% | 38.5% |
| x2 | `IRS990ScheduleK/TaxExemptBondsProceedsGrp/CapitalExpendituresAmt` | SZ | 2013–2024 | 47,843 | 0.717% | 37.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.3k | 3.8k | 4.1k | 4.2k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 4.2k | 4.3k | 4.3k | 4.2k | 4.4k | 4.1k | 4.1k | 4.1k | 4.1k | 4.1k | 4.0k | 2.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 7 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 62,271 | 100.0% | 14.5% | 0.0% | 1,158,640 | 6,629,404 | 20,975,202 | 248,975,782 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | KETCHUM-GRANDE MEMORIAL SCHOOL | 4017241 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503149349303680_public.xml) |
| 2012 | 990 | x1 | COMMUNITY MEMORIAL HEALTHCENTER | 1170000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420429349300502_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_02_BOND_PROCEED_CAP_EXP, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
