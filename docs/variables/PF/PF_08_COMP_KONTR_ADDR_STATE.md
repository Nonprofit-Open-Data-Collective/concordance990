# PF_08_COMP_KONTR_ADDR_STATE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_KONTR_ADDR_STATE

Province or state

- Description: Province or state

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

| Result | Value check            | Detail                                       |
|--------|------------------------|----------------------------------------------|
| ▲ warn | Small code list        | up to 107 distinct values per xpath and year |
| ✓ pass | Codes share one format | 99% have the shape AA                        |
| ✓ pass | Consistent letter case | 0.0% of values are lower case                |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHghstPaidCntrct/USAddress/State` | PF | 2009–2012 | 2,061 | 2.04% | 39.7% |
| x2 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHghstPaidCntrct/ForeignAddress/ProvinceOrState` | PF | 2009–2012 | 39 | 0.0476% | 17.9% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/USAddress/State` | PF | 2013–2013 | 1,020 | 2.22% | 40.5% |
| x4 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/ForeignAddress/ProvinceOrState` | PF | 2013–2013 | 24 | 0.0523% | 8.3% |
| x5 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/USAddress/StateAbbreviationCd` | PF | 2014–2024 | 36,057 | 4.5% | 43.9% |
| x6 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/ForeignAddress/ProvinceOrStateNm` | PF | 2014–2024 | 790 | 0.112% | 20.3% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 87 | 485 | 673 | 816 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 1 | 6 | 13 | 19 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 1.0k |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  | 24 |  |  |  |  |  |  |  |  |  |  |  |
| x5 |  |  |  |  |  | 1.3k | 1.5k | 1.6k | 1.8k | 2.1k | 2.9k | 4.4k | 4.8k | 5.1k | 5.4k | 5.2k |
| x6 |  |  |  |  |  | 29 | 25 | 28 | 32 | 27 | 51 | 85 | 110 | 133 | 141 | 129 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 4 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 3 | 3 | 4 | 4 | 4 | 4 | 4 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `NY`  | 9,349   | 23.7% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x6 | ELI LILLY AND COMPANY FOUNDATION | AB | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513219349102011_public.xml) |
| 2024 | 990PF | x5 | Robert W Woodruff Foundation Inc | MA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101428_public.xml) |
| 2013 | 990PF | x4 | NEWTON & ROCHELLE BECKER CHARITABLE TRU… | JERUSALEM | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201423219349101497_public.xml) |
| 2013 | 990PF | x3 | SMITH S H A R E FOUNDATION INC | MI | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201401349349101615_public.xml) |
| 2012 | 990PF | x2 | COMMISSION FOR ART RECOVERY INC | Mayfair | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323189349100617_public.xml) |
| 2012 | 990PF | x1 | THE FLETCHER JONES FOUNDATION | MA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201312259349100131_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_KONTR_ADDR_STATE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
