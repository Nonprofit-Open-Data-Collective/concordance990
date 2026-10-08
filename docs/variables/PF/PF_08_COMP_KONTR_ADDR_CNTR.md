# PF_08_COMP_KONTR_ADDR_CNTR

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_KONTR_ADDR_CNTR

Country

- Description: Foreign Address - Country

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

3 / 3

xpaths observed / mapped

1.8k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                      |
|--------|------------------------|---------------------------------------------|
| ✓ pass | Small code list        | up to 57 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape AA                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case               |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHghstPaidCntrct/ForeignAddress/Country` | PF | 2009–2012 | 81 | 0.0801% | 18.5% |
| x2 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/ForeignAddress/Country` | PF | 2013–2013 | 42 | 0.0915% | 11.9% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationOfHghstPdCntrctGrp/ForeignAddress/CountryCd` | PF | 2014–2024 | 1,663 | 0.232% | 30.9% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 3 | 15 | 31 | 32 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 42 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 38 | 54 | 64 | 69 | 73 | 113 | 191 | 236 | 273 | 286 | 266 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings | Share |
|-------|---------|-------|
| `UK`  | 537     | 34.8% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | THE PACKARD HUMANITIES INSTITUTE | IT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202512769349100301_public.xml) |
| 2013 | 990PF | x2 | BUTLER CONSERVATION FUND INC | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403219349102285_public.xml) |
| 2012 | 990PF | x1 | COMMISSION FOR ART RECOVERY INC | OC | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323189349100617_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_KONTR_ADDR_CNTR, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
