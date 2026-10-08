# SD_07_INVEST_SEC_EQ_INT_MOV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# SD_07_INVEST_SEC_EQ_INT_MOV

Closely held equity interests - method of valuation

- Description: Method of valuation

- Table:

  [`SD-P07-T00-INVESTMENTS-OTH-EQUITY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#sd-p07-t00-investments-oth-equity)
  (one)

- Part: Part VII - Investments - Other Securities

- Location:

  `SCHED-D-PART-07-LINE-02-COL-C`

- Type: text

- Scope: PC – 990 only

- Database: F990

- Forms: SZ

2 / 3

xpaths observed / mapped

15k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990ScheduleD/CloselyHeldEquityInterests/MethodOfValuation` | SZ | 2009–2012 | 2,436 | 0.449% |  |
| x2 | `IRS990ScheduleD/CloselyHeldEquityInterestsGrp/MethodValuationCd` | SZ | 2013–2024 | 12,418 | 0.292% |  |
| x3 | `IRS990ScheduleD/Form990ScheduleDPartVII/CloselyHeldEquityInterests/MethodOfValuation` | SZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 274 | 625 | 731 | 806 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 886 | 939 | 950 | 961 | 1.0k | 1.0k | 1.0k | 1.2k | 1.2k | 1.2k | 1.1k | 810 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 14,854  | 1              | 1       |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `C`   | 8,602   | 57.9% |
| `F`   | 6,252   | 42.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Eleutherian Mills-Hagley Foundation Inc | F | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513029349300336_public.xml) |
| 2012 | 990 | x1 | Ved Vignan Mahavidyapeeth | F | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333229349300203_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
SD_07_INVEST_SEC_EQ_INT_MOV, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
