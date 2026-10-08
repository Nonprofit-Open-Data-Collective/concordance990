# SK_02_BOND_PROCEED_AMT_RETIRED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_02_BOND_PROCEED_AMT_RETIRED

Amount of bonds retired

- Description: Amount of bonds retired

- Table:

  [`SK-P02-T01-BOND-PROCEEDS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p02-t01-bond-proceeds)
  (many)

- Part: Part II - Proceeds

- Location:

  `SCHED-K-PART-02-LINE-01`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 2

xpaths observed / mapped

53k

filings with a value

2010–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.3x (IRS990ScheduleK/Form990ScheduleKPartII/AmountRetired, 990, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.2x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartII/AmountRetired` | SZ | 2010–2012 | 8,687 | 1.9% | 39.9% |
| x2 | `IRS990ScheduleK/TaxExemptBondsProceedsGrp/RetiredAmt` | SZ | 2013–2024 | 44,287 | 0.687% | 39.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2.2k | 3.0k | 3.4k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.5k | 3.7k | 3.8k | 3.8k | 4.1k | 3.9k | 3.9k | 3.9k | 3.9k | 3.9k | 3.9k | 1.9k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 52,974 | 100.0% | 18.0% | 0.0% | 186,787 | 1,320,778 | 4,692,500 | 123,260,000 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | INFIRMARY HEALTH SYSTEM INC | 153267640 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610429349300441_public.xml) |
| 2012 | 990 | x1 | AMERICAN CIVIL LIBERTIES UNION FOUNDATI… | 4290000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332839349300503_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_02_BOND_PROCEED_AMT_RETIRED, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
