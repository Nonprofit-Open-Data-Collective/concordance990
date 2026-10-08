# F9_07_COMP_DTK_ADDR_CITY

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_DTK_ADDR_CITY

Officer, director, trustee, or key employee city

- Description: Address US - City (see F9-FORM-VERSION-2011-PART-04)

- Table:

  [`F9-P07-T01-COMPENSATION`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p07-t01-compensation)
  (many)

- Part: Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent Contractors

- Location:

  `F990-EZ-PART-04-COL-A`

- Type: text

- Scope: EZ – 990-EZ only

- Database: F990

- Forms: EZ

2 / 2

xpaths observed / mapped

162k

filings with a value

2009–2011

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
| x1 | `IRS990EZ/OfficerDirectorTrusteeKeyEmpl/AddressUS/City` | EZ | 2009–2011 | 160,785 | 100% | 95.2% |
| x2 | `IRS990EZ/OfficerDirectorTrusteeKeyEmpl/AddressForeign/City` | EZ | 2009–2011 | 1,403 | 0.893% | 40.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 15k | 63k | 82k |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 87 | 583 | 733 |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | 100 | 100 | 100 |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-EZ | 162,188 | 9              | 32      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `NEW YORK`   | 2,400   | 20.7% |
| `WASHINGTON` | 1,167   | 10.1% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2011 | 990EZ | x1 | COMMUNICATIONS WORKERS OF AMERICA- LOCA… | VALHALA | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322129349200312_public.xml) |
| 2011 | 990EZ | x2 | KAPPA ALPHA ORDER BETA GAMMA CHAPTER | CHARLESTON | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201223139349200202_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_DTK_ADDR_CITY, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
