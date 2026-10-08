# PF_08_COMP_DTK_ADDR_STATE_HCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_DTK_ADDR_STATE_HCE

Province or state

- Description: Province or state

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
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHighestPaidEmpl/USAddress/State` | PF | 2009–2012 | 1,577 | 1.54% | 57.1% |
| x2 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHighestPaidEmpl/ForeignAddress/ProvinceOrState` | PF | 2010–2012 | 3 | 0.00501% | 33.3% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/USAddress/State` | PF | 2013–2013 | 737 | 1.61% | 55.1% |
| x4 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/USAddress/StateAbbreviationCd` | PF | 2014–2024 | 21,800 | 2.44% | 61.6% |
| x5 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/ForeignAddress/ProvinceOrStateNm` | PF | 2014–2024 | 80 | 0.00958% | 58.8% |
| x6 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/ForeignAddress/ProvinceOrState` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 66 | 393 | 502 | 616 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 1 |  | 2 |  |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  | 737 |  |  |  |  |  |  |  |  |  |  |  |
| x4 |  |  |  |  |  | 899 | 1.0k | 1.1k | 1.3k | 1.5k | 1.8k | 2.7k | 2.8k | 2.9k | 3.0k | 2.8k |
| x5 |  |  |  |  |  | 2 | 2 | 3 | 3 | 5 | 3 | 14 | 11 | 13 | 13 | 11 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 3 | 2 | 1 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 24,197  | 2              | 16      |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `CA`  | 3,888   | 24.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x5 | WOVEN FOUNDATION | KIMIHURURA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202513179349102876_public.xml) |
| 2024 | 990PF | x4 | SECURE WORLD FOUNDATION | CO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533179349102288_public.xml) |
| 2013 | 990PF | x3 | CHANGING FACES INC | CA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201403109349100535_public.xml) |
| 2012 | 990PF | x2 | Sugar Palm Foundation Inc | KP | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333169349101033_public.xml) |
| 2012 | 990PF | x1 | JANET H & C HARRY KNOWLES FOUNDATION INC | NJ | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201420439349100702_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_DTK_ADDR_STATE_HCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
