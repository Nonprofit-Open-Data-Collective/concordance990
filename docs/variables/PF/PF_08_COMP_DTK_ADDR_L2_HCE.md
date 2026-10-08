# PF_08_COMP_DTK_ADDR_L2_HCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_08_COMP_DTK_ADDR_L2_HCE

AddressLine2

- Description: Foreign Address - AddressLine2

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

4 / 6

xpaths observed / mapped

712

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 16% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHighestPaidEmpl/USAddress/AddressLine2` | PF | 2009–2012 | 36 | 0.0451% | 36.1% |
| x2 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/USAddress/AddressLine2` | PF | 2013–2013 | 21 | 0.0458% | 52.4% |
| x3 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/USAddress/AddressLine2Txt` | PF | 2014–2024 | 630 | 0.0775% | 55.2% |
| x4 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/ForeignAddress/AddressLine2Txt` | PF | 2016–2024 | 25 | 0.00348% | 80.0% |
| x5 | `IRS990PF/OfcrDirTrusteesKeyEmployeeInfo/CompensationOfHighestPaidEmpl/ForeignAddress/AddressLine2` | PF | not observed | 0 |  |  |
| x6 | `IRS990PF/OfficerDirTrstKeyEmplInfoGrp/CompensationHighestPaidEmplGrp/ForeignAddress/AddressLine2` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 1 | 7 | 10 | 18 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 21 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 22 | 28 | 30 | 35 | 40 | 54 | 71 | 80 | 92 | 89 | 89 |
| x4 |  |  |  |  |  |  |  | 1 | 1 | 2 | 3 | 3 | 3 | 4 | 4 | 4 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 712     | 9              | 31      |

### Most common values

| Value               | Filings | Share |
|---------------------|---------|-------|
| `200 FALLOW RUN SW` | 10      | 4.5%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x4 | GATES FOUNDATION | RD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202523189349103667_public.xml) |
| 2024 | 990PF | x3 | MILL TOWN PRIVATE FOUNDATION | ROW WEST SUIT | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202533199349101013_public.xml) |
| 2013 | 990PF | x2 | SCATTERGOOD BEHAVIORAL HEALTH FOUND | 4641 ROOSEVELT BLVD | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201433189349101048_public.xml) |
| 2012 | 990PF | x1 | FLOYD A & KATHLEEN C | 200 FALLOW RUN SW | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332039349100658_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_08_COMP_DTK_ADDR_L2_HCE, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
