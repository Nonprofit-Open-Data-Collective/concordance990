# F9_02_SIGNING_OFF_NAME

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_SIGNING_OFF_NAME

Signing officer name

- Description: Signing Officer Name

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

2 / 2

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
| ⓘ info | No sign of truncation | BusinessOfficerGrp/PersonNm: longest value is exactly 35 characters; Officer/Name: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Officer/Name` | PC | 2009–2012 | 852,246 | 100% |  |
| x2 | `BusinessOfficerGrp/PersonNm` | PC | 2013–2024 | 6,280,104 | 100% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 51k | 212k | 276k | 313k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 349k | 388k | 417k | 437k | 469k | 496k | 524k | 605k | 659k | 678k | 686k | 571k |
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
| 990    | 3,845,115 | 14             | 35      |
| 990-EZ | 2,135,878 | 14             | 35      |
| 990-PF | 1,151,314 | 14             | 35      |

### Most common values

| Value                      | Filings | Share |
|----------------------------|---------|-------|
| `BANK OF AMERICA N A`      | 32,098  | 23.2% |
| `-`                        | 19,893  | 14.4% |
| `PNC BANK N A BY`          | 13,598  | 9.8%  |
| `U S BANK N A BY`          | 7,177   | 5.2%  |
| `KRYSTAL ZEC`              | 6,896   | 5.0%  |
| `PNC BANK N A`             | 6,628   | 4.8%  |
| `MICHAEL STAGIS`           | 6,319   | 4.6%  |
| `M T TRUST COMPANY`        | 3,444   | 2.5%  |
| `HUNTINGTON NATIONAL BANK` | 3,199   | 2.3%  |
| `TRUIST BANK`              | 2,992   | 2.2%  |
| `KEYBANK BYP S CHMURA`     | 2,783   | 2.0%  |
| `JACK L UDOVICH`           | 2,154   | 1.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x2 | OWL CREEK COUNTRY CLUB | ANDREW ARCHIBALD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | LESLIE LEVINSON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_SIGNING_OFF_NAME, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
