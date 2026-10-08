# F9_10_ASSET_LOAN_OFF_BOY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_10_ASSET_LOAN_OFF_BOY

Loans and other receivables from officers, directors, trustees, key
employees, creators or founders, substantial contributors, or 35%
controlled entities or family members - beginning of year

- Description: Loans and other receivables from officers, beginning of
  year

- Table:

  [`F9-P10-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p10-t00-balance-sheet)
  (one)

- Part: Part X - Balance Sheet

- Location:

  `F990-PC-PART-10-LINE-05-BOY`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

260k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 5.5x (IRS990/ReceivablesFromOfficersEtc/BOY, 990, TY2010) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.1x (990: IRS990/ReceivablesFromOfficersEtc/BOY vs IRS990/ReceivablesFromOfficersEtcGrp/BOYAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ReceivablesFromOfficersEtc/BOY` | PC | 2009–2012 | 27,349 | 6.39% |  |
| x2 | `IRS990/ReceivablesFromOfficersEtcGrp/BOYAmt` | PC | 2013–2024 | 232,797 | 8.15% |  |
| x3 | `IRS990/Form990PartX/ReceivablesFromOfficersEtc/BOY` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 3.6k | 11k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 13k | 15k | 14k | 15k | 16k | 16k | 17k | 24k | 25k | 27k | 28k | 23k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 3 | 7 | 6 | 7 | 7 | 6 | 6 | 6 | 6 | 6 | 7 | 8 | 8 | 8 | 8 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99       |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----------|
| 990    | 260,146 | 100.0%    | 86.1%  | 0.0%       | 0   | 0      | 0   | 1,364,244 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | Everyone's Counseling Center Inc | 274804 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511029349300221_public.xml) |
| 2012 | 990 | x1 | International Sister Cities Association | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431019349300803_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_10_ASSET_LOAN_OFF_BOY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
