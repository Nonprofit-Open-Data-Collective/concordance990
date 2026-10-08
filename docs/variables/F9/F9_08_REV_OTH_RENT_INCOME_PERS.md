# F9_08_REV_OTH_RENT_INCOME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_RENT_INCOME_PERS

Rental income - personal

- Description: Rental income PER

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-06C-COL-ii`

- Type: numeric

- Scope: PC – 990 only

- Database: F990

- Forms: PC

2 / 3

xpaths observed / mapped

307k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 68.1x (IRS990/RentalIncomeOrLoss/Personal, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.1x |
| ⓘ info | Sign convention | 0.8% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/RentalIncomeOrLoss/Personal` | PC | 2009–2012 | 26,509 | 7.77% |  |
| x2 | `IRS990/RentalIncomeOrLossGrp/PersonalAmt` | PC | 2013–2024 | 280,627 | 10.4% |  |
| x3 | `IRS990/Form990PartVIII/RentalIncomeOrLoss/Personal` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.6k | 5.1k | 5.9k | 14k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 15k | 17k | 17k | 17k | 18k | 18k | 20k | 28k | 31k | 33k | 36k | 29k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 5 | 4 | 4 | 8 | 8 | 8 | 7 | 7 | 7 | 7 | 7 | 9 | 9 | 10 | 10 | 10 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99     |
|--------|---------|-----------|--------|------------|-----|--------|-----|---------|
| 990    | 307,136 | 100.0%    | 92.1%  | 0.8%       | 0   | 0      | 0   | 128,561 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | KRESS FARM GARDEN PRESERVE | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523219349303827_public.xml) |
| 2012 | 990 | x1 | International Sister Cities Association | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431019349300803_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_RENT_INCOME_PERS, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
