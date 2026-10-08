# F9_10_LIAB_OTH_EOY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_10_LIAB_OTH_EOY

Other liabilities - end of year

- Description: Other liabilities, end of year

- Table:

  [`F9-P10-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p10-t00-balance-sheet)
  (one)

- Part: Part X - Balance Sheet

- Location:

  `F990-PC-PART-10-LINE-25-EOY`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

1.6M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.3x (IRS990/OtherLiabilities/EOY, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.5% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/OtherLiabilities/EOY` | PC | 2009–2012 | 224,144 | 43.6% |  |
| x2 | `IRS990/OtherLiabilitiesGrp/EOYAmt` | PC | 2013–2024 | 1,390,105 | 40.8% |  |
| x3 | `IRS990/Form990PartX/OtherLiabilities/EOY` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 19k | 56k | 71k | 78k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 84k | 92k | 96k | 99k | 106k | 108k | 118k | 135k | 135k | 150k | 154k | 113k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 57 | 45 | 45 | 44 | 42 | 42 | 41 | 41 | 40 | 40 | 42 | 42 | 40 | 43 | 43 | 41 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25   | Median | P75     | P99         |
|--------|-----------|-----------|--------|------------|-------|--------|---------|-------------|
| 990    | 1,614,246 | 100.0%    | 9.2%   | 0.5%       | 3,692 | 38,386 | 459,891 | 173,961,832 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | RISEWELL COMMUNITY SERVICES INC FKA | 28753305 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202610589349301811_public.xml) |
| 2012 | 990 | x1 | GodsKidsorg | 2425 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349305392_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_10_LIAB_OTH_EOY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
