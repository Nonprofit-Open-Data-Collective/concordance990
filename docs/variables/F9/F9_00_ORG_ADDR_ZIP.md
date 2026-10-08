# F9_00_ORG_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_ORG_ADDR_ZIP

Organization zip

- Description: Address of Filing Organization (US Zip Code)

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
| ✓ pass | Values have the ZIP format | 100.0% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 19 filings use a placeholder such as 000000000 |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Filer/USAddress/ZIPCode` | PC | 2009–2013 | 1,200,681 | 99.9% |  |
| x2 | `Filer/ForeignAddress/PostalCode` | PC | 2009–2013 | 525 | 0.051% |  |
| x3 | `Filer/USAddress/ZIPCd` | PC | 2014–2024 | 5,925,913 | 99.9% |  |
| x4 | `Filer/ForeignAddress/ForeignPostalCd` | PC | 2014–2024 | 4,626 | 0.0998% |  |
| x5 | `IRS990EZ/USAddress/ZIPCd` | EZ | not observed | 0 |  |  |
| x6 | `IRS990EZ/USAddress/ZIPCode` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 51k | 211k | 276k | 313k | 349k |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 33 | 84 | 99 | 131 | 178 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 388k | 417k | 437k | 469k | 496k | 524k | 605k | 658k | 677k | 685k | 570k |
| x4 |  |  |  |  |  | 183 | 199 | 231 | 264 | 278 | 336 | 587 | 632 | 668 | 678 | 570 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-PF | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format       | Filings   | Share |
|--------------|-----------|-------|
| `99999`      | 6,213,546 | 87.1% |
| `999999999`  | 914,439   | 12.8% |
| `A9A 9A9`    | 1,591     | 0.0%  |
| `99999-9999` | 434       | 0.0%  |
| `A9A9A9`     | 248       | 0.0%  |
| `9999`       | 135       | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x4 | THE AMERICAN CHAMBER OF COMMERCE | 100027 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533189349303503_public.xml) |
| 2024 | 990EZ | x3 | THE CREATIVES PROJECT INC | 30310 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2013 | 990 | x2 | AMERICAN POSTAL WORKERS UNION | 00909 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411399349300586_public.xml) |
| 2013 | 990EZ | x1 | The Coterie Theater Corporation | 11206 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441359349204509_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_ORG_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
