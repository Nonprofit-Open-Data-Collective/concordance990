# F9_09_EXP_DEPREC_FUNDR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_09_EXP_DEPREC_FUNDR

Depreciation, depletion, and amortization - fundraising expenses

- Description: Depreciation, depletion, and amortization

- Table:

  [`F9-P09-T00-EXPENSES`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p09-t00-expenses)
  (one)

- Part: Part IX - Statement of Functional Expenses

- Location:

  `F990-PC-PART-09-LINE-22-COL-D`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 4

xpaths observed / mapped

528k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ▲ warn | No sudden change in the median between adjacent years | largest change 32.7x (IRS990/DepreciationDepletionGrp/FundraisingAmt, 990, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.1x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/DepreciationDepletion/Fundraising` | PC | 2009–2012 | 71,061 | 13.9% |  |
| x2 | `IRS990/DepreciationDepletionGrp/FundraisingAmt` | PC | 2013–2024 | 456,827 | 13.5% |  |
| x3 | `IRS990/DepreciationDepletionEtc/Fundraising` | PC | not observed | 0 |  |  |
| x4 | `IRS990/Form990PartIX/DepreciationDepletion/Fundraising` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 6.3k | 18k | 22k | 25k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 27k | 30k | 31k | 32k | 34k | 36k | 38k | 46k | 47k | 49k | 49k | 37k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 19 | 14 | 14 | 14 | 14 | 14 | 13 | 13 | 13 | 13 | 14 | 14 | 14 | 14 | 14 | 13 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75   | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-------|---------|
| 990    | 527,888 | 100.0%    | 42.0%  | 0.0%       | 0   | 270    | 2,754 | 107,263 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | 59402 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | ANITA BORG INSTITUTE FOR WOMEN AND TECH… | 1621 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349303900_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_09_EXP_DEPREC_FUNDR, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
