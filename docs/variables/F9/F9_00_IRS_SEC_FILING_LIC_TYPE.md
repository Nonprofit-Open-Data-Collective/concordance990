# F9_00_IRS_SEC_FILING_LIC_TYPE

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_IRS_SEC_FILING_LIC_TYPE

Filing license type code

- Description: Verification

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

1.3M

filings with a value

2016–2020

tax years observed

3

open flags

## Checks

### Value checks

| Result | Value check            | Detail                                     |
|--------|------------------------|--------------------------------------------|
| ✓ pass | Small code list        | up to 3 distinct values per xpath and year |
| ✓ pass | Codes share one format | 100% have the shape A                      |
| ✓ pass | Consistent letter case | 0.0% of values are lower case              |

### Flags

| Flag | Severity | Xpath | Detail | Review |
|----|----|----|----|----|
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990EZ fill rate changes up to 1631.7x year-on-year (in 2020) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990 fill rate changes up to 4883.1x year-on-year (in 2020) | open |
| `INCIDENCE_BREAK` | ▲ warn | (variable) | 990PF fill rate changes up to 354.8x year-on-year (in 2020) | open |

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `FilingSecurityInformation/FilingLicenseTypeCd` | PC | 2016–2020 | 1,318,488 | 0.0433% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  |  |  | 261k | 377k | 390k | 290k | 262 |  |  |  |  |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990 |  |  |  |  |  |  |  | 61 | 83 | 82 | 55 | \<1 |  |  |  |  |
| 990-EZ |  |  |  |  |  |  |  | 54 | 74 | 73 | 59 | \<1 |  |  |  |  |
| 990-PF |  |  |  |  |  |  |  | 68 | 85 | 78 | 51 | \<1 |  |  |  |  |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Value | Filings   | Share |
|-------|-----------|-------|
| `P`   | 1,315,828 | 99.8% |
| `O`   | 2,621     | 0.2%  |
| `S`   | 39        | 0.0%  |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2020 | 990 | x1 | SUNSET HILLS APARTMENTS | P | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202111479349300426_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_IRS_SEC_FILING_LIC_TYPE, report type *code*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
