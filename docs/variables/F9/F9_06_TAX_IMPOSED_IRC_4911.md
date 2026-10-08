# F9_06_TAX_IMPOSED_IRC_4911

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_06_TAX_IMPOSED_IRC_4911

Tax imposed under section 4911

- Description: 501(c)(3) Organizations: Amount of tax imposed on the
  organization furing the year under section 4911

- Table:

  [`F9-P06-T00-GOVERNANCE-EZ`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990.html#f9-p06-t00-governance-ez)
  (one)

- Part: Part VI - Governance, Management, and Disclosure

- Location:

  `F990-EZ-PART-05-LINE-40A`

- Type: numeric

- Scope: EZ – 990-EZ only

- Database: F990

- Forms: EZ

2 / 2

xpaths observed / mapped

723k

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values parse as numbers | 100.0% of values are numeric |
| ⓘ info | Sign convention | 0.0% of values are negative (fine for net amounts) |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990EZ/TaxImposedUnderIRC4911` | EZ | 2009–2012 | 68,449 | 25.1% |  |
| x2 | `IRS990EZ/TaxImposedUnderIRC4911Amt` | EZ | 2013–2024 | 654,962 | 41.1% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 5.3k | 18k | 22k | 24k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 25k | 27k | 29k | 30k | 32k | 34k | 67k | 74k | 88k | 88k | 88k | 73k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-EZ | 34 | 28 | 27 | 25 | 24 | 23 | 23 | 23 | 23 | 23 | 44 | 44 | 43 | 43 | 42 | 41 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | % numeric | % zero | % negative | P25 | Median | P75 | P99 |
|--------|---------|-----------|--------|------------|-----|--------|-----|-----|
| 990-EZ | 723,411 | 100.0%    | 100.0% | 0.0%       | 0   | 0      | 0   | 0   |

Percentiles are the median over tax years of each year's percentile.

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990EZ | x2 | KYLE GOLDBERG MEMORIAL FOUNDATION | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202511219349201801_public.xml) |
| 2012 | 990EZ | x1 | THE MASONIC LIBRARY AND MUSEUM OF INDIA… | 0 | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332279349200753_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_06_TAX_IMPOSED_IRC_4911, report type *amount*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
