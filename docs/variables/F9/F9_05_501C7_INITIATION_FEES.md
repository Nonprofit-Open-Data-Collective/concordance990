# F9_05_501C7_INITIATION_FEES

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_501C7_INITIATION_FEES

Initiation fees and capital contributions

- Description: 501(c)(7) orgs: Initiation fees and capital contributions
  included on line 9

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-10A`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 6

xpaths observed / mapped

494k

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
| ✓ pass | No sudden change in the median between adjacent years | largest change 2.7x (IRS990/InitiationFeesAmount, 990, TY2012) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.3x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/InitiationFeesAndCapitalContri` | EZ | 2009–2012 | 63,640 | 25.9% |  |
| x2 | `IRS990/InitiationFeesAmount` | PC | 2009–2012 | 8,841 | 1.75% |  |
| x3 | `IRS990EZ/InitiationFeesAndCapContriAmt` | EZ | 2013–2024 | 359,437 | 13.1% |  |
| x4 | `IRS990/InitiationFeesAndCapContriAmt` | PC | 2013–2024 | 62,038 | 2.02% |  |
| x5 | `IRS990/Form990PartV/InitiationFeesAmount` | PC | not observed | 0 |  |  |
| x6 | `IRS990EZ/InitiationFeesAmount` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3.8k | 15k | 21k | 24k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 587 | 2.3k | 2.9k | 3.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 27k | 30k | 32k | 31k | 33k | 52k | 23k | 25k | 27k | 27k | 27k | 23k |
| x4 |  |  |  |  | 3.5k | 3.8k | 3.9k | 4.1k | 4.3k | 5.0k | 5.2k | 6.4k | 6.6k | 6.8k | 6.7k | 5.6k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |
| 990-EZ | 25 | 23 | 25 | 26 | 26 | 26 | 25 | 24 | 24 | 35 | 15 | 15 | 14 | 13 | 13 | 13 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75    | P99       |
|--------|---------|-----------|--------|------------|-----|--------|--------|-----------|
| 990    | 70,879  | 100.0%    | 46.4%  | 0.0%       | 0   | 3,311  | 66,851 | 2,561,948 |
| 990-EZ | 423,061 | 100.0%    | 96.4%  | 0.0%       | 0   | 0      | 0      | 9,699     |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | PI BETA PHI FRATERNITY GEORGIA BETA | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600619349201440_public.xml) |
| 2024 | 990 | x4 | MOUNTAIRE PARK INC | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511899349301511_public.xml) |
| 2012 | 990EZ | x1 | Electricians Building Corporation | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322679349200717_public.xml) |
| 2012 | 990 | x2 | ROARING GAP CLUB INC | 547248 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410889349300501_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_501C7_INITIATION_FEES, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
