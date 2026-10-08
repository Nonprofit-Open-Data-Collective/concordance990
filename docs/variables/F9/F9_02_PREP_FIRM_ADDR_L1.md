# F9_02_PREP_FIRM_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_PREP_FIRM_ADDR_L1

Preparer firm street address line 1

- Description: Foreign Address of Preparer FIrm (Line 1)

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
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | PreparerFirm/PreparerFirmUSAddress/AddressLine1: longest value is exactly 35 characters; PreparerFirmGrp/PreparerForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; PreparerFirmGrp/PreparerUSAddress/AddressLine1: longest value is exactly 35 characters; PreparerFirmGrp/PreparerUSAddress/AddressLine1Txt: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `PreparerFirm/PreparerFirmUSAddress/AddressLine1` | PC | 2009–2012 | 796,296 | 94.3% |  |
| x2 | `PreparerFirm/PreparerFirmForeignAddress/AddressLine1` | PC | 2009–2012 | 87 | 0.00957% |  |
| x3 | `PreparerFirmGrp/PreparerUSAddress/AddressLine1` | PC | 2013–2013 | 329,678 | 94.4% |  |
| x4 | `PreparerFirmGrp/PreparerForeignAddress/AddressLine1` | PC | 2013–2013 | 81 | 0.0232% |  |
| x5 | `PreparerFirmGrp/PreparerUSAddress/AddressLine1Txt` | PC | 2014–2024 | 5,388,533 | 85.8% |  |
| x6 | `PreparerFirmGrp/PreparerForeignAddress/AddressLine1Txt` | PC | 2014–2024 | 2,424 | 0.0455% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 47k | 195k | 258k | 296k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 6 | 22 | 29 | 30 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 330k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 81 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 368k | 395k | 414k | 445k | 470k | 490k | 549k | 578k | 593k | 597k | 490k |
| x6 |  |  |  |  |  | 111 | 88 | 142 | 154 | 204 | 225 | 284 | 307 | 324 | 325 | 260 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 94 | 95 | 96 | 96 | 96 | 96 | 96 | 96 | 97 | 96 | 96 | 93 | 93 | 93 | 92 | 92 |
| 990-EZ | 88 | 90 | 92 | 92 | 93 | 93 | 93 | 93 | 93 | 93 | 91 | 87 | 78 | 77 | 77 | 75 |
| 990-PF | 85 | 87 | 88 | 91 | 91 | 90 | 91 | 91 | 92 | 92 | 91 | 90 | 90 | 89 | 89 | 89 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,638,514 | 22             | 35      |
| 990-EZ | 1,842,561 | 20             | 35      |
| 990-PF | 1,035,983 | 22             | 35      |

### Most common values

| Value                         | Filings | Share |
|-------------------------------|---------|-------|
| `301 GRANT STREET 45TH FLOOR` | 18,763  | 10.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x6 | Under the Same Sun Foundation (USA) | 308-3211 152 Street | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503529349301610_public.xml) |
| 2024 | 990EZ | x5 | THE CREATIVES PROJECT INC | 1876 PRINCETON AVE STE 101 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2013 | 990 | x4 | MASONIC TEMPLE ASSOCIATION OF PHOENIX I… | 2224 E DESERT LN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401139349300000_public.xml) |
| 2013 | 990EZ | x3 | Awesome Cooper Band Boosters | 3305 N 3rd Street Suite 304 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423079349200717_public.xml) |
| 2012 | 990 | x2 | YESHIVAT ASHREINU INC | 6/1 TZFAT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201521279349301277_public.xml) |
| 2012 | 990EZ | x1 | ART FORMS & THEATRE CONCEPTS INC | 305 Wingo Way Suite A | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_PREP_FIRM_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
