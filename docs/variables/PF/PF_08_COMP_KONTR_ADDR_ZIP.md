# PF_08_COMP_KONTR_ADDR_ZIP

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_KONTR_ADDR_ZIP

Postal code

- Description: Foreign Address - Postal code

- Table:

  [`PF-P08-T03-COMPENSATION-CONTRACTORS`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p08-t03-compensation-contractors)
  (many)

- Part: Part VIII - Information About Officers, Directors, Trustees,
  Foundation Managers, Highly Paid Employees, and Contractors (2023:
  Part VII)

- Location:

  `F990-PF-PART-08-LINE-03-COL-A`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

6 / 6

xpaths observed / mapped

40k

filings with a value

2009–2024

tax years observed

0 + 3 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values have the ZIP format | 98.7% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ▲ warn | No placeholder values | 5 filings use a placeholder such as 000000000 |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHghstPaidCntrct/USAddress/ZIPCode` | PF | 2009–2012 | 2,061 | 2.04% | 39.7% |
| x2 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHghstPaidCntrct/ForeignAddress/PostalCode` | PF | 2009–2012 | 45 | 0.0426% | 13.3% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/USAddress/ZIPCode` | PF | 2013–2013 | 1,020 | 2.22% | 40.5% |
| x4 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/ForeignAddress/PostalCode` | PF | 2013–2013 | 17 | 0.037% | 17.6% |
| x5 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/USAddress/ZIPCd` | PF | 2014–2024 | 36,057 | 4.5% | 43.9% |
| x6 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/ForeignAddress/ForeignPostalCd` | PF | 2014–2024 | 1,204 | 0.19% | 25.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 87 | 485 | 673 | 816 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 2 | 9 | 17 | 17 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.0k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 17 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.3k | 1.5k | 1.6k | 1.8k | 2.1k | 2.9k | 4.4k | 4.8k | 5.1k | 5.4k | 5.2k |
| x6 |  |  |  |  |  | 21 | 29 | 41 | 48 | 50 | 75 | 130 | 171 | 200 | 221 | 218 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 4 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 | 4 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 37,643  | 89.3% |
| `999999999` | 3,983   | 9.4%  |
| `A9A 9A9`   | 154     | 0.4%  |
| `999999`    | 99      | 0.2%  |
| `AA9A 9AA`  | 97      | 0.2%  |
| `AA9 9AA`   | 95      | 0.2%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | The Marilyn Brachman Hoffman Foundation | V4B5L2 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202541929349100809_public.xml) |
| 2024 | 990PF | x5 | H & M KELLOGG CHARITABLE TRUST | 57103 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202501349349102390_public.xml) |
| 2013 | 990PF | x4 | Vergel Foundation | 11590 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201411819349100016_public.xml) |
| 2013 | 990PF | x3 | SMITH S H A R E FOUNDATION INC | 490025599 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401349349101615_public.xml) |
| 2012 | 990PF | x2 | CY TWOMBLY FOUNDATION | 04024 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332219349100003_public.xml) |
| 2012 | 990PF | x1 | JAMES C MELVIN TRUST UW | 02199 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201310959349100206_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_KONTR_ADDR_ZIP, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
