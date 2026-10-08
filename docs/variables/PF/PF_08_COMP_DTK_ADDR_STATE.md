# PF_08_COMP_DTK_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_DTK_ADDR_STATE

Province or state

- Description: Province or state

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

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 512 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                       |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/USAddress/State` | PF | 2009–2012 | 102,035 | 99.9% | 75.7% |
| x2 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/ForeignAddress/ProvinceOrState` | PF | 2009–2012 | 414 | 0.406% | 28.7% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/State` | PF | 2013–2013 | 45,856 | 99.9% | 77.3% |
| x4 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/ProvinceOrState` | PF | 2013–2013 | 184 | 0.401% | 28.8% |
| x5 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/StateAbbreviationCd` | PF | 2014–2024 | 1,001,980 | 99.8% | 73.2% |
| x6 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/ProvinceOrStateNm` | PF | 2014–2024 | 4,265 | 0.482% | 36.6% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.3k | 25k | 35k | 40k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 10 | 100 | 142 | 162 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 46k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 184 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 53k | 59k | 63k | 68k | 75k | 88k | 115k | 119k | 123k | 124k | 115k |
| x6 |  |  |  |  |  | 210 | 246 | 257 | 263 | 284 | 325 | 465 | 513 | 563 | 586 | 553 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `NY`  | 151,497 | 18.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | DR TAI R SHIN AND MRS YOU H SHIN | SEOUL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202522049349100812_public.xml) |
| 2024 | 990PF | x5 | THELMA WEBB SCHOLARSHIP | PA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600439349100305_public.xml) |
| 2013 | 990PF | x4 | SMITH S H A R E FOUNDATION INC | ONTARIO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401349349101615_public.xml) |
| 2013 | 990PF | x3 | SCHWARZMANN FAMILY FOUNDATION | VA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402679349100200_public.xml) |
| 2012 | 990PF | x2 | LAUCKS FOUNDATION CO JACOBSON JARVIS & … | BRITISH COLUMBIA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201330639349100403_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | NC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_DTK_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
