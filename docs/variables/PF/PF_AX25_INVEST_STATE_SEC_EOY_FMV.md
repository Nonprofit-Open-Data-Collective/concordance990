# PF_AX25_INVEST_STATE_SEC_EOY_FMV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX25_INVEST_STATE_SEC_EOY_FMV

State and local government obligations - fair market value, end of year

- Description: State & Local Government Securities - End of Year Fair
  Market Value

- Table:

  [`PF-P99-T25-INVEST-GOVT-SEC`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p99-t25-invest-govt-sec)
  (many)

- Part: Auxiliary schedules and attachments (statements filed with the
  990-PF)

- Location:

  `F990-PF-PART-99-AUX-SCHED-25`

- Type: numeric

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

55k

filings with a value

2009–2024

tax years observed

2

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 12.4x (InvestmentsGovtObligationsSch/StateLocalSecEOYFMVAmt, 990PF, TY2019) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `MANY_NOT_REPEATING` | ⓘ info | `InvestmentsGovtObligationsSch/StateLocalSecEOYFMVAmt` | many-to-one table, but 100% of values sit in no repeating element | open |
| `MANY_NOT_REPEATING` | ⓘ info | `InvestmentsGovtObligationsSch/StateLocalSecuritiesEOYFMV` | many-to-one table, but 100% of values sit in no repeating element | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `InvestmentsGovtObligationsSch/StateLocalSecuritiesEOYFMV` | PF | 2009–2012 | 6,105 | 5.68% |  |
| x2 | `InvestmentsGovtObligationsSch/StateLocalSecEOYFMVAmt` | PF | 2013–2024 | 49,323 | 5.24% | 0.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 202 | 1.6k | 2.0k | 2.3k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 2.5k | 2.5k | 2.6k | 2.8k | 2.9k | 3.2k | 3.7k | 4.9k | 5.0k | 6.3k | 6.8k | 6.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 9 | 6 | 6 | 6 | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 5 | 5 | 5 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|-----|--------|---------|-----------|
| 990-PF | 55,428  | 100.0%    | 58.7%  | 0.0%       | 0   | 0      | 115,088 | 6,315,243 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | PLANTING SEEDS GROWING HOPE | 74892 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531219349100123_public.xml) |
| 2012 | 990PF | x1 | ALBANY GUARDIAN SOCIETY | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301349349101060_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX25_INVEST_STATE_SEC_EOY_FMV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
