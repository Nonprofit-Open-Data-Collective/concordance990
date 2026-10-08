# F9_00_ORG_PHONE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_ORG_PHONE

Organization phone

- Description: Filing Organization Telephone Number

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-SECTION-E`

- Type: text

- Scope: HD – header (all returns)

- Database: F990, F990PF

- Forms: PC

3 / 3

xpaths observed / mapped

6.3M

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
| ▲ warn | No placeholder values | 8,214 filings use a placeholder such as 000000000 |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Filer/Phone` | PC | 2009–2012 | 763,256 | 88.7% |  |
| x2 | `Filer/PhoneNum` | PC | 2013–2024 | 5,420,954 | 92.4% |  |
| x3 | `Filer/ForeignPhoneNum` | PC | 2020–2024 | 74,258 | 2.33% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 48k | 190k | 247k | 278k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 307k | 339k | 363k | 380k | 408k | 430k | 454k | 514k | 557k | 566k | 576k | 528k |
| x3 |  |  |  |  |  |  |  |  |  |  |  | 9.7k | 15k | 17k | 19k | 13k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 96 | 92 | 92 | 91 | 91 | 90 | 90 | 90 | 90 | 89 | 89 | 88 | 88 | 88 | 88 | 96 |
| 990-EZ | 88 | 83 | 83 | 82 | 81 | 80 | 80 | 80 | 79 | 79 | 79 | 77 | 77 | 75 | 75 | 85 |
| 990-PF | 94 | 94 | 93 | 93 | 92 | 92 | 92 | 92 | 92 | 92 | 92 | 88 | 88 | 87 | 87 | 96 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format         | Filings   | Share  |
|----------------|-----------|--------|
| `9999999999`   | 6,258,035 | 100.0% |
| `99999999999`  | 231       | 0.0%   |
| `999999999`    | 71        | 0.0%   |
| `999999999999` | 62        | 0.0%   |
| `9999999`      | 43        | 0.0%   |
| `999999`       | 1         | 0.0%   |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x3 | Science & Technology Education Project | 3366090479 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531709349200103_public.xml) |
| 2024 | 990EZ | x2 | THE CREATIVES PROJECT INC | 4048294229 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2012 | 990EZ | x1 | ART FORMS & THEATRE CONCEPTS INC | 8437247308 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_ORG_PHONE, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
