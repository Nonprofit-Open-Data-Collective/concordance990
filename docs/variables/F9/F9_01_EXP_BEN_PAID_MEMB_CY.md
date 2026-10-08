# F9_01_EXP_BEN_PAID_MEMB_CY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_01_EXP_BEN_PAID_MEMB_CY

Benefits paid to or for members - current year

- Description: Benefits paid to or for members

- Table:

  [`F9-P01-T00-SUMMARY`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p01-t00-summary)
  (one)

- Part: Part I - Summary

- Location:

  `F990-PC-PART-01-LINE-14-CY`

- Type: numeric

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 5

xpaths observed / mapped

4.1M

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
| ▲ warn | No sudden change in the median between adjacent years | largest change 39.1x (IRS990EZ/BenefitsPaidToOrForMembersAmt, 990EZ, TY2022) |
| ✓ pass | Pooled xpaths are on the same scale (same return type) | largest ratio of medians between xpaths: 1.4x |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/BenefitsPaidToMembersCY` | PC | 2009–2012 | 495,528 | 100% |  |
| x2 | `IRS990EZ/BenefitsPaidToOrForMembers` | EZ | 2009–2012 | 28,207 | 10.2% |  |
| x3 | `IRS990/CYBenefitsPaidToMembersAmt` | PC | 2013–2024 | 3,349,613 | 100% |  |
| x4 | `IRS990EZ/BenefitsPaidToOrForMembersAmt` | EZ | 2013–2024 | 273,099 | 22.1% |  |
| x5 | `IRS990/Form990PartI/BenefitsPaidToMembersCurrYear` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 123k | 160k | 180k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 1.9k | 7.8k | 8.9k | 9.6k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 199k | 219k | 234k | 244k | 262k | 271k | 284k | 320k | 336k | 349k | 355k | 277k |
| x4 |  |  |  |  | 10k | 11k | 12k | 12k | 13k | 15k | 16k | 22k | 39k | 41k | 43k | 40k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 13 | 12 | 11 | 10 | 10 | 9 | 9 | 9 | 9 | 10 | 11 | 13 | 19 | 20 | 21 | 22 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | % numeric | % zero | % negative | P25 | Median | P75   | P99       |
|--------|-----------|-----------|--------|------------|-----|--------|-------|-----------|
| 990    | 3,845,115 | 100.0%    | 95.8%  | 0.0%       | 0   | 0      | 0     | 3,707,264 |
| 990-EZ | 301,306   | 100.0%    | 67.1%  | 0.0%       | 0   | 541    | 9,654 | 119,740   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | KANPE HAITI | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510769349200611_public.xml) |
| 2024 | 990 | x3 | OWL CREEK COUNTRY CLUB | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990EZ | x2 | OFFICER WIVES CLUB OF CHERRY POINT MCAS | 3031 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323399349200607_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_01_EXP_BEN_PAID_MEMB_CY, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
