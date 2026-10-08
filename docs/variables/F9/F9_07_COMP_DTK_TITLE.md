# F9_07_COMP_DTK_TITLE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_DTK_TITLE

Officer, director, trustee, or key employee title

- Description: Title (F990-PC-PART-07-SECTION-A:
  F990-EZ-PART-04-PART-06-LINE-50-CONBINED)

- Table:

  [`F9-P07-T01-COMPENSATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p07-t01-compensation)
  (many)

- Part: Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent Contractors

- Location:

  `F990-PC-PART-07-SECTION-A-LINE-01A-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ, PC

4 / 6

xpaths observed / mapped

6.0M

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
| ⓘ info | No sign of truncation | IRS990EZ/OfficerDirectorTrusteeEmplGrp/TitleTxt: longest value is exactly 100 characters; IRS990/Form990PartVIISectionA/Title: longest value is exactly 100 characters; IRS990/Form990PartVIISectionAGrp/TitleTxt: longest value is exactly 100 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/Form990PartVIISectionA/Title` | PC | 2009–2012 | 495,528 | 100% | 97.7% |
| x2 | `IRS990EZ/OfficerDirectorTrusteeKeyEmpl/Title` | EZ | 2009–2012 | 254,594 | 100% | 95.1% |
| x3 | `IRS990/Form990PartVIISectionAGrp/TitleTxt` | PC | 2013–2024 | 3,349,613 | 100% | 97.2% |
| x4 | `IRS990EZ/OfficerDirectorTrusteeEmplGrp/TitleTxt` | EZ | 2013–2024 | 1,881,301 | 100% | 92.5% |
| x5 | `IRS990EZ/Form990PartVIISectionA/Title` | EZ | not observed | 0 |  |  |
| x6 | `IRS990EZ/Form990PartVIISectionAGrp/TitleTxt` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 123k | 160k | 180k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 15k | 63k | 82k | 94k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 199k | 219k | 234k | 244k | 262k | 271k | 284k | 320k | 336k | 349k | 355k | 277k |
| x4 |  |  |  |  | 104k | 116k | 125k | 130k | 139k | 149k | 153k | 170k | 203k | 206k | 206k | 179k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |
| 990-EZ | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,845,115 | 11             | 100     |
| 990-EZ | 2,135,878 | 11             | 100     |

### Most common values

| Value            | Filings   | Share |
|------------------|-----------|-------|
| `PRESIDENT`      | 2,347,273 | 16.3% |
| `TREASURER`      | 2,258,963 | 15.7% |
| `SECRETARY`      | 2,071,977 | 14.4% |
| `DIRECTOR`       | 1,589,019 | 11.1% |
| `President`      | 1,266,696 | 8.8%  |
| `Treasurer`      | 1,224,972 | 8.5%  |
| `Secretary`      | 1,144,540 | 8.0%  |
| `Director`       | 826,150   | 5.7%  |
| `VICE PRESIDENT` | 816,488   | 5.7%  |
| `BOARD MEMBER`   | 487,061   | 3.4%  |
| `Vice President` | 340,781   | 2.4%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | THE CREATIVES PROJECT INC | TREASURER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202510859349201521_public.xml) |
| 2024 | 990 | x3 | OWL CREEK COUNTRY CLUB | BOARD MEMBER | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990EZ | x2 | CONCORD CHRISTIAN ACADEMY GIVING & GOING | BOARD CHAIR | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332829349200713_public.xml) |
| 2012 | 990 | x1 | SOL PRICE RETAILINGSERVICE SCHOLARSHIP … | PRESIDENT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201430289349300128_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_DTK_TITLE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
