# F9_00_ORG_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_ORG_ADDR_L2

Organization street address line 2

- Description: Address of Filing Organization (Foreign Line 2)

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-C`

- Type: text

- Scope: HD – header (all returns)

- Database: F990, F990PF

- Forms: PC

4 / 4

xpaths observed / mapped

79k

filings with a value

2009–2014

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 4% of values are numeric |
| ⓘ info | No sign of truncation | Filer/USAddress/AddressLine2: longest value is exactly 35 characters; Filer/USAddress/AddressLine2Txt: longest value is exactly 35 characters |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 4.1x year-on-year (in 2014) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Filer/USAddress/AddressLine2` | PC | 2009–2013 | 68,944 | 7.35% |  |
| x2 | `Filer/ForeignAddress/AddressLine2` | PC | 2009–2013 | 53 | 0.00495% |  |
| x3 | `Filer/USAddress/AddressLine2Txt` | PC | 2014–2014 | 10,108 | 2.6% |  |
| x4 | `Filer/ForeignAddress/AddressLine2Txt` | PC | 2014–2014 | 6 | 0.00179% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1.8k | 8.1k | 11k | 23k | 26k |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 3 | 9 | 10 | 16 | 15 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 10k |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  | 6 |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 3 | 3 | 3 | 8 | 8 | 2 |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | 3 | 3 | 3 | 4 | 4 | 2 |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 10 | 8 | 9 | 13 | 15 | 7 |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 43,242  | 10             | 35      |
| 990-EZ | 14,493  | 11             | 35      |
| 990-PF | 21,376  | 9              | 35      |

### Most common values

| Value   | Filings | Share |
|---------|---------|-------|
| `Suite` | 20,005  | 63.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2014 | 990 | x4 | Caribbean School Inc | URB LA RAMBLA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201542599349300619_public.xml) |
| 2014 | 990 | x3 | OSHKOSH FAMILY INCORPORATED | ROOM/SUITE 300 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201542259349303694_public.xml) |
| 2013 | 990 | x2 | Asociacion de Salud Primaria de Puerto … | 400 Avenida Americo Miranda | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201500719349301100_public.xml) |
| 2013 | 990EZ | x1 | INSTITUTE OF NATURAL HEALTH SCIENCE | ROOM/SUITE SUITE7 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201421339349201917_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_ORG_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
