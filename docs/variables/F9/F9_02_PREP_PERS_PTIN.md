# F9_02_PREP_PERS_PTIN

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_PREP_PERS_PTIN

Preparer PTIN

- Description: Paid Preparer PTIN

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

5.7M

filings with a value

2009–2024

tax years observed

3

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the PTIN format | 100.0% of values match ^A99999999\$ |
| ✓ pass | Stored as text | data type is text |
| ✓ pass | No placeholder values | no all-zero / all-nine placeholders among the most common values |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 2033.7x year-on-year (in 2011) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 1398.4x year-on-year (in 2011) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990PF fill rate changes up to 38.8x year-on-year (in 2011) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Preparer/PTIN` | PC | 2009–2012 | 281,432 | 58.6% |  |
| x2 | `PreparerPersonGrp/PTIN` | PC | 2013–2024 | 5,460,250 | 86% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 15 | 287 | 97k | 184k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 279k | 317k | 342k | 360k | 427k | 452k | 471k | 550k | 579k | 594k | 598k | 491k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  | \<1 | 41 | 61 | 84 | 85 | 85 | 85 | 93 | 93 | 92 | 93 | 93 | 93 | 93 | 92 |
| 990-EZ |  | \<1 | 22 | 54 | 74 | 75 | 75 | 76 | 88 | 88 | 86 | 88 | 79 | 78 | 77 | 75 |
| 990-PF | 1 | 1 | 39 | 58 | 76 | 82 | 83 | 83 | 89 | 90 | 88 | 89 | 89 | 89 | 89 | 89 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings   | Share  |
|-------------|-----------|--------|
| `A99999999` | 5,741,682 | 100.0% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | SAINT CLAIR HOUSE INC | P00437640 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | P00183739 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_PREP_PERS_PTIN, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
