# F9_00_ORG_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_ORG_ADDR_L1

Organization street address line 1

- Description: Address of Filing Organization (US Line 1)

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
| ⓘ info | No sign of truncation | Filer/ForeignAddress/AddressLine1: longest value is exactly 35 characters; Filer/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; Filer/USAddress/AddressLine1: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Filer/USAddress/AddressLine1` | PC | 2009–2013 | 1,200,681 | 99.9% |  |
| x2 | `Filer/ForeignAddress/AddressLine1` | PC | 2009–2013 | 682 | 0.061% |  |
| x3 | `Filer/USAddress/AddressLine1Txt` | PC | 2014–2024 | 5,925,913 | 99.9% |  |
| x4 | `Filer/ForeignAddress/AddressLine1Txt` | PC | 2014–2024 | 5,074 | 0.106% |  |
| x5 | `IRS990EZ/USAddress/AddressLine1` | EZ | not observed | 0 |  |  |
| x6 | `IRS990EZ/USAddress/AddressLine1Txt` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 51k | 211k | 276k | 313k | 349k |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 35 | 115 | 147 | 172 | 213 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 388k | 417k | 437k | 469k | 496k | 524k | 605k | 658k | 677k | 685k | 570k |
| x4 |  |  |  |  |  | 225 | 236 | 270 | 294 | 309 | 375 | 638 | 679 | 716 | 727 | 605 |
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
| 990    | 3,845,115 | 18             | 35      |
| 990-EZ | 2,135,878 | 17             | 37      |
| 990-PF | 1,151,314 | 20             | 35      |

### Most common values

| Value                                 | Filings | Share |
|---------------------------------------|---------|-------|
| `Foundation Source 501 Silverside Rd` | 16,801  | 11.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | INTERNATIONAL XENOTRANSPLANTATION ASSOC… | 1245 - 740 Notre-Dame West | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533169349203183_public.xml) |
| 2024 | 990EZ | x3 | THE CREATIVES PROJECT INC | 711 CATHERINE ST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2013 | 990 | x2 | AMERICAN POSTAL WORKERS UNION | URB HIPODROMO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411399349300586_public.xml) |
| 2013 | 990EZ | x1 | MARSHALLTOWN AREA BOARD OF REALTORS | 8 N 1ST AVENUE SUITE 8 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430439349200608_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_ORG_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
