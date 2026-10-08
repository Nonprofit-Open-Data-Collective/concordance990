# F9_02_PREP_PERS_NAME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_PREP_PERS_NAME

Preparer name

- Description: Paid Preparer Name

- Table:

  [`F9-P02-T00-SIGNATURE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p02-t00-signature)
  (one)

- Part: Part II - Signature Block

- Location:

  `F990-PC-PART-02`

- Type: text

- Scope: SG – 990 and 990-EZ (signature block)

- Database: F990, F990PF

- Forms: PC

2 / 2

xpaths observed / mapped

6.5M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | Preparer/Name: longest value is exactly 35 characters; PreparerPersonGrp/PreparerPersonNm: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Preparer/Name` | PC | 2009–2012 | 765,283 | 92.3% |  |
| x2 | `PreparerPersonGrp/PreparerPersonNm` | PC | 2013–2024 | 5,704,779 | 85.8% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 41k | 185k | 251k | 289k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 326k | 365k | 393k | 413k | 444k | 469k | 490k | 549k | 578k | 592k | 597k | 490k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 78 | 88 | 92 | 93 | 95 | 96 | 96 | 96 | 96 | 96 | 96 | 93 | 93 | 93 | 92 | 92 |
| 990-EZ | 83 | 88 | 91 | 92 | 92 | 93 | 93 | 93 | 93 | 93 | 91 | 88 | 79 | 78 | 77 | 75 |
| 990-PF | 76 | 82 | 84 | 88 | 89 | 90 | 90 | 91 | 92 | 92 | 90 | 89 | 89 | 89 | 88 | 88 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,602,120 | 16             | 35      |
| 990-EZ | 1,842,084 | 16             | 35      |
| 990-PF | 1,025,817 | 16             | 35      |

### Most common values

| Value                | Filings | Share |
|----------------------|---------|-------|
| `Jeffrey D Haskell`  | 18,550  | 11.5% |
| `JOSEPH J CASTRIANO` | 12,960  | 8.0%  |
| `LAURA B STROBEL`    | 9,122   | 5.7%  |
| `GARRETT M HIGGINS`  | 7,579   | 4.7%  |
| `JEFFREY E KUHLIN`   | 6,588   | 4.1%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | THE CREATIVES PROJECT INC | ARMISTEAD B PERRY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | ROBERT C GELLMAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_PREP_PERS_NAME, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
