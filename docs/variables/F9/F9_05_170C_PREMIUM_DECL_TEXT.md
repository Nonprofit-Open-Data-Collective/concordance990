# F9_05_170C_PREMIUM_DECL_TEXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_05_170C_PREMIUM_DECL_TEXT

Declaration on funds to pay premiums on personal benefit contracts

- Description: Text of the statement on funds received to pay premiums
  on a personal benefit contract (TransferPrsnlBnftContractsDecl, filed
  with the 990-EZ)

- Table:

  [`F9-P05-T00-OTHER-IRS-FILING`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p05-t00-other-irs-filing)
  (one)

- Part: Part V - Statements Regarding Other IRS Filings and Tax
  Compliance

- Location:

  `F990-PC-PART-05-LINE-07E`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: PC

- Family:

  Funds to pay premiums on a personal benefit contract: pooled with
  [`F9_05_170C_FUNDS_FOR_PREMIUM_X`](https://nonprofit-open-data-collective.github.io/concordance990/variables/F9/F9_05_170C_FUNDS_FOR_PREMIUM_X.md).
  990 Part V line 7e is a yes/no checkbox
  (F9_05_170C_FUNDS_FOR_PREMIUM_X); 990-EZ filers attach a free-text
  declaration instead (F9_05_170C_PREMIUM_DECL_TEXT).

2 / 2

xpaths observed / mapped

366k

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
| ⓘ info | No sign of truncation | TransferPrsnlBnftContractsDecl/Declaration: longest value is exactly 500 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `TransferPrsnlBnftContractsDecl/Declaration` | PC | 2009–2012 | 55,535 | 7.06% |  |
| x2 | `TransferPrsnlBnftContractsDecl/DeclarationDesc` | PC | 2013–2024 | 310,020 | 4.93% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 4.6k | 14k | 18k | 19k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 21k | 23k | 24k | 25k | 26k | 27k | 27k | 28k | 29k | 29k | 28k | 22k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | 30 | 22 | 21 | 21 | 20 | 20 | 19 | 19 | 19 | 18 | 18 | 17 | 14 | 14 | 14 | 13 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-EZ | 365,555 | 250            | 950     |

### Most common values

| Value | Filings | Share |
|----|----|----|
| `THE ORGANIZATION DID NOT, DURING THE YEAR, RECEIVE ANY FUNDS, DIRECTLY,OR INDIRECTLY, TO …` | 307,080 | 84.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | KYLE GOLDBERG MEMORIAL FOUNDATION | THE ORGANIZATION DID NOT, DURING THE YEAR, RECEIVE ANY FUNDS, DIRECTLY,OR INDIR… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511219349201801_public.xml) |
| 2012 | 990EZ | x1 | CONCORD CHRISTIAN ACADEMY GIVING & GOING | THE ORGANIZATION DID NOT, DURING THE YEAR, RECEIVE ANY FUNDS, DIRECTLY,OR INDIR… | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332829349200713_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_05_170C_PREMIUM_DECL_TEXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
