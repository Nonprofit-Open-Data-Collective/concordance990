# SC_02_LOB_ACT_4912TAX_ORG

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_LOB_ACT_4912TAX_ORG

Amount of tax incurred under section 4912

- Description: If "Yes;" enter the amount of any tax incurred under
  section 4912

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-B-LINE-02B-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

132

filings with a value

2010–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `GAP` | ▲ warn | (variable) | no 990EZ filings in 2015, but filings before and after | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/AmountOf4912Tax` | SZ | 2010–2012 | 14 | 0.00256% |  |
| x2 | `IRS990ScheduleC/Tax4912Amt` | SZ | 2013–2024 | 118 | 0.00197% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartII/AmountOf4912Tax` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 3 | 4 | 7 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 12 | 10 | 5 | 8 | 9 | 12 | 10 | 7 | 15 | 11 | 10 | 9 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ |  |  |  |  | \<1 | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----|
| 990    | 106     | 100.0%    | 90.9%  | 0.0%       | 0   | 0      | 0   | 0   |
| 990-EZ | 26      | 100.0%    | 73.1%  | 0.0%       | 0   | 0      | 0   | 0   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | Marion Voices Folklife & Oral History | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511359349204241_public.xml) |
| 2012 | 990 | x1 | TOBIN PROJECT INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303189349300970_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_LOB_ACT_4912TAX_ORG, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
