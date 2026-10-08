# SC_02_LOB_ACT_RALLIES_AMT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SC_02_LOB_ACT_RALLIES_AMT

Amount of lobbying through rallies, demonstrations, seminars,
conventions, speeches, lectures, or any similar means

- Description: Rallies; demonstrations; seminars; conventions; speeches;
  lectures; or any other means (only for section 501(c)(3))(Amount)

- Table:

  [`SC-P02-T00-LOBBY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sc-p02-t00-lobby)
  (one)

- Part: Part II - Lobbying Activities (II-A electing 501(h), II-B
  non-electing)

- Location:

  `SCHED-C-PART-02-B-LINE-01H-COL-B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

6.0k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.9x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleC/RalliesDemonstrationsAmount` | SZ | 2009–2012 | 1,271 | 0.145% |  |
| x2 | `IRS990ScheduleC/RalliesDemonstrationsAmt` | SZ | 2013–2024 | 4,771 | 0.0533% |  |
| x3 | `IRS990ScheduleC/Form990ScheduleCPartII/RalliesDemonstrationsAmount` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 163 | 361 | 350 | 397 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 466 | 467 | 449 | 432 | 465 | 436 | 409 | 348 | 349 | 353 | 354 | 243 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99     |
|--------|---------|-----------|--------|------------|-----|--------|--------|---------|
| 990    | 5,778   | 100.0%    | 18.3%  | 0.0%       | 350 | 2,800  | 14,724 | 279,083 |
| 990-EZ | 264     | 100.0%    | 26.5%  | 0.0%       | 103 | 500    | 1,568  | 3,697   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | EAST TURKISTAN GOVERNMENT-IN-EXILE DIPL… | 500 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202520309349200302_public.xml) |
| 2012 | 990 | x1 | Sharp HealthCare | 191965 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201432239349302353_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SC_02_LOB_ACT_RALLIES_AMT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
