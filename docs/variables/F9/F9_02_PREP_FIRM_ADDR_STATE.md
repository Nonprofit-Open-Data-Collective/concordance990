# F9_02_PREP_FIRM_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_02_PREP_FIRM_ADDR_STATE

Preparer firm state

- Description: Foreign Address of Preparer Firm (Province or State)

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

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 62 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `PreparerFirm/PreparerFirmUSAddress/State` | PC | 2009–2012 | 796,296 | 94.3% |  |
| x2 | `PreparerFirm/PreparerFirmForeignAddress/ProvinceOrState` | PC | 2009–2012 | 51 | 0.00658% |  |
| x3 | `PreparerFirmGrp/PreparerUSAddress/State` | PC | 2013–2013 | 329,678 | 94.4% |  |
| x4 | `PreparerFirmGrp/PreparerForeignAddress/ProvinceOrState` | PC | 2013–2013 | 29 | 0.00831% |  |
| x5 | `PreparerFirmGrp/PreparerUSAddress/StateAbbreviationCd` | PC | 2014–2024 | 5,388,533 | 85.8% |  |
| x6 | `PreparerFirmGrp/PreparerForeignAddress/ProvinceOrStateNm` | PC | 2014–2024 | 1,343 | 0.0287% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 47k | 195k | 258k | 296k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 6 | 11 | 16 | 18 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 330k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 29 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 368k | 395k | 414k | 445k | 470k | 490k | 549k | 578k | 593k | 597k | 490k |
| x6 |  |  |  |  |  | 38 | 28 | 74 | 81 | 107 | 142 | 166 | 178 | 188 | 177 | 164 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 94 | 95 | 96 | 96 | 96 | 96 | 96 | 96 | 97 | 96 | 96 | 93 | 93 | 93 | 92 | 92 |
| 990-EZ | 88 | 90 | 92 | 92 | 93 | 93 | 93 | 93 | 93 | 93 | 91 | 87 | 78 | 77 | 77 | 75 |
| 990-PF | 85 | 87 | 88 | 91 | 91 | 90 | 91 | 91 | 92 | 92 | 91 | 90 | 90 | 89 | 89 | 89 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 714,545 | 20.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x6 | CLEAN ENERGY ASSOCIATION OF NEW MEXICO | BC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533189349204358_public.xml) |
| 2024 | 990EZ | x5 | SAINT CLAIR HOUSE INC | OH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2013 | 990 | x4 | MASONIC TEMPLE ASSOCIATION OF PHOENIX I… | AZ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401139349300000_public.xml) |
| 2013 | 990 | x3 | AMERICAN FRIENDS OF OUR ARMED FORCES | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201422269349304432_public.xml) |
| 2012 | 990 | x2 | McMaster University | ONTARIO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410769349301011_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | AZ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_02_PREP_FIRM_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
