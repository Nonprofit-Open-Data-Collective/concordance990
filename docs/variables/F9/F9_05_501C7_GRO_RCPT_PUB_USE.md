# F9_05_501C7_GRO_RCPT_PUB_USE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_501C7_GRO_RCPT_PUB_USE

Gross receipts for public use of club facilities

- Description: 501(c)(7) orgs: Gross receipts, included on line 9, for
  public use of club facilities

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-10B`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 6

xpaths observed / mapped

488k

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 5.9x (IRS990/GrossReceiptsForPublicUseAmt, 990, TY2020) |
| ▲ warn | Pooled xpaths are on the same scale (same return type) | medians differ 3.7x (990: IRS990/GrossReceiptsAmount vs IRS990/GrossReceiptsForPublicUseAmt) |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/GrossReceiptsForPublicUse` | EZ | 2009–2012 | 63,375 | 25.8% |  |
| x2 | `IRS990/GrossReceiptsAmount` | PC | 2009–2012 | 8,348 | 1.64% |  |
| x3 | `IRS990EZ/GrossReceiptsForPublicUseAmt` | EZ | 2013–2024 | 358,241 | 13.1% |  |
| x4 | `IRS990/GrossReceiptsForPublicUseAmt` | PC | 2013–2024 | 57,767 | 1.9% |  |
| x5 | `IRS990/Form990PartV/GrossReceiptsAmount` | PC | not observed | 0 |  |  |
| x6 | `IRS990EZ/GrossReceiptsAmount` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3.8k | 15k | 21k | 24k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 565 | 2.1k | 2.7k | 2.9k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 27k | 30k | 31k | 31k | 33k | 52k | 23k | 25k | 27k | 27k | 27k | 23k |
| x4 |  |  |  |  | 3.3k | 3.6k | 3.7k | 3.8k | 4.0k | 4.6k | 4.8k | 5.9k | 6.1k | 6.3k | 6.3k | 5.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ | 25 | 23 | 25 | 26 | 26 | 26 | 25 | 24 | 24 | 35 | 15 | 15 | 14 | 13 | 13 | 13 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75     | P99       |
|--------|---------|-----------|--------|------------|-----|--------|---------|-----------|
| 990    | 66,115  | 100.0%    | 55.3%  | 0.0%       | 0   | 0      | 129,213 | 1,720,482 |
| 990-EZ | 421,600 | 100.0%    | 98.3%  | 0.0%       | 0   | 0      | 0       | 7,961     |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | PI BETA PHI FRATERNITY GEORGIA BETA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600619349201440_public.xml) |
| 2024 | 990 | x4 | OWL CREEK COUNTRY CLUB | 316950 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990EZ | x1 | PLACERVILLE ROTARY CLUB | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323139349200002_public.xml) |
| 2012 | 990 | x2 | ROARING GAP CLUB INC | 77537 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410889349300501_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_501C7_GRO_RCPT_PUB_USE, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
