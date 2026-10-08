# F9_07_COMP_DTK_ADDR_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_DTK_ADDR_L2

Officer, director, trustee, or key employee street address line 2

- Description: Address US - AddressLine2 (see
  F9-FORM-VERSION-2011-PART-04)

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

6.6k

filings with a value

2009–2011

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 5% of values are numeric |
| ⓘ info | No sign of truncation | IRS990EZ/OfficerDirectorTrusteeKeyEmpl/AddressUS/AddressLine2: longest value is exactly 35 characters; IRS990EZ/OfficerDirectorTrusteeKeyEmpl/AddressForeign/AddressLine2: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/OfficerDirectorTrusteeKeyEmpl/AddressUS/AddressLine2` | EZ | 2009–2011 | 6,468 | 3.89% | 77.6% |
| x2 | `IRS990EZ/OfficerDirectorTrusteeKeyEmpl/AddressForeign/AddressLine2` | EZ | 2009–2011 | 161 | 0.0951% | 34.8% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 624 | 2.7k | 3.2k |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 | 10 | 73 | 78 |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | 4 | 4 | 4 |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-EZ | 6,629   | 14             | 35      |

### Most common values

| Value       | Filings | Share |
|-------------|---------|-------|
| `SUITE 100` | 43      | 11.9% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2011 | 990EZ | x1 | ACROS BOOSTER CLUB INC | STE B | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201201579349200115_public.xml) |
| 2011 | 990EZ | x2 | MAYA-MESOAMERICA MISSION INC | GENERAL DELIVERY BELFAST | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201230779349200008_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_DTK_ADDR_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
