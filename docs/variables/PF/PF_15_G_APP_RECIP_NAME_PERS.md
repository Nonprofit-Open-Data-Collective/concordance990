# PF_15_G_APP_RECIP_NAME_PERS

[Variable
pages](https://nonprofit-open-data-collective.github.io/concordance990/variables/index.md)
· IRS 990 Master Concordance

# PF_15_G_APP_RECIP_NAME_PERS

Name of Person to Receive Applications

- Description: Name of Person to Receive Applications

- Table:

  [`PF-P15-T03-SUPPLEMENTARY-INFO-GRANT-APP`](https://nonprofit-open-data-collective.github.io/concordance990/articles/data-dictionary-990pf.html#pf-p15-t03-supplementary-info-grant-app)
  (many)

- Part: Part XV - Supplementary Information (2023: Part XIV)

- Location:

  `F990-PF-PART-15-LINE-02A`

- Type: text

- Scope: PF – 990-PF

- Database: F990PF

- Forms: PF

2 / 3

xpaths observed / mapped

292k

filings with a value

2009–2024

tax years observed

0 + 2 reviewed

open flags

## Checks

### Value checks

| Result | Value check | Detail |
|----|----|----|
| ✓ pass | Values are text, not numbers | 0% of values are numeric |
| ⓘ info | No sign of truncation | IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientName: longest value is exactly 35 characters; IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientPersonNm: longest value is exactly 35 characters |

### Flags

[TABLE]

## Xpaths

|  | Xpath (under /Return/ReturnData or /Return/ReturnHeader) | Form | Years | Filings | % filers | Repeats in |
|----|----|----|----|----|----|----|
| x1 | `IRS990PF/SupplementaryInformation/AppicationSubmissionInfo/RecipientName` | PF | 2009–2012 | 29,466 | 28.7% | 2.0% |
| x2 | `IRS990PF/SupplementaryInformationGrp/ApplicationSubmissionInfoGrp/RecipientPersonNm` | PF | 2013–2024 | 262,158 | 22.9% | 1.7% |
| x3 | `IRS990PF/SupplementaryInfomation/AppicationSubmissionInfo/RecipientName` | PF | not observed | 0 |  |  |

**% filers**: percent of in-scope filers whose return has the xpath, in
its latest year. **Repeats in**: share of filings where the element
occurs more than once.

## Coverage by tax year

| Filings | ’09 | ’10 | ’11 | ’12 | ’13 | ’14 | ’15 | ’16 | ’17 | ’18 | ’19 | ’20 | ’21 | ’22 | ’23 | ’24 |
|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| x1 | 769 | 7.4k | 9.9k | 11k |  |  |  |  |  |  |  |  |  |  |  |  |
| x2 |  |  |  |  | 13k | 15k | 16k | 17k | 18k | 19k | 22k | 29k | 29k | 29k | 29k | 26k |
| Fill rate: % of all filings of the return type (largest xpath) |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 990-PF | 33 | 29 | 29 | 29 | 28 | 27 | 27 | 27 | 26 | 25 | 25 | 25 | 24 | 24 | 23 | 23 |

Filings with a value, by xpath (rows, numbered as in the xpath table)
and tax year. A change of row from one year to the next is usually the
IRS renaming the element (most were renamed in 2013). Hover a cell for
the exact count.

## Values

| Return | Filings | Average length | Longest |
|--------|---------|----------------|---------|
| 990-PF | 291,624 | 19             | 35      |

### Most common values

| Value                    | Filings | Share |
|--------------------------|---------|-------|
| (blank)                  | 1,137   | 22.8% |
| `JPMORGAN CHASE BANK NA` | 497     | 10.0% |

## Example filings

| Tax year | Return | Xpath | Organization | Value |  |
|----|----|----|----|----|----|
| 2024 | 990PF | x2 | CALVIN P HORN FOUNDATION | RUTHIE HORN ROBBINS THE CALVIN P HO | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/202543299349100609_public.xml) |
| 2012 | 990PF | x1 | W TOM ZURSCHMIEDE FOUNDATION | KATHRYN GROESBECK | [XML](https://gt990datalake-rawdata.s3.amazonaws.com/EfileData/XmlFiles/201322279349100902_public.xml) |

Evidence: e-filed returns TY2009–2024, built 2026-09-23 from the ef2
DuckDB builds. Checks and flags are recomputed for the current
concordance; reviewer decisions come from `validation_log.csv`. Variable
PF_15_G_APP_RECIP_NAME_PERS, report type *text*. Source:
[concordance990](https://github.com/Nonprofit-Open-Data-Collective/concordance990).
