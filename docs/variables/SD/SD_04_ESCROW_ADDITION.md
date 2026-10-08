# SD_04_ESCROW_ADDITION

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_04_ESCROW_ADDITION

Escrow or custodial arrangement additions during the year

- Description: Additions during the year

- Table:

  [`SD-P04-T00-ESCROW-CUSTODIAL-ARRANGEMENTS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p04-t00-escrow-custodial-arrangements)
  (one)

- Part: Part IV - Escrow and Custodial Arrangements

- Location:

  `SCHED-D-PART-04-LINE-01D`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

14k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.0x (IRS990ScheduleD/AdditionsDuringYearAmt, 990, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.6% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/AdditionsDuringYear` | SZ | 2009–2012 | 2,577 | 0.48% |  |
| x2 | `IRS990ScheduleD/AdditionsDuringYearAmt` | SZ | 2013–2024 | 11,879 | 0.23% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartIV/AdditionsDuringYear` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 277 | 638 | 799 | 863 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 906 | 994 | 921 | 891 | 943 | 923 | 989 | 1.3k | 1.2k | 1.2k | 949 | 639 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99        |
|--------|---------|-----------|--------|------------|-------|--------|---------|------------|
| 990    | 14,456  | 100.0%    | 10.1%  | 0.6%       | 7,448 | 63,506 | 500,423 | 54,345,707 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | EUGENE M CONNOR POST 193 INC | 504534 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543459349300919_public.xml) |
| 2012 | 990 | x1 | MARYVILLE ACADEMY | 19049818 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421489349300952_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_04_ESCROW_ADDITION, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
