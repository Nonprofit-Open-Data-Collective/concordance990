# PF_16_EXEMPT_PURPOSE_LINE_NUM

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_16_EXEMPT_PURPOSE_LINE_NUM

Line number

- Description: Rln Of Acty To Accom Of Exempt Prps - Line number

- Table:

  [`PF-P16-T03-ACTS-RELATIONSHIP-EXEMPT-PURPOSE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p16-t03-acts-relationship-exempt-purpose)
  (many)

- Part: Part XVI-A - Analysis of Income-Producing Activities; Part
  XVI-B - Relationship of Activities to the Accomplishment of Exempt
  Purposes (2023: Part XV)

- Location:

  `F990-PF-PART-16-B-COL-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 2

xpaths observed / mapped

160k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ▲ warn | Values are text, not numbers | 70% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/RlnOfActyToAccomOfExemptPrps/RlnOfActyToAccomOfExemptPrps/LineNumber` | PF | 2009–2012 | 15,461 | 15.2% | 38.2% |
| x2 | `IRS990PF/RlnOfActyToAccomOfExmptPrpsGrp/RlnOfActyToAccomOfExmptPrpsGrp/LineNumberTxt` | PF | 2013–2024 | 144,210 | 12.4% | 38.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 428 | 3.8k | 5.1k | 6.1k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 6.9k | 7.8k | 8.5k | 8.9k | 9.5k | 11k | 12k | 16k | 16k | 16k | 17k | 14k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 18 | 15 | 15 | 15 | 15 | 15 | 14 | 14 | 14 | 14 | 14 | 14 | 14 | 13 | 13 | 12 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 159,671 | 2              | 6       |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `4`   | 43,446  | 23.7% |
| `8`   | 39,677  | 21.6% |
| `3`   | 34,087  | 18.6% |
| `1`   | 15,882  | 8.6%  |
| `1A`  | 14,976  | 8.2%  |
| `7`   | 8,428   | 4.6%  |
| `11A` | 7,733   | 4.2%  |
| `11`  | 7,076   | 3.9%  |
| `10`  | 5,465   | 3.0%  |
| `2`   | 3,965   | 2.2%  |
| `N/A` | 1,693   | 0.9%  |
| `1a`  | 943     | 0.5%  |
| `11B` | 267     | 0.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THE GRIMM FAMILY EDUCATION FOUNDATION | 11A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202601059349100815_public.xml) |
| 2012 | 990PF | x1 | THE AMY FOUNDATION | 10 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332389349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_16_EXEMPT_PURPOSE_LINE_NUM, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
