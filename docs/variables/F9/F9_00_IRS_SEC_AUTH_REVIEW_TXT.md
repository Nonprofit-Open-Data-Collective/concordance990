# F9_00_IRS_SEC_AUTH_REVIEW_TXT

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# F9_00_IRS_SEC_AUTH_REVIEW_TXT

Authentication review text

- Description: Verification: authentication review entry (usually a
  date-time)

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

61

filings with a value

2020–2020

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ✓ pass | No sign of truncation | longest values do not sit at a common field limit |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `FilingSecurityInformation/AuthenticationReviewTxt` | PC | 2020–2020 | 61 | 0.0101% |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 |  |  |  |  |  |  |  |  |  |  |  | 61 |  |  |  |  |
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
| 990    | 10      | 42             | 47      |
| 990-EZ | 16      | 33             | 47      |
| 990-PF | 35      | 37             | 47      |

### Most common values

| Value                       | Filings | Share |
|-----------------------------|---------|-------|
| `2021-01-01T00:00:00-08:00` | 15      | 37.5% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2020 | 990 | x1 | STC HEALTHCARE PARTNERS RISK RETENTION | 55155#2021-02-10T15:52:18Z#2021-09-01T16:47:09Z | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202112449349301541_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
F9_00_IRS_SEC_AUTH_REVIEW_TXT, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
