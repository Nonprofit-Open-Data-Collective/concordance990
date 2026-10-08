# F9_00_GRO_RCPT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_GRO_RCPT

Gross receipts

- Description: Gross Receipts (Header)

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-G`

- Type: numeric

- Scope: HD – header (all returns)

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

5.9M

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.9x (IRS990/GrossReceipts, 990, TY2010) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.5x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/GrossReceipts` | PC | 2009–2012 | 495,528 | 65.7% |  |
| x2 | `IRS990EZ/GrossReceipts` | EZ | 2009–2012 | 251,329 | 33.8% |  |
| x3 | `IRS990/GrossReceiptsAmt` | PC | 2013–2024 | 3,349,613 | 60.8% |  |
| x4 | `IRS990EZ/GrossReceiptsAmt` | EZ | 2013–2024 | 1,838,254 | 38.3% |  |
| x5 | `IRS990/Form990PartI/GrossReceipts` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 123k | 160k | 180k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 15k | 63k | 81k | 92k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 199k | 219k | 234k | 244k | 262k | 271k | 284k | 320k | 336k | 349k | 355k | 277k |
| x4 |  |  |  |  | 103k | 115k | 123k | 128k | 136k | 146k | 149k | 165k | 198k | 201k | 201k | 175k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 99 | 99 | 99 | 99 | 99 | 98 | 98 | 98 | 98 | 98 | 97 | 97 | 97 | 98 | 98 | 98 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|----|----|----|----|----|----|----|----|----|
| 990 | 3,845,115 | 100.0% | 0.9% | 0.0% | 241,842 | 573,232 | 2,132,545 | 175,221,219 |
| 990-EZ | 2,089,566 | 100.0% | 2.3% | 0.0% | 33,556 | 66,539 | 108,484 | 195,125 |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | SAINT CLAIR HOUSE INC | 115995 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2024 | 990 | x3 | CHRISTIAN SHANE FONVILLE YOUTH | 44977 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511059349301411_public.xml) |
| 2012 | 990EZ | x2 | PLACERVILLE ROTARY CLUB | 130448 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |
| 2012 | 990 | x1 | BAPTIST HEALTH AMBULATORY SERVICES INC | 902653 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412209349300421_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_GRO_RCPT, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
