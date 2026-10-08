# PF_08_COMP_DTK_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_DTK_ADDR_CITY

City

- Description: Foreign Address - City

- Table:

  [`PF-P08-T01-COMPENSATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p08-t01-compensation)
  (many)

- Part: Part VIII - Information About Officers, Directors, Trustees,
  Foundation Managers, Highly Paid Employees, and Contractors (2023:
  Part VII)

- Location:

  `F990-PF-PART-08-LINE-01-COL-A`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

6 / 6

xpaths observed / mapped

1.2M

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
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/USAddress/City` | PF | 2009–2012 | 102,035 | 99.9% | 75.7% |
| x2 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/ForeignAddress/City` | PF | 2009–2012 | 696 | 0.659% | 37.5% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/City` | PF | 2013–2013 | 45,856 | 99.9% | 77.3% |
| x4 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/City` | PF | 2013–2013 | 328 | 0.715% | 37.8% |
| x5 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/CityNm` | PF | 2014–2024 | 1,001,980 | 99.8% | 73.2% |
| x6 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/CityNm` | PF | 2014–2024 | 7,715 | 0.779% | 42.0% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.3k | 25k | 35k | 40k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 18 | 177 | 238 | 263 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 46k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 328 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 53k | 59k | 63k | 68k | 75k | 88k | 115k | 119k | 123k | 124k | 115k |
| x6 |  |  |  |  |  | 381 | 450 | 477 | 517 | 571 | 643 | 901 | 941 | 964 | 975 | 895 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990-PF | 1,158,610 | 9              | 29      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 58,386  | 23.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | CYLAND FOUNDATION INC | VILNIUS | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202522909349100107_public.xml) |
| 2024 | 990PF | x5 | C A LUCAS TRUST FBO 1ST CONG | MILWAUKEE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2013 | 990PF | x4 | THE SCHECTER FOUNDATION INC | BRIGHTON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431119349100808_public.xml) |
| 2013 | 990PF | x3 | ALEXANDRA R MCCORMICK REVOCABLE TRUST | PITTSBURGH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402619349100500_public.xml) |
| 2012 | 990PF | x2 | The Charles H Stout Foundation | London | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201302739349100105_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | WINSTONSALEM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_DTK_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
