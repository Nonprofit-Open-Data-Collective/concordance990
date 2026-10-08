# F9_07_COMP_DTK_ADDR_ZIP_HCE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_07_COMP_DTK_ADDR_ZIP_HCE

Highest compensated employee zip

- Description: Address Foreign - Postal code (see
  F9-FORM-VERSION-2011-PART-06)

- Table:

  [`F9-P07-T01-COMPENSATION-HCE-EZ`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p07-t01-compensation-hce-ez)
  (many)

- Part: Part VII - Compensation of Officers, Directors, Trustees, Key
  Employees, Highest Compensated Employees, and Independent Contractors

- Location:

  `F990-EZ-PART-99-LINE-50-COL-A`

- Type: text

- Scope: PZ – 990 and 990-EZ

- Database: F990

- Forms: EZ

2 / 2

xpaths observed / mapped

166

filings with a value

2009–2011

tax years observed

0 + 1 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ▲ warn | Values have the ZIP format | 97.1% of values match ^(99999\|999999999\|99999-9999)\$ |
| ✓ pass | Stored as text | data type is text |
| ✓ pass | No placeholder values | no all-zero / all-nine placeholders among the most common values |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/CompensationOfHighestPaidEmpl/AddressUS/ZIPCode` | EZ | 2009–2011 | 163 | 0.0926% | 37.4% |
| x2 | `IRS990EZ/CompensationOfHighestPaidEmpl/AddressForeign/PostalCode` | EZ | 2010–2011 | 3 | 0.00244% | 66.7% |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 29 | 58 | 76 |  |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  | 1 | 2 |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | \<1 | \<1 | \<1 |  |  |  |  |  |  |  |  |  |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Format      | Filings | Share |
|-------------|---------|-------|
| `99999`     | 159     | 93.0% |
| `999999999` | 7       | 4.1%  |
| `9`         | 2       | 1.2%  |
| `99`        | 2       | 1.2%  |
| `AA999A`    | 1       | 0.6%  |

Format of the values: `9` a digit, `A` a letter.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2011 | 990EZ | x2 | GLOBAL FREIGHT GROUP | WV455N | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201241289349200814_public.xml) |
| 2011 | 990EZ | x1 | MID-COLUMBIA SENIOR CENTER INC | 97058 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201203149349200440_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_07_COMP_DTK_ADDR_ZIP_HCE, report type *identifier*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
