# SK_02_BOND_PROCEED_AMT_DEFEASED

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SK_02_BOND_PROCEED_AMT_DEFEASED

Amount of bonds legally defeased

- Description: Amount of bonds defeased

- Table:

  [`SK-P02-T01-BOND-PROCEEDS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sk-p02-t01-bond-proceeds)
  (many)

- Part: Part II - Proceeds

- Location:

  `SCHED-K-PART-02-LINE-02`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

3 / 3

xpaths observed / mapped

20k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 668.4x (IRS990ScheduleK/TaxExemptBondsProceedsGrp/BondDefeasedAmt, 990, TY2021) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.5x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 4.4x year-on-year (in 2010) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleK/Form990ScheduleKPartII/AmountDefeased` | SZ | 2009–2009 | 1,169 | 3.51% | 37.9% |
| x2 | `IRS990ScheduleK/Form990ScheduleKPartII/AmountBondDefeased` | SZ | 2010–2012 | 3,929 | 0.835% | 48.3% |
| x3 | `IRS990ScheduleK/TaxExemptBondsProceedsGrp/BondDefeasedAmt` | SZ | 2013–2024 | 14,810 | 0.133% | 48.4% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.2k |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 976 | 1.5k | 1.5k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.5k | 1.5k | 1.5k | 1.5k | 1.5k | 1.4k | 1.3k | 1.2k | 1.1k | 1.1k | 842 | 368 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99        |
|--------|---------|-----------|--------|------------|-----|--------|-----|------------|
| 990    | 19,908  | 100.0%    | 85.1%  | 0.0%       | 0   | 0      | 0   | 96,985,050 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | Riverside Healthcare Association Inc | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523189349311317_public.xml) |
| 2012 | 990 | x2 | BRUNSWICK SCHOOL INC | 40325000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421359349305997_public.xml) |
| 2009 | 990 | x1 | Roger Williams University | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201121309349302317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SK_02_BOND_PROCEED_AMT_DEFEASED, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
