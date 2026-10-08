# PF_08_COMP_DTK_ADDR_CITY_HCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_DTK_ADDR_CITY_HCE

City

- Description: Foreign Address - City

- Table:

  [`PF-P08-T02-COMPENSATION-HIGHEST`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p08-t02-compensation-highest)
  (many)

- Part: Part VIII - Information About Officers, Directors, Trustees,
  Foundation Managers, Highly Paid Employees, and Contractors (2023:
  Part VII)

- Location:

  `F990-PF-PART-08-LINE-02-COL-A`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

5 / 6

xpaths observed / mapped

24k

filings with a value

2009–2024

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHighestPaidEmpl/USAddress/City` | PF | 2009–2012 | 1,577 | 1.54% | 57.1% |
| x2 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHighestPaidEmpl/ForeignAddress/City` | PF | 2010–2012 | 5 | 0.00751% | 20.0% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/USAddress/City` | PF | 2013–2013 | 737 | 1.61% | 55.1% |
| x4 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/USAddress/CityNm` | PF | 2014–2024 | 21,800 | 2.44% | 61.6% |
| x5 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/ForeignAddress/CityNm` | PF | 2014–2024 | 204 | 0.0253% | 55.9% |
| x6 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/ForeignAddress/City` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 66 | 393 | 502 | 616 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 2 |  | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 737 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  | 899 | 1.0k | 1.1k | 1.3k | 1.5k | 1.8k | 2.7k | 2.8k | 2.9k | 3.0k | 2.8k |
| x5 |  |  |  |  |  | 5 | 6 | 9 | 9 | 12 | 12 | 28 | 31 | 31 | 32 | 29 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 3 | 2 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 24,323  | 9              | 22      |

### Most common values

| Value      | Filings | Share |
|------------|---------|-------|
| `NEW YORK` | 2,179   | 39.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x5 | FUNDACAO CALOUSTE GULBENKIAN | LISBOA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543219349101389_public.xml) |
| 2024 | 990PF | x4 | Robert W Woodruff Foundation Inc | Atlanta | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202531349349101428_public.xml) |
| 2013 | 990PF | x3 | CHANGING FACES INC | SANTA MARIA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403109349100535_public.xml) |
| 2012 | 990PF | x2 | KEMPER MUSEUM OPERATING FOUNDATION | KANSAS CITY | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201313199349100906_public.xml) |
| 2012 | 990PF | x1 | THE HARVEST FOUNDATION OF THE PIEDMONT | MARTINSVILLE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201323169349100517_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_DTK_ADDR_CITY_HCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
