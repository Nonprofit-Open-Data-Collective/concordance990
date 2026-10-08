# PF_08_COMP_DTK_ADDR_L1

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_DTK_ADDR_L1

AddressLine1

- Description: Foreign Address - AddressLine1

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
| ⓘ info | No sign of truncation | IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/ForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/AddressLine1Txt: longest value is exactly 35 characters; IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/AddressLine1: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/AddressLine1Txt: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/USAddress/AddressLine1` | PF | 2009–2012 | 102,035 | 99.9% | 75.7% |
| x2 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/ForeignAddress/AddressLine1` | PF | 2009–2012 | 871 | 0.826% | 36.4% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/AddressLine1` | PF | 2013–2013 | 45,856 | 99.9% | 77.3% |
| x4 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/AddressLine1` | PF | 2013–2013 | 377 | 0.822% | 37.1% |
| x5 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/AddressLine1Txt` | PF | 2014–2024 | 1,001,980 | 99.8% | 73.2% |
| x6 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/AddressLine1Txt` | PF | 2014–2024 | 8,364 | 0.827% | 42.2% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.3k | 25k | 35k | 40k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 20 | 223 | 298 | 330 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 46k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 377 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 53k | 59k | 63k | 68k | 75k | 88k | 115k | 119k | 123k | 124k | 115k |
| x6 |  |  |  |  |  | 427 | 498 | 525 | 567 | 622 | 704 | 976 | 1.0k | 1.0k | 1.0k | 950 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990-PF | 1,159,483 | 19             | 35      |

### Most common values

| Value                                 | Filings | Share |
|---------------------------------------|---------|-------|
| `Foundation Source 501 Silverside Rd` | 16,777  | 16.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | NEW LINKS USA | 17 STRATHKINNESS HIGH ROAD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202540919349100434_public.xml) |
| 2024 | 990PF | x5 | C A LUCAS TRUST FBO 1ST CONG | PO BOX 0634 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2013 | 990PF | x4 | SMITH S H A R E FOUNDATION INC | 575 LYMAN BOULEVARD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401349349101615_public.xml) |
| 2013 | 990PF | x3 | SCHWARZMANN FAMILY FOUNDATION | 1484 KIRBY RD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201402679349100200_public.xml) |
| 2012 | 990PF | x2 | Sdei Israel Foundation Inc | RCHOV BEN ZAKAI 12/10 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323249349100007_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | 150 NORTH AVALON ROAD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_DTK_ADDR_L1, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
