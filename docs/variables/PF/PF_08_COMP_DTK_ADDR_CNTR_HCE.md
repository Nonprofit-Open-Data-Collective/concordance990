# PF_08_COMP_DTK_ADDR_CNTR_HCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_DTK_ADDR_CNTR_HCE

Country

- Description: Foreign Address - Country

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

2 / 3

xpaths observed / mapped

215

filings with a value

2010–2024

tax years observed

1 + 1 reviewed

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
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHighestPaidEmpl/ForeignAddress/Country` | PF | 2010–2012 | 5 | 0.00751% | 20.0% |
| x2 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/ForeignAddress/CountryCd` | PF | 2014–2024 | 210 | 0.0253% | 58.1% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/ForeignAddress/Country` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  | 2 |  | 3 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  |  | 5 | 6 | 9 | 9 | 12 | 12 | 29 | 32 | 33 | 34 | 29 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF |  | \<1 |  | \<1 |  | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 215     | 2              | 2       |

### Most common values

| Value | Filings | Share |
|-------|---------|-------|
| `UK`  | 47      | 21.4% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | THE TUDOR TRUST | UK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202620269349100002_public.xml) |
| 2012 | 990PF | x1 | Sugar Palm Foundation Inc | CB | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201333169349101033_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_DTK_ADDR_CNTR_HCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
