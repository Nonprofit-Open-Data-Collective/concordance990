# F9_02_PREP_PERS_PHONE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_PREP_PERS_PHONE

Preparer phone

- Description: Paid Preparer Phone

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
| ✓ pass | Values have the Phone format | 100.0% of values match ^9999999999\$ |
| ✓ pass | Stored as text | data type is text |
| ✓ pass | No placeholder values | no all-zero / all-nine placeholders among the most common values |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Preparer/Phone` | PC | 2009–2012 | 787,081 | 93.7% |  |
| x2 | `PreparerPersonGrp/PhoneNum` | PC | 2013–2024 | 5,716,745 | 85.8% |  |
| x3 | `PreparerPersonGrp/ForeignPhoneNum` | PC | 2020–2024 | 3,520 | 0.176% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 46k | 191k | 256k | 294k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 327k | 365k | 395k | 414k | 445k | 471k | 491k | 550k | 579k | 593k | 597k | 490k |
| x3 |  |  |  |  |  |  |  |  |  |  |  | 247 | 249 | 862 | 1.2k | 1.0k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 92 | 93 | 95 | 96 | 95 | 96 | 96 | 96 | 97 | 97 | 96 | 93 | 93 | 93 | 92 | 92 |
| 990-EZ | 86 | 88 | 90 | 91 | 92 | 93 | 93 | 93 | 93 | 93 | 91 | 88 | 79 | 78 | 77 | 75 |
| 990-PF | 84 | 86 | 87 | 90 | 90 | 89 | 90 | 91 | 92 | 92 | 91 | 90 | 90 | 89 | 89 | 89 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format           | Filings   | Share  |
|------------------|-----------|--------|
| `9999999999`     | 6,507,333 | 100.0% |
| `99999999999999` | 8         | 0.0%   |
| `99999999999`    | 5         | 0.0%   |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x3 | MINISINK HOSE COMPANY NO 1 INC | 3154288344 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531279349302268_public.xml) |
| 2024 | 990EZ | x2 | SAINT CLAIR HOUSE INC | 2163630100 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | 8587952000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_PREP_PERS_PHONE, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
