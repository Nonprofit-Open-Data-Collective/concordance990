# SC_01_AMT_EXCISE_TAX_4955_MGR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_01_AMT_EXCISE_TAX_4955_MGR

Excise tax incurred by organization managers

- Description: Enter the amount of any excise tax incurred by
  organization managers under section 4955

- Table:

  [`SC-P01-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p01-t00-lobby)
  (one)

- Part: Part I - Political Campaign Activities (I-A, I-B, I-C)

- Location:

  `SCHED-C-PART-01-B-LINE-02`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

3.5k

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
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/AmtOf4955TaxOnManagers` | SZ | 2009–2012 | 650 | 0.0658% |  |
| x2 | `IRS990ScheduleC/Section4955ManagersTaxAmt` | SZ | 2013–2024 | 2,886 | 0.0603% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartI/AmtOf4955TaxOnManagers` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 110 | 199 | 161 | 180 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 178 | 188 | 184 | 179 | 189 | 220 | 211 | 246 | 318 | 350 | 348 | 275 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----|
| 990    | 2,937   | 100.0%    | 99.0%  | 0.0%       | 0   | 0      | 0   | 0   |
| 990-EZ | 599     | 100.0%    | 98.5%  | 0.0%       | 0   | 0      | 0   | 0   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | CONSERVATIVE LEADERSHIP NETWORK INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610509349300801_public.xml) |
| 2012 | 990 | x1 | NEW YORK STATE BAR ASSOCIATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341649349300914_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_01_AMT_EXCISE_TAX_4955_MGR, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
