# PF_15_G_FUTURE_RECIP_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_FUTURE_RECIP_NAME_PERS

Recipient Person Name

- Description: Recipient Person Name

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

2 / 3

xpaths observed / mapped

6.0k

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
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientPersonName: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientPersonNm: longest value is exactly 35 characters |

No flags.

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/GrantOrContriApprovedForFuture/RecipientPersonName` | PF | 2009–2012 | 582 | 0.611% | 66.0% |
| x2 | `IRS990PF/SupplementaryInformationGrp/GrantOrContriApprvForFutGrp/RecipientPersonNm` | PF | 2013–2024 | 5,401 | 0.432% | 56.5% |
| x3 | `IRS990PF/SupplementaryInfomation/GrantOrContriApprovedForFuture/RecipientPersonName` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 17 | 136 | 185 | 244 |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 260 | 302 | 336 | 329 | 338 | 336 | 413 | 680 | 684 | 624 | 603 | 496 |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | \<1 | \<1 | \<1 | 1 | 1 | 1 | \<1 | \<1 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 5,983   | 17             | 35      |

### Most common values

| Value          | Filings | Share |
|----------------|---------|-------|
| `SEE ATTACHED` | 55      | 13.2% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | FLIGHT ATTENDANT MEDICAL RESEARCH | SEE ATTACHED | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202600299349100025_public.xml) |
| 2012 | 990PF | x1 | Ruth Veasey Educational Foundation Inc | Weeks Kimberly Cingolani | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201332119349100103_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_FUTURE_RECIP_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
