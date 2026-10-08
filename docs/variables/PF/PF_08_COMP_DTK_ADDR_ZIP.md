# PF_08_COMP_DTK_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_DTK_ADDR_ZIP

Postal code

- Description: Foreign Address - Postal code

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
| ✓ pass | Values have the ZIP format | 99.8% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 43 filings use a placeholder such as 000000000 |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/USAddress/ZIPCode` | PF | 2009–2012 | 102,035 | 99.9% | 75.7% |
| x2 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/ForeignAddress/PostalCode` | PF | 2009–2012 | 445 | 0.431% | 36.0% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/ZIPCode` | PF | 2013–2013 | 45,856 | 99.9% | 77.3% |
| x4 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/PostalCode` | PF | 2013–2013 | 196 | 0.427% | 39.8% |
| x5 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/USAddress/ZIPCd` | PF | 2014–2024 | 1,001,980 | 99.8% | 73.2% |
| x6 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/ForeignAddress/ForeignPostalCd` | PF | 2014–2024 | 5,199 | 0.576% | 41.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.3k | 25k | 35k | 40k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 15 | 107 | 151 | 172 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 46k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 196 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 53k | 59k | 63k | 68k | 75k | 88k | 115k | 119k | 123k | 124k | 115k |
| x6 |  |  |  |  |  | 228 | 268 | 305 | 328 | 362 | 417 | 617 | 636 | 677 | 700 | 661 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings   | Share |
|-------------|-----------|-------|
| `99999`     | 1,048,857 | 88.2% |
| `999999999` | 138,047   | 11.6% |
| `A9A 9A9`   | 825       | 0.1%  |
| `9999`      | 616       | 0.1%  |
| `A9A9A9`    | 446       | 0.0%  |
| `999999`    | 274       | 0.0%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | NEW LINKS USA | KY16 9UA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202540919349100434_public.xml) |
| 2024 | 990PF | x5 | C A LUCAS TRUST FBO 1ST CONG | 532010634 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2013 | 990PF | x4 | SMITH S H A R E FOUNDATION INC | L3X1V9 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401349349101615_public.xml) |
| 2013 | 990PF | x3 | Tom & Helen Tonkin Foundation | 82602 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433439349100103_public.xml) |
| 2012 | 990PF | x2 | Planet In Peace Foundation | SE231KX | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333199349100913_public.xml) |
| 2012 | 990PF | x1 | HARLOW G FARMER MEMORIAL FUND 24295440 | 13421 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201341279349100244_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_DTK_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
