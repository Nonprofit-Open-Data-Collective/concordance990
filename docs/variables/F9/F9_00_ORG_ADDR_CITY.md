# F9_00_ORG_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_ORG_ADDR_CITY

Organization city

- Description: Address of Filing Organization (US City)

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-C`

- Type: text

- Scope: HD – header (all returns)

- Database: F990, F990PF

- Forms: EZ, PC

4 / 6

xpaths observed / mapped

7.1M

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Filer/USAddress/City` | PC | 2009–2013 | 1,200,681 | 99.9% |  |
| x2 | `Filer/ForeignAddress/City` | PC | 2009–2013 | 664 | 0.0599% |  |
| x3 | `Filer/USAddress/CityNm` | PC | 2014–2024 | 5,925,913 | 99.9% |  |
| x4 | `Filer/ForeignAddress/CityNm` | PC | 2014–2024 | 5,001 | 0.105% |  |
| x5 | `IRS990EZ/USAddress/City` | EZ | not observed | 0 |  |  |
| x6 | `IRS990EZ/USAddress/CityNm` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 51k | 211k | 276k | 313k | 349k |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 35 | 111 | 142 | 167 | 209 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 388k | 417k | 437k | 469k | 496k | 524k | 605k | 658k | 677k | 685k | 570k |
| x4 |  |  |  |  |  | 221 | 230 | 267 | 290 | 302 | 366 | 627 | 669 | 708 | 722 | 599 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-PF | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,845,037 | 9              | 29      |
| 990-EZ | 2,135,869 | 9              | 22      |
| 990-PF | 1,151,310 | 9              | 26      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 134,772 | 22.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | THE SKOPELOS FOUNDATION FOR THE ARTS | SKOPELOS ISLAND | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349207729_public.xml) |
| 2024 | 990EZ | x3 | THE CREATIVES PROJECT INC | ATLANTA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2013 | 990 | x2 | AMERICAN POSTAL WORKERS UNION | SAN JUAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411399349300586_public.xml) |
| 2013 | 990EZ | x1 | MARSHALLTOWN AREA BOARD OF REALTORS | MARSHALLTOWN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430439349200608_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_ORG_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
