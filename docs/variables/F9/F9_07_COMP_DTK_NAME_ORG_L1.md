# F9_07_COMP_DTK_NAME_ORG_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_DTK_NAME_ORG_L1

Officer, director, trustee, key employee, or highest compensated
employee business name line 1

- Description: Business Name - BusinessNameLine1
  (F990-PC-PART-07-SECTION-A: F990-EZ-PART-04-PART-06-LINE-50-CONBINED)

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

6 / 8

xpaths observed / mapped

79k

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
| ⓘ info | No sign of truncation | IRS990/Form990PartVIISectionAGrp/BusinessName/BusinessNameLine1: longest value is exactly 75 characters; IRS990/Form990PartVIISectionAGrp/BusinessName/BusinessNameLine1Txt: longest value is exactly 75 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/Form990PartVIISectionA/NameBusiness/BusinessNameLine1` | PC | 2009–2012 | 4,588 | 0.924% | 41.3% |
| x2 | `IRS990EZ/OfficerDirectorTrusteeKeyEmpl/BusinessName/BusinessNameLine1` | EZ | 2009–2012 | 2,963 | 1.06% | 46.8% |
| x3 | `IRS990/Form990PartVIISectionAGrp/BusinessName/BusinessNameLine1` | PC | 2013–2013 | 1,753 | 0.882% | 32.6% |
| x4 | `IRS990EZ/OfficerDirectorTrusteeEmplGrp/BusinessName/BusinessNameLine1` | EZ | 2013–2013 | 1,027 | 0.984% | 38.9% |
| x5 | `IRS990/Form990PartVIISectionAGrp/BusinessName/BusinessNameLine1Txt` | PC | 2014–2024 | 54,964 | 1.13% | 51.8% |
| x6 | `IRS990EZ/OfficerDirectorTrusteeEmplGrp/BusinessName/BusinessNameLine1Txt` | EZ | 2014–2024 | 13,366 | 0.735% | 31.9% |
| x7 | `IRS990/Form990PartVIISectionA/Name/NameBusiness/BusinessNameLine1` | PC | not observed | 0 |  |  |
| x8 | `IRS990/OfcrDirTrusteesOrKeyEmployee/BusinessName/BusinessNameLine1` | PC | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 185 | 1.2k | 1.5k | 1.7k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 163 | 815 | 991 | 994 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.8k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 1.0k |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 3.9k | 4.1k | 4.2k | 4.4k | 4.6k | 5.0k | 5.9k | 6.2k | 6.9k | 6.6k | 3.1k |
| x6 |  |  |  |  |  | 959 | 988 | 1.0k | 1.0k | 1.1k | 1.1k | 1.3k | 1.5k | 1.6k | 1.4k | 1.3k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 1 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |
| 990-EZ | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 61,305  | 15             | 75      |
| 990-EZ | 17,356  | 16             | 69      |

### Most common values

| Value                         | Filings | Share |
|-------------------------------|---------|-------|
| `PNC BANK NA`                 | 870     | 13.8% |
| `THE BANK OF NEW YORK MELLON` | 363     | 5.7%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x6 | EVANSVILLE YMCA CAMP CARSON XXX-XX-XXXX | OLD NATIONAL WEALTH MANAGEMENT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511149349201821_public.xml) |
| 2024 | 990 | x5 | VENETIE NATIVE STORE | KARLAS NORMAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523049349301317_public.xml) |
| 2013 | 990EZ | x4 | AMERICAN POSTAL WORKERS UNION | JAMIE LIM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201410789349200321_public.xml) |
| 2013 | 990 | x3 | OKLAHOMA HERITAGE ASSOCIATION INC | RICH SHANNON L | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201412729349300826_public.xml) |
| 2012 | 990EZ | x2 | CAR WASH OPERATORS OF NJ INC | SUZANNE STANSBURY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312679349200106_public.xml) |
| 2012 | 990 | x1 | IIAO INSURANCE FOUNDATION | BRUCE R JORDAN | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420229349300237_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_DTK_NAME_ORG_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
