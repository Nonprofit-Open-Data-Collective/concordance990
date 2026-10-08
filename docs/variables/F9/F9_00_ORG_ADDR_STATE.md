# F9_00_ORG_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_ORG_ADDR_STATE

Organization state

- Description: Address of Filing Organization (US State)

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

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 129 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `Filer/USAddress/State` | PC | 2009–2013 | 1,200,681 | 99.9% |  |
| x2 | `Filer/ForeignAddress/ProvinceOrState` | PC | 2009–2013 | 384 | 0.0375% |  |
| x3 | `Filer/USAddress/StateAbbreviationCd` | PC | 2014–2024 | 5,925,913 | 99.9% |  |
| x4 | `Filer/ForeignAddress/ProvinceOrStateNm` | PC | 2014–2024 | 3,385 | 0.076% |  |
| x5 | `IRS990EZ/USAddress/State` | EZ | not observed | 0 |  |  |
| x6 | `IRS990EZ/USAddress/StateAbbreviationCd` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 51k | 211k | 276k | 313k | 349k |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 20 | 57 | 82 | 94 | 131 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 388k | 417k | 437k | 469k | 496k | 524k | 605k | 658k | 677k | 685k | 570k |
| x4 |  |  |  |  |  | 142 | 150 | 176 | 200 | 210 | 244 | 386 | 428 | 504 | 511 | 434 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-PF | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 783,871 | 20.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990 | x4 | Under the Same Sun Foundation (USA) | BC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202503529349301610_public.xml) |
| 2024 | 990EZ | x3 | SAINT CLAIR HOUSE INC | OH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2013 | 990 | x2 | Fundacion Accion Social El Shaddai Inc | PR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402889349301105_public.xml) |
| 2013 | 990EZ | x1 | The Coterie Theater Corporation | NY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201441359349204509_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_ORG_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
