# F9_09_EXP_CONF_MEETING_TOT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_09_EXP_CONF_MEETING_TOT

Conferences, conventions, and meetings - total expenses

- Description: Conferences, conventions, and meetings- total expense

- Table:

  [`F9-P09-T00-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p09-t00-expenses)
  (one)

- Part: Part IX - Statement of Functional Expenses

- Location:

  `F990-PC-PART-09-LINE-19-COL-A`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 4

xpaths observed / mapped

2.0M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.5x (IRS990/ConferencesMeetingsGrp/TotalAmt, 990, TY2020) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.8x |
| ⓘ info | Sign convention | 0.1% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/ConferencesMeetings/Total` | PC | 2009–2012 | 289,574 | 58% |  |
| x2 | `IRS990/ConferencesMeetingsGrp/TotalAmt` | PC | 2013–2024 | 1,754,087 | 49.9% |  |
| x3 | `IRS990/ConferencesConventionsMeetings/Total` | PC | not observed | 0 |  |  |
| x4 | `IRS990/Form990PartIX/ConferencesMeetings/Total` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 20k | 72k | 93k | 104k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 114k | 124k | 131k | 135k | 143k | 147k | 150k | 155k | 165k | 174k | 178k | 138k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 61 | 59 | 58 | 58 | 57 | 57 | 56 | 55 | 55 | 54 | 53 | 48 | 49 | 50 | 50 | 50 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|-----------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 2,043,653 | 100.0%    | 28.5%  | 0.1%       | 0   | 2,644  | 20,461 | 1,440,965 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | IAAI FOUNDATION INC | 6373 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523089349301317_public.xml) |
| 2012 | 990 | x1 | ROUNDTABLE ON SUSTAINABLE | 28668 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349300428_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_09_EXP_CONF_MEETING_TOT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
