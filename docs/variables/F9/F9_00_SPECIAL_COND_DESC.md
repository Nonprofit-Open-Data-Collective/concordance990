# F9_00_SPECIAL_COND_DESC

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_SPECIAL_COND_DESC

Special condition description

- Description: Special condition description

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-LINE-00`

- Type: text (multi-value: repeated values joined in one cell)

- Scope: HD – header (all returns)

- Database: F990, F990PF

- Forms: EZ, PC, PF

6 / 6

xpaths observed / mapped

5.9k

filings with a value

2009–2024

tax years observed

1

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990EZ/SpecialConditionDesc: longest value is exactly 50 characters; IRS990EZ/SpecialConditionDescription: longest value is exactly 50 characters; IRS990/SpecialConditionDesc: longest value is exactly 50 characters; IRS990/SpecialConditionDescription: longest value is exactly 50 characters; IRS990PF/SpecialConditionDesc: longest value is exactly 50 characters; IRS990PF/SpecialConditionDescription: longest value is exactly 50 characters |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `GAP` | ▲ warn | (variable) | no 990PF filings in 2010, but filings before and after | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/SpecialConditionDescription` | PC | 2009–2012 | 108 | 0.0113% | 2.8% |
| x2 | `IRS990EZ/SpecialConditionDescription` | EZ | 2009–2012 | 50 | 0.00622% | 6.0% |
| x3 | `IRS990PF/SpecialConditionDescription` | PF | 2009–2012 | 18 | 0.000957% |  |
| x4 | `IRS990/SpecialConditionDesc` | PC | 2013–2024 | 3,542 | 0.0787% | 0.8% |
| x5 | `IRS990EZ/SpecialConditionDesc` | EZ | 2013–2024 | 1,392 | 0.0309% | 0.6% |
| x6 | `IRS990PF/SpecialConditionDesc` | PF | 2013–2024 | 786 | 0.0165% | 0.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 10 | 24 | 43 | 31 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 3 | 18 | 12 | 17 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 | 1 |  | 14 | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 32 | 65 | 116 | 205 | 117 | 222 | 251 | 363 | 443 | 566 | 803 | 359 |
| x5 |  |  |  |  | 14 | 20 | 36 | 87 | 64 | 90 | 113 | 138 | 180 | 224 | 285 | 141 |
| x6 |  |  |  |  | 6 | 10 | 10 | 43 | 54 | 30 | 68 | 98 | 84 | 115 | 174 | 94 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-EZ | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |
| 990-PF | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 3,648   | 28             | 50      |
| 990-EZ | 1,442   | 28             | 50      |
| 990-PF | 804     | 29             | 50      |

### Most common values

| Value                       | Filings | Share |
|-----------------------------|---------|-------|
| `RETROACTIVE REINSTATEMENT` | 57      | 2.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x5 | NEW FRONTIERS INC OF ST PETERSBURG | HURRICANE RELIEF | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523109349201742_public.xml) |
| 2024 | 990 | x4 | WAX VOLUNTEER FIRE DEPARTMENT INC | 3624EM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202502879349301220_public.xml) |
| 2024 | 990PF | x6 | ASSOCIATED PLUMBING-HEATING-COOLING | EXTENDED TO NOVEMBER 17, 2025 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533219349105823_public.xml) |
| 2012 | 990EZ | x2 | NORTHSIDE CHAMBER OF COMMERCE | EXTENSION GRANTED TO 111513 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303189349204055_public.xml) |
| 2012 | 990 | x1 | ASSOCIATION OF LEGAL ADMINISTRATORS | EXTENDED UNTIL 111513 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201303169349303050_public.xml) |
| 2012 | 990PF | x3 | PROJECT ABLE INC CO ANN HANIN | PLEASE NOTE THAT THIS RETURN WAS PREPARED AND READ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313519349100601_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_SPECIAL_COND_DESC, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
