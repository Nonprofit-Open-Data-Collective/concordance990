# F9_00_IRS_SEC_VENDOR_CTRL_NUM

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_IRS_SEC_VENDOR_CTRL_NUM

Vendor control number

- Description: Verification: control number assigned by the e-file
  software vendor

- Table:

  [`F9-P00-T00-HEADER`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p00-t00-header)
  (one)

- Part: Heading (items A-O)

- Location:

  `F990-PC-PART-00-X`

- Type: text

- Scope: HD – header (all returns)

- Database: F990, F990PF

- Forms: PC

1 / 1

xpaths observed / mapped

123

filings with a value

2020–2020

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ▲ warn | Values are text, not numbers | 54% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `FilingSecurityInformation/VendorControlNum` | PC | 2020–2020 | 123 | 0.0203% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  |  |  |  |  |  |  | 123 |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  |  |  |  |  |  |  |  | \<1 |  |  |  |  |
| 990-EZ |  |  |  |  |  |  |  |  |  |  |  | \<1 |  |  |  |  |
| 990-PF |  |  |  |  |  |  |  |  |  |  |  | \<1 |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990    | 20      | 16             | 16      |
| 990-EZ | 38      | 16             | 16      |
| 990-PF | 65      | 16             | 16      |

### Most common values

| Value              | Filings | Share |
|--------------------|---------|-------|
| `9N2020BCBBBH0000` | 3       | 13.6% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2020 | 990EZ | x1 | WOMEN UNITED RISE CORPORATION | 7136335000000000 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202141019349200069_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_IRS_SEC_VENDOR_CTRL_NUM, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
