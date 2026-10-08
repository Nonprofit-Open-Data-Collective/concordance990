# PF_08_COMP_DTK_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_DTK_NAME_PERS

Person Name

- Description: Ofcr Dir Trustees Or Key Employee - Person Name

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

2 / 2

xpaths observed / mapped

1.1M

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
| ⓘ info | No sign of truncation | IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/PersonName: longest value is exactly 35 characters; IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/PersonNm: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/OfcrDirTrusteesOrKeyEmployee/PersonName` | PF | 2009–2012 | 98,543 | 96.7% | 78.1% |
| x2 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/OfficerDirTrstKeyEmplGrp/PersonNm` | PF | 2013–2024 | 1,010,143 | 95.7% | 75.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2.2k | 24k | 33k | 39k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 45k | 52k | 57k | 61k | 66k | 70k | 85k | 111k | 115k | 119k | 120k | 110k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 95 | 96 | 97 | 97 | 97 | 97 | 97 | 97 | 96 | 93 | 96 | 97 | 97 | 97 | 96 | 96 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings   | Average length | Longest |
|--------|-----------|----------------|---------|
| 990-PF | 1,108,686 | 15             | 35      |

### Most common values

| Value                      | Filings | Share |
|----------------------------|---------|-------|
| `BANK OF AMERICA`          | 18,777  | 19.7% |
| `WELLS FARGO BANK N A`     | 15,934  | 16.7% |
| `PNC BANK NA`              | 14,525  | 15.2% |
| `BANK OF AMERICA N A`      | 13,470  | 14.1% |
| `PNC BANK N A`             | 7,169   | 7.5%  |
| `BNY MELLON N A`           | 5,366   | 5.6%  |
| `US BANK N A`              | 3,447   | 3.6%  |
| `HUNTINGTON NATIONAL BANK` | 2,763   | 2.9%  |
| `TRUIST BANK`              | 2,539   | 2.7%  |
| `JPMORGAN CHASE BANK NA`   | 1,557   | 1.6%  |
| `US BANK NA`               | 1,483   | 1.6%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | C A LUCAS TRUST FBO 1ST CONG | US BANK NA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202521289349100732_public.xml) |
| 2012 | 990PF | x1 | THE BLANC FUND | CHARLES B CAMPBELL III | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201321359349100317_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_DTK_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
