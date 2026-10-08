# F9_00_ORG_NAME_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_ORG_NAME_L1

Organization name line 1

- Description: Name of Filing Organization (line 1)

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

3 / 3

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
| ⓘ info | No sign of truncation | Filer/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; Filer/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters; Filer/Name/BusinessNameLine1: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Filer/Name/BusinessNameLine1` | PC | 2009–2012 | 852,246 | 100% |  |
| x2 | `Filer/BusinessName/BusinessNameLine1` | PC | 2013–2013 | 349,117 | 100% |  |
| x3 | `Filer/BusinessName/BusinessNameLine1Txt` | PC | 2014–2024 | 5,930,987 | 100% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 51k | 212k | 276k | 313k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 349k |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 388k | 417k | 437k | 469k | 496k | 524k | 605k | 659k | 678k | 686k | 571k |
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
| 990    | 3,845,115 | 29             | 75      |
| 990-EZ | 2,135,878 | 29             | 75      |
| 990-PF | 1,151,314 | 29             | 75      |

### Most common values

| Value                        | Filings | Share |
|------------------------------|---------|-------|
| `LITTLE LEAGUE BASEBALL INC` | 3,828   | 14.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | SAINT CLAIR HOUSE INC | SAINT CLAIR HOUSE INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2013 | 990EZ | x2 | The Coterie Theater Corporation | The Coterie Theater Corporation | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441359349204509_public.xml) |
| 2012 | 990EZ | x1 | ART FORMS & THEATRE CONCEPTS INC | ART FORMS & THEATRE CONCEPTS INC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_ORG_NAME_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
