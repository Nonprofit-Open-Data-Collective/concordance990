# F9_01_EXP_PROF_FUNDR_TOT_PY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_01_EXP_PROF_FUNDR_TOT_PY

Professional fundraising fees - prior year

- Description: Total professional fundraising expense - PY

- Table:

  [`F9-P01-T00-SUMMARY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p01-t00-summary)
  (one)

- Part: Part I - Summary

- Location:

  `F990-PC-PART-01-LINE-16A-PY`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

1.7M

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 115.3x (IRS990/TotalProfFundrsngExpPriorYear, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 3.0x year-on-year (in 2010) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TotalProfFundrsngExpPriorYear` | PC | 2009–2012 | 237,175 | 48.6% |  |
| x2 | `IRS990/PYTotalProfFndrsngExpnsAmt` | PC | 2013–2024 | 1,493,018 | 42.2% |  |
| x3 | `IRS990/Form990PartI/TotalProfFundrsngExpPriorYear` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.7k | 64k | 80k | 87k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 94k | 101k | 107k | 110k | 118k | 121k | 126k | 142k | 148k | 154k | 156k | 117k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 17 | 52 | 50 | 49 | 47 | 46 | 46 | 45 | 45 | 45 | 44 | 44 | 44 | 44 | 44 | 42 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75 | P99     |
|--------|-----------|-----------|--------|------------|-----|--------|-----|---------|
| 990    | 1,730,190 | 100.0%    | 92.5%  | 0.0%       | 0   | 0      | 0   | 145,094 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | YOUNG MEN'S CHRISTIAN ASSOCIATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541679349300439_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_01_EXP_PROF_FUNDR_TOT_PY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
