# F9_10_LIAB_TOT_BOY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_10_LIAB_TOT_BOY

Total liabilities - beginning of year

- Description: Total liabilities, beginning of year

- Table:

  [`F9-P10-T00-BALANCE-SHEET`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p10-t00-balance-sheet)
  (one)

- Part: Part X - Balance Sheet

- Location:

  `F990-PC-PART-10-LINE-26-BOY`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 7

xpaths observed / mapped

5.1M

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 6.5x (IRS990EZ/SumOfTotalLiabilities/BOY, 990EZ, TY2010) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 8.5x (990EZ: IRS990EZ/SumOfTotalLiabilities/BOY vs IRS990EZ/SumOfTotalLiabilitiesGrp/BOYAmt) |
| ⓘ info | Sign convention | 0.2% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/TotalLiabilities/BOY` | PC | 2009–2012 | 495,528 | 100% |  |
| x2 | `IRS990EZ/SumOfTotalLiabilities/BOY` | EZ | 2009–2012 | 149,551 | 57.1% |  |
| x3 | `IRS990/TotalLiabilitiesGrp/BOYAmt` | PC | 2013–2024 | 3,349,613 | 100% |  |
| x4 | `IRS990EZ/SumOfTotalLiabilitiesGrp/BOYAmt` | EZ | 2013–2024 | 1,088,709 | 58.8% |  |
| x5 | `IRS990/Form990PartX/TotalLiabilities/BOY` | PC | not observed | 0 |  |  |
| x6 | `IRS990EZ/TotalLiabilities/BOY` | EZ | not observed | 0 |  |  |
| x7 | `IRS990EZ/TotalLiabilitiesGrp/BOYAmt` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 123k | 160k | 180k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 10k | 38k | 48k | 54k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 199k | 219k | 234k | 244k | 262k | 271k | 284k | 320k | 336k | 349k | 355k | 277k |
| x4 |  |  |  |  | 60k | 66k | 71k | 74k | 78k | 85k | 87k | 99k | 121k | 122k | 120k | 105k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 67 | 59 | 59 | 57 | 58 | 57 | 57 | 57 | 56 | 57 | 57 | 58 | 60 | 59 | 58 | 59 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75     | P99         |
|--------|-----------|-----------|--------|------------|-----|--------|---------|-------------|
| 990    | 3,845,115 | 100.0%    | 25.1%  | 0.3%       | 100 | 39,883 | 448,541 | 127,445,475 |
| 990-EZ | 1,238,259 | 100.0%    | 52.5%  | 0.0%       | 0   | 100    | 5,225   | 341,505     |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | Science & Technology Education Project | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2024 | 990 | x3 | OWL CREEK COUNTRY CLUB | 4453640 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990EZ | x2 | PLACERVILLE ROTARY CLUB | 3803 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | 14 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_10_LIAB_TOT_BOY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
