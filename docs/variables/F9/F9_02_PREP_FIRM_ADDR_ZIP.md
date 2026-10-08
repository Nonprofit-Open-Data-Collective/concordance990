# F9_02_PREP_FIRM_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_PREP_FIRM_ADDR_ZIP

Preparer firm zip

- Description: Foreign Address of Preparer Firm (Postal Code)

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

6 / 6

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
| ✓ pass | Values have the ZIP format | 100.0% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 13 filings use a placeholder such as 000000000 |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `PreparerFirm/PreparerFirmUSAddress/ZIPCode` | PC | 2009–2012 | 796,296 | 94.3% |  |
| x2 | `PreparerFirm/PreparerFirmForeignAddress/PostalCode` | PC | 2009–2012 | 54 | 0.00702% |  |
| x3 | `PreparerFirmGrp/PreparerUSAddress/ZIPCode` | PC | 2013–2013 | 329,678 | 94.4% |  |
| x4 | `PreparerFirmGrp/PreparerForeignAddress/PostalCode` | PC | 2013–2013 | 43 | 0.0123% |  |
| x5 | `PreparerFirmGrp/PreparerUSAddress/ZIPCd` | PC | 2014–2024 | 5,388,533 | 85.8% |  |
| x6 | `PreparerFirmGrp/PreparerForeignAddress/ForeignPostalCd` | PC | 2014–2024 | 2,053 | 0.041% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 47k | 195k | 258k | 296k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 5 | 12 | 15 | 22 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 330k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 43 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 368k | 395k | 414k | 445k | 470k | 490k | 549k | 578k | 593k | 597k | 490k |
| x6 |  |  |  |  |  | 53 | 47 | 101 | 129 | 200 | 212 | 249 | 265 | 278 | 285 | 234 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 94 | 95 | 96 | 96 | 96 | 96 | 96 | 96 | 97 | 96 | 96 | 93 | 93 | 93 | 92 | 92 |
| 990-EZ | 88 | 90 | 92 | 92 | 93 | 93 | 93 | 93 | 93 | 93 | 91 | 87 | 78 | 77 | 77 | 75 |
| 990-PF | 85 | 87 | 88 | 91 | 91 | 90 | 91 | 91 | 92 | 92 | 91 | 90 | 90 | 89 | 89 | 89 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings   | Share |
|-------------|-----------|-------|
| `99999`     | 4,870,111 | 74.7% |
| `999999999` | 1,644,949 | 25.2% |
| `A9A 9A9`   | 658       | 0.0%  |
| `A9A9A9`    | 216       | 0.0%  |
| `9999999`   | 213       | 0.0%  |
| `AA9 9AA`   | 173       | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | Under the Same Sun Foundation (USA) | V3Z 1H8 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503529349301610_public.xml) |
| 2024 | 990EZ | x5 | SAINT CLAIR HOUSE INC | 441142540 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2013 | 990 | x4 | MASONIC TEMPLE ASSOCIATION OF PHOENIX I… | 850426918 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401139349300000_public.xml) |
| 2013 | 990EZ | x3 | MARSHALLTOWN AREA BOARD OF REALTORS | 50158 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430439349200608_public.xml) |
| 2012 | 990EZ | x2 | MAGSHIMEY HERUT NORTH AMERICA INC | 71713 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302129349200000_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 92131 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_PREP_FIRM_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
