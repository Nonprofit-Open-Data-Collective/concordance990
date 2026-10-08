# F9_08_REV_OTH_GAMING

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_08_REV_OTH_GAMING

Gross income from gaming activities

- Description: Gross income from gaming activities

- Table:

  [`F9-P08-T00-REVENUE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p08-t00-revenue)
  (one)

- Part: Part VIII - Statement of Revenue

- Location:

  `F990-PC-PART-08-LINE-09A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 6

xpaths observed / mapped

655k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 8.9x (IRS990EZ/GamingGrossIncomeAmt, 990EZ, TY2017) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 2.7x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/GrossIncomeGaming` | PC | 2009–2012 | 21,295 | 4.43% |  |
| x2 | `IRS990EZ/GamingGrossIncome` | EZ | 2010–2012 | 50,558 | 20.9% |  |
| x3 | `IRS990EZ/GamingGrossIncomeAmt` | EZ | 2013–2024 | 326,048 | 21.5% |  |
| x4 | `IRS990/GamingGrossIncomeAmt` | PC | 2013–2024 | 257,224 | 8.97% |  |
| x5 | `IRS990/Form990PartVIII/GrossIncomeGaming` | PC | not observed | 0 |  |  |
| x6 | `IRS990EZ/GrossIncomeGaming` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.4k | 5.1k | 6.8k | 8.0k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 14k | 17k | 20k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 21k | 23k | 25k | 26k | 28k | 13k | 15k | 20k | 37k | 40k | 42k | 38k |
| x4 |  |  |  |  | 8.9k | 10k | 11k | 20k | 22k | 22k | 23k | 26k | 29k | 31k | 31k | 25k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 4 | 4 | 4 | 4 | 4 | 5 | 5 | 8 | 8 | 8 | 8 | 8 | 9 | 9 | 9 | 9 |
| 990-EZ |  | 22 | 21 | 21 | 20 | 20 | 20 | 20 | 20 | 9 | 10 | 12 | 18 | 19 | 20 | 21 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25   | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|-------|--------|---------|-----------|
| 990    | 278,517 | 100.0%    | 43.7%  | 0.0%       | 3,240 | 24,884 | 140,863 | 4,066,736 |
| 990-EZ | 376,590 | 100.0%    | 82.9%  | 0.0%       | 0     | 0      | 0       | 89,197    |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | Science & Technology Education Project | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2024 | 990 | x4 | JOEYS LITTLE ANGELS INC | 10120 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503029349302810_public.xml) |
| 2012 | 990EZ | x2 | CAT CRUSADERS | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201310919349200751_public.xml) |
| 2012 | 990 | x1 | Fraternal Order of Eagles 2171 Aerie | 532910 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421059349300437_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_08_REV_OTH_GAMING, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
