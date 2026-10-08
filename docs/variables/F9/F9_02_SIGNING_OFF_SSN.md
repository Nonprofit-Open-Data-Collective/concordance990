# F9_02_SIGNING_OFF_SSN

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_SIGNING_OFF_SSN

Signing officer SSN

- Description: Signing officer SSN

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

1 / 1

xpaths observed / mapped

1.7M

filings with a value

2020–2023

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ⚠ fail | Values have the SSN format | 64.1% of values match ^999999999\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 5,988 filings use a placeholder such as 000000000 |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 4.4x year-on-year (in 2023) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `SigningOfficerGrp/SSN` | PC | 2020–2023 | 1,702,345 | 26% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  |  |  |  |  |  |  | 489k | 520k | 515k | 179k |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  |  |  |  |  |  |  |  | 86 | 87 | 83 | 19 |  |
| 990-EZ |  |  |  |  |  |  |  |  |  |  |  | 76 | 68 | 66 | 33 |  |
| 990-PF |  |  |  |  |  |  |  |  |  |  |  | 76 | 76 | 73 | 34 |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format        | Filings   | Share |
|---------------|-----------|-------|
| `999999999`   | 1,091,856 | 64.1% |
| `AAA-AA-AAAA` | 610,489   | 35.9% |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2023 | 990EZ | x1 | The Canaan Protective Fire Company | XXX-XX-XXXX | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202412069349200736_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_SIGNING_OFF_SSN, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
