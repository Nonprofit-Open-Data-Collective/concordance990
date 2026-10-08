# F9_02_SIGNING_OFF_PHONE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_SIGNING_OFF_PHONE

Signing officer phone

- Description: Signing Officer Phone Number

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

3 / 3

xpaths observed / mapped

5.5M

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the Phone format | 100.0% of values match ^9999999999\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 6,959 filings use a placeholder such as 000000000 |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Officer/Phone` | PC | 2009–2012 | 619,439 | 73.5% |  |
| x2 | `BusinessOfficerGrp/PhoneNum` | PC | 2013–2024 | 4,903,504 | 81.6% |  |
| x3 | `BusinessOfficerGrp/ForeignPhoneNum` | PC | 2020–2024 | 9,115 | 0.209% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 39k | 155k | 196k | 230k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 258k | 287k | 311k | 330k | 359k | 382k | 408k | 471k | 535k | 545k | 552k | 466k |
| x3 |  |  |  |  |  |  |  |  |  |  |  | 1.7k | 2.2k | 2.3k | 1.7k | 1.2k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 78 | 75 | 73 | 77 | 77 | 77 | 78 | 78 | 79 | 80 | 80 | 81 | 84 | 83 | 83 | 83 |
| 990-EZ | 70 | 68 | 65 | 66 | 66 | 66 | 67 | 69 | 70 | 70 | 71 | 70 | 77 | 75 | 75 | 78 |
| 990-PF | 80 | 77 | 75 | 77 | 79 | 79 | 78 | 79 | 80 | 81 | 82 | 81 | 82 | 81 | 82 | 83 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format           | Filings   | Share  |
|------------------|-----------|--------|
| `9999999999`     | 5,531,947 | 100.0% |
| `99999999999`    | 58        | 0.0%   |
| `999999999999`   | 38        | 0.0%   |
| `9999999999999`  | 5         | 0.0%   |
| `999999999`      | 3         | 0.0%   |
| `99999999999999` | 3         | 0.0%   |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | THE AMERICAN CHAMBER OF COMMERCE | 1085190800 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533189349303503_public.xml) |
| 2024 | 990 | x2 | OWL CREEK COUNTRY CLUB | 5022454157 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | 5207921060 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_SIGNING_OFF_PHONE, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
