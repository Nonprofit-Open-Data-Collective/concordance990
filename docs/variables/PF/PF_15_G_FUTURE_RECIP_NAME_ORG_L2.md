# PF_15_G_FUTURE_RECIP_NAME_ORG_L2

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_FUTURE_RECIP_NAME_ORG_L2

Recipient of grant approved for future payment - business name line 2

- Description: Recipient Business Name - BusinessNameLine2

- Table:

  [`PF-P15-T02-SUPPLEMENTARY-INFO-GRANT-FUTURE`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t02-supplementary-info-grant-future)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-03B-COL-01`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

3 / 4

xpaths observed / mapped

343

filings with a value

2009–2024

tax years observed

0

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientBusinessName/BusinessNameLine2Txt: longest value is exactly 50 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientBusinessName/BusinessNameLine2` | PF | 2009–2012 | 61 | 0.0476% | 60.7% |
| x2 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientBusinessName/BusinessNameLine2` | PF | 2013–2013 | 19 | 0.0414% | 47.4% |
| x3 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientBusinessName/BusinessNameLine2Txt` | PF | 2014–2024 | 263 | 0.0244% | 43.7% |
| x4 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientBusinessName/BusinessNameLine2` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 2 | 18 | 22 | 19 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 19 |  |  |  |  |  |  |  |  |  |  |  |
| x3 |  |  |  |  |  | 23 | 23 | 20 | 15 | 17 | 20 | 27 | 28 | 31 | 31 | 28 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 343     | 20             | 50      |

### Most common values

| Value        | Filings | Share |
|--------------|---------|-------|
| `FOUNDATION` | 26      | 14.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x3 | JOHN OSTER FAMILY FOUNDATION INC | ALL IN MILWAUKEE | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202620139349101022_public.xml) |
| 2013 | 990PF | x2 | GEORGE M & PAMELA S HUMPHREY FUND | HIGH SCHOOL | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201431549349100303_public.xml) |
| 2012 | 990PF | x1 | LUIGI DAMIANO FOUNDATION | 501(C) (3) | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201342559349100604_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_FUTURE_RECIP_NAME_ORG_L2, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
