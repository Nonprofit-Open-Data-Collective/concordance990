# SD_01_TOT_NUM_EOY_OTH

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_01_TOT_NUM_EOY_OTH

Total number at end of year - funds and other accounts

- Description: Enter the total number of separate accounts for
  participating donors where donors have the right to provide advice on
  the use or distribution of funds owned at the end of the tax year

- Table:

  [`SD-P01-T00-ORGS-DONOR-ADVISED-FUNDS-OTH`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p01-t00-orgs-donor-advised-funds-oth)
  (one)

- Part: Part I - Organizations Maintaining Donor Advised Funds or Other
  Similar Funds or Accounts

- Location:

  `SCHED-D-PART-01-LINE-01-COL-B`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

11k

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
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.6x |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/NumberFundsHeld` | SZ | 2009–2012 | 1,978 | 0.359% |  |
| x2 | `IRS990ScheduleD/FundsAndOtherAccountsHeldCnt` | SZ | 2013–2024 | 9,499 | 0.261% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartI/NumberFundsHeld` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 177 | 532 | 624 | 645 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 669 | 688 | 688 | 706 | 734 | 754 | 791 | 919 | 948 | 944 | 934 | 724 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99    |
|--------|---------|-----------|--------|------------|-----|--------|-----|--------|
| 990    | 11,477  | 100.0%    | 14.6%  | 0.0%       | 1   | 8.50   | 74  | 36,701 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | HAWAII PREPARATORY ACADEMY | 1 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510989349300406_public.xml) |
| 2012 | 990 | x1 | MERRICK FOUNDATION INC | 128 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430579349300013_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_01_TOT_NUM_EOY_OTH, report type *number*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
