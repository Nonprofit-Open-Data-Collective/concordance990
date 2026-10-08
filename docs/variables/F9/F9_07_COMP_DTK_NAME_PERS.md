# F9_07_COMP_DTK_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_DTK_NAME_PERS

Officer, director, trustee, or key employee person name

- Description: Name - Person (F990-PC-PART-07-SECTION-A:
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

4 / 8

xpaths observed / mapped

5.9M

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
| ⓘ info | No sign of truncation | IRS990EZ/OfficerDirectorTrusteeEmplGrp/PersonNm: longest value is exactly 35 characters; IRS990EZ/OfficerDirectorTrusteeKeyEmpl/PersonName: longest value is exactly 35 characters; IRS990/Form990PartVIISectionA/NamePerson: longest value is exactly 35 characters; IRS990/Form990PartVIISectionAGrp/PersonNm: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990/Form990PartVIISectionA/NamePerson` | PC | 2009–2012 | 493,715 | 99.7% | 97.9% |
| x2 | `IRS990EZ/OfficerDirectorTrusteeKeyEmpl/PersonName` | EZ | 2009–2012 | 253,265 | 99.6% | 95.2% |
| x3 | `IRS990/Form990PartVIISectionAGrp/PersonNm` | PC | 2013–2024 | 3,313,402 | 99.4% | 97.5% |
| x4 | `IRS990EZ/OfficerDirectorTrusteeEmplGrp/PersonNm` | EZ | 2013–2024 | 1,874,929 | 99.7% | 92.6% |
| x5 | `IRS990/Form990PartVIISectionA/Name/NamePerson` | PC | not observed | 0 |  |  |
| x6 | `IRS990EZ/Form990PartVIISectionA/NamePerson` | EZ | not observed | 0 |  |  |
| x7 | `IRS990EZ/Form990PartVIISectionAGrp/PersonNm` | EZ | not observed | 0 |  |  |
| x8 | `IRS990EZ/OfficerDirectorTrusteeKeyEmpl/Name` | EZ | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 33k | 122k | 159k | 179k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 15k | 63k | 82k | 93k |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 198k | 216k | 231k | 241k | 259k | 268k | 280k | 316k | 332k | 344k | 350k | 276k |
| x4 |  |  |  |  | 104k | 116k | 125k | 130k | 139k | 149k | 152k | 169k | 202k | 205k | 206k | 178k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 | 100 | 100 | 100 | 100 | 100 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 99 | 99 |
| 990-EZ | 99 | 99 | 99 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 | 100 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990    | 3,807,091 | 14             | 35      |
| 990-EZ | 2,128,177 | 13             | 35      |

### Most common values

| Value                    | Filings | Share |
|--------------------------|---------|-------|
| `DAVID SMITH`            | 3,591   | 9.9%  |
| `DAVID JOHNSON`          | 2,566   | 7.1%  |
| `MICHAEL SMITH`          | 2,483   | 6.9%  |
| `MICHAEL SULLIVAN`       | 1,988   | 5.5%  |
| `VACANT`                 | 1,865   | 5.2%  |
| `DAVID BROWN`            | 1,595   | 4.4%  |
| `PATRICK SHERIDAN`       | 1,252   | 3.5%  |
| `MARK JOHNSON`           | 1,244   | 3.4%  |
| `JOHN MILLER`            | 934     | 2.6%  |
| `JOHN MORLAND`           | 849     | 2.3%  |
| `DAVID MILLER`           | 792     | 2.2%  |
| `ROBERT SMITH`           | 771     | 2.1%  |
| `JOSEPH R KASBERG`       | 757     | 2.1%  |
| `CAROL MOORE`            | 749     | 2.1%  |
| `JOSEPH A BUDZYNSKI`     | 690     | 1.9%  |
| `CARLOS MAESE`           | 676     | 1.9%  |
| `JPMORGAN CHASE BANK NA` | 595     | 1.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x4 | SAINT CLAIR HOUSE INC | SARAH SMITH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521329349201597_public.xml) |
| 2024 | 990 | x3 | OWL CREEK COUNTRY CLUB | JAY ALBIGHT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349315726_public.xml) |
| 2012 | 990EZ | x2 | ART FORMS & THEATRE CONCEPTS INC | Victor Owens | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201300869349200115_public.xml) |
| 2012 | 990 | x1 | SOUTHERN ARIZONA INTERNATIONAL LIVESTOCK | ED KONRATH | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313369349300146_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_DTK_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
