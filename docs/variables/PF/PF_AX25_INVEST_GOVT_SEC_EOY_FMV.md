# PF_AX25_INVEST_GOVT_SEC_EOY_FMV

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_AX25_INVEST_GOVT_SEC_EOY_FMV

US government obligations - fair market value, end of year

- Description: US Government Securities - End of Year Fair Market Value

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

76k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 1.3x (InvestmentsGovtObligationsSch/USGovtObligationsEOYFMVAmt, 990PF, TY2023) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `MANY_NOT_REPEATING` | ⓘ info | `InvestmentsGovtObligationsSch/USGovtObligationsEOYFMVAmt` | many-to-one table, but 100% of values sit in no repeating element | open |
| `MANY_NOT_REPEATING` | ⓘ info | `InvestmentsGovtObligationsSch/USGovtSecuritiesEOYFMV` | many-to-one table, but 100% of values sit in no repeating element | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `InvestmentsGovtObligationsSch/USGovtSecuritiesEOYFMV` | PF | 2009–2012 | 8,620 | 7.62% |  |
| x2 | `InvestmentsGovtObligationsSch/USGovtObligationsEOYFMVAmt` | PF | 2013–2024 | 67,261 | 7.41% | 0.1% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 274 | 2.4k | 2.9k | 3.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 3.3k | 3.5k | 3.5k | 3.7k | 3.8k | 4.3k | 5.1k | 6.6k | 6.4k | 8.8k | 9.6k | 8.5k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 12 | 9 | 9 | 8 | 7 | 7 | 6 | 6 | 6 | 6 | 6 | 6 | 5 | 7 | 8 | 7 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25    | Median  | P75     | P99        |
|--------|---------|-----------|--------|------------|--------|---------|---------|------------|
| 990-PF | 75,881  | 100.0%    | 11.6%  | 0.0%       | 31,398 | 173,716 | 680,355 | 31,912,297 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | SECURE WORLD FOUNDATION | 841793 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533179349102288_public.xml) |
| 2012 | 990PF | x1 | ALBANY GUARDIAN SOCIETY | 2619845 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201301349349101060_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_AX25_INVEST_GOVT_SEC_EOY_FMV, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
